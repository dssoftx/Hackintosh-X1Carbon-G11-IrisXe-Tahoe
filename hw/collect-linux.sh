#!/usr/bin/env bash
# X1 Carbon Gen 11 — hardware data collector (run from an Ubuntu live USB).
#
#   sudo bash collect-linux.sh
#
# Writes everything into ./linux next to this script. Boot the live USB with the INTERNAL PANEL ON and,
# before running, briefly plug a USB device into each physical port if you want lsusb to show them.
# Best run on a recent Ubuntu (i915 + intel-gpu-tools know Raptor Lake-P). Safe + read-only: it only reads
# registers and sysfs, it does not write anything to the hardware.
set -u
HERE="$(cd "$(dirname "$0")" && pwd)"
OUT="$HERE/linux"; mkdir -p "$OUT"
log(){ printf '  %s\n' "$*"; }
cap(){ local f="$OUT/$1"; shift; printf '$ %s\n' "$*" > "$f"; "$@" >> "$f" 2>&1; log "$1"; }

log "installing tools (best effort, needs network)…"
apt-get update -y        >/dev/null 2>&1
apt-get install -y intel-gpu-tools msr-tools read-edid edid-decode i2c-tools pciutils usbutils acpica-tools >/dev/null 2>&1
modprobe msr 2>/dev/null

# ── system / PCI / USB ───────────────────────────────────────────────────────
cap lscpu.txt            lscpu
cap lspci-nnvv.txt       lspci -nnvv
cap lsusb-t.txt          lsusb -t
cap lsusb-v.txt          lsusb -v
cap dmesg.txt            dmesg
cap dmidecode.txt        dmidecode

# ── display: i915 debugfs, EDID, DPCD ────────────────────────────────────────
DRI=/sys/kernel/debug/dri
CARD="$(ls -d $DRI/0 2>/dev/null || ls -d $DRI/* 2>/dev/null | head -1)"
if [ -n "${CARD:-}" ]; then
  for f in i915_display_info i915_edp_psr_status i915_dmc_info i915_frequency_info i915_gpu_info; do
    [ -e "$CARD/$f" ] && { printf '$ cat %s\n' "$CARD/$f" > "$OUT/$f.txt"; cat "$CARD/$f" >> "$OUT/$f.txt" 2>&1; log "$f"; }
  done
  # whole eDP connector debugfs dir (DPCD, link rate, lane count, etc.)
  for c in "$CARD"/eDP-1 "$CARD"/*eDP*; do
    [ -d "$c" ] || continue
    d="$OUT/edp-debugfs"; mkdir -p "$d"
    for g in "$c"/*; do [ -f "$g" ] && cat "$g" > "$d/$(basename "$g").txt" 2>&1; done
    log "eDP debugfs -> edp-debugfs/"
  done
fi
# EDID of every connector
for p in /sys/class/drm/*/edid; do
  [ -s "$p" ] || continue
  n="$(echo "$p" | sed 's#/sys/class/drm/##; s#/edid##')"
  cp "$p" "$OUT/edid-$n.bin"
  edid-decode < "$p" > "$OUT/edid-$n.txt" 2>/dev/null || parse-edid < "$p" > "$OUT/edid-$n.txt" 2>/dev/null
  log "EDID $n"
done

# ── backlight type + range ───────────────────────────────────────────────────
: > "$OUT/backlight.txt"
for b in /sys/class/backlight/*/; do
  [ -d "$b" ] || continue
  echo "== $(basename "$b")" >> "$OUT/backlight.txt"
  for k in type max_brightness brightness actual_brightness scale; do
    echo "  $k = $(cat "$b$k" 2>/dev/null)" >> "$OUT/backlight.txt"
  done
done
log "backlight"

# ── live display/backlight registers (the eDP + PWM values the port depends on) ─
if command -v intel_reg >/dev/null 2>&1; then
  : > "$OUT/intel_reg.txt"
  # 0x70008 PIPECONF_A (pipe lit?) · 0x60400 TRANS_DDI_FUNC_CTL_A (the kern_gen11.cpp:11736 value!)
  # 0x60000.. transcoder timings · 0x60030/40 DATA/LINK M/N · 0xC72xx PPS · 0xC82xx PCH PWM · 0x482xx CPU PWM · 0x46140 PIPE_CLK_SEL
  for r in 0x70008 0x60400 0x60404 0x60000 0x60004 0x60008 0x6000C 0x60010 0x60014 0x60028 \
           0x60030 0x60034 0x60040 0x60044 0x64000 \
           0xC7200 0xC7204 0xC7208 0xC720C 0xC8250 0xC8254 0xC8258 \
           0x48250 0x48254 0x48258 0x46140; do
    printf '%s = %s\n' "$r" "$(intel_reg read "$r" 2>/dev/null | tr -d '\n')" >> "$OUT/intel_reg.txt"
  done
  log "intel_reg (eDP + PWM)"
else
  echo "intel_reg not available — install intel-gpu-tools" > "$OUT/intel_reg.txt"
fi

# ── input: I2C-HID touchpad (TPD0), TrackPoint, PS2 ──────────────────────────
cap input-devices.txt    cat /proc/bus/input/devices
cap i2c-buses.txt         i2cdetect -l
{ printf '$ ls -l /sys/bus/i2c/devices/\n'; ls -l /sys/bus/i2c/devices/ 2>&1; \
  echo; for d in /sys/bus/i2c/devices/i2c-*/name /sys/bus/i2c/devices/*/name; do \
    [ -f "$d" ] && echo "$d -> $(cat "$d")"; done; } > "$OUT/i2c-devices.txt"
dmesg | grep -iE 'i2c_hid|hid-generic|hid-multitouch|elan|synaptics|psmouse|trackpoint|atkbd' > "$OUT/input-dmesg.txt" 2>&1
log "input (I2C-HID / PS2 / TrackPoint)"

# ── Wi-Fi / Bluetooth (CNVi AX211) ───────────────────────────────────────────
dmesg | grep -iE 'iwlwifi|intel.*wifi|cnvi|bluetooth|hci_|btintel|firmware' > "$OUT/wifi-bt-dmesg.txt" 2>&1
log "wifi/bt"

# ── audio: HDA vs SOF/SoundWire, codec id (settles the audio approach) ────────
cap asound-cards.txt     cat /proc/asound/cards
for h in /proc/asound/card*/codec*; do [ -f "$h" ] && { echo "== $h"; cat "$h"; }; done > "$OUT/asound-codecs.txt" 2>&1
dmesg | grep -iE 'snd_|sof|hda|realtek|alc[0-9]|soundwire|sdw|cs35l|rt[0-9]{3,4}|nau[0-9]' > "$OUT/audio-dmesg.txt" 2>&1
lsmod | grep -iE 'snd|sof|soundwire' > "$OUT/audio-modules.txt" 2>&1
log "audio (codec / SOF / SoundWire)"

# ── CPU: MSR 0xE2 CFG-lock state (AppleXcpmCfgLock decision) ──────────────────
{ echo "MSR 0xE2 (MSR_POWER_CTL / PKG_CST_CONFIG_CONTROL):";
  echo "  raw = $(rdmsr 0xE2 2>/dev/null || echo 'rdmsr unavailable')";
  echo "  bit15 set => MSR 0xE2 is LOCKED => AppleXcpmCfgLock=true is required";
  echo "MSR 0x1AA (MISC_PWR_MGMT): $(rdmsr 0x1AA 2>/dev/null)"; } > "$OUT/msr.txt"
log "MSR 0xE2"

# ── ACPI cross-check (you already have the OEM dump from SSDTTime) ────────────
acpidump > "$OUT/acpidump.txt" 2>&1 && log "acpidump (cross-check)"

echo
log "DONE. Copy the whole 'hw/linux' folder back into the repo under hw/."
log "Most important files: intel_reg.txt (0x60400 + PIPECONF), edp-debugfs/, edid-*.txt, backlight.txt, asound-codecs.txt, msr.txt."
