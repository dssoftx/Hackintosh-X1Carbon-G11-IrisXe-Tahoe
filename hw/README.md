# Hardware data — ThinkPad X1 Carbon Gen 11

Drop collected outputs here. Analyzed against `docs/X1C-G11-PORT.md` §1/§3/§5.
Panel confirmed **IPS** (owner). **Never commit** anything with serials/MAC/UUID without scrubbing.

```
hw/
  acpi/          OEM ACPI dump (DSDT + SSDTs, NHLT, LPIT, ECDT…) + SSDTTime output   ← MOSTLY DONE
  linux/         output of collect-linux.sh (run from an Ubuntu live USB)            ← TODO
  windows/       USBToolBox map export + panel/EDID from HWiNFO                       ← TODO
```

## Already collected ✅
Your `SSDT:DSDT-Patches and Dumps/` already has the full OEM ACPI set (`DSDT.aml` + `SSDT1–14`, `NHLT`, `LPIT`,
`ECDT`, `MSDM`, …) and SSDTTime outputs (`SSDT-EC/PLUG-ALT/RTCAWAC/USBX/XOSI`). **Move that into `hw/acpi/`**
(`git mv "SSDT:DSDT-Patches and Dumps" hw/acpi/oem` — or tell me and I'll do it). ACPI collection is essentially done.

## Still needed — Phase 1 checklist

### A. Linux live USB (Ubuntu) — one command
```sh
sudo bash hw/collect-linux.sh          # writes hw/linux/
```
This captures, in order of importance to the port:

1. **`intel_reg.txt`** — live `TRANS_DDI_FUNC_CTL_A` (`0x60400`) and `PIPECONF_A` (`0x70008`). `0x60400` is the exact
   value the panel fix (`kern_gen11.cpp:11736`) must use instead of the Dell's `0x8A000106`; `0x70008` bit 31 confirms
   the pipe is lit (the `-ngreenkeepefi` premise). Also PCH PWM (`0xC8254/0xC8258`) vs CPU PWM (`0x48254/0x48258`).
2. **`edp-debugfs/`** — DPCD, **link rate, lane count**, eDP version.
3. **`edid-eDP-1.txt` / `.bin`** — panel model + native timings + available modes (→ HiDPI mode choices).
4. **`backlight.txt`** — backlight `type` (`raw`/`platform`), `max_brightness` (→ `ngreenblmax`).
5. **`asound-codecs.txt` / `audio-dmesg.txt` / `audio-modules.txt`** — HDA codec id vs SOF/SoundWire (settles whether
   AppleALC applies or we need a different audio path).
6. **`input-devices.txt` / `input-dmesg.txt` / `i2c-devices.txt`** — the `TPD0` touchpad vendor (Synaptics/Elan), its
   I²C bus + GPIO, TrackPoint/PS2.
7. **`msr.txt`** — MSR `0xE2` lock bit (→ confirm `AppleXcpmCfgLock`).
8. **`lspci-nnvv.txt` / `lsusb-t.txt` / `dmesg.txt`** — Wi-Fi/BT exact IDs (AX211), everything else.

### B. Windows — USB port map (do this one in Windows)
- **USBToolBox** (https://github.com/USBToolBox/tool), "Discovery" mode: plug a USB2 + USB3 device into **each** physical
  port in turn (2× USB-A, 2× USB-C/TB4), note which internal connectors light up (Bluetooth, webcam, fingerprint, GPS/WWAN
  if present), then **Export** the companion map. Save the export + a screenshot to `hw/windows/`. Target ≤15 ports.
- Optional: **HWiNFO** → Monitoring → the panel's manufacturer/model string and EDID, to `hw/windows/` (cross-check EDID).

### C. BIOS — one lookup for the sleep question
- In BIOS/UEFI setup, check **Config → Power** (or Security) for a **"Sleep State" / "Linux S3"** style option. The DSDT
  has `_S3_`; whether firmware honors it decides if we can attempt real S3 instead of the Dell's S0ix-only story.
  Just note what the option says (and its current value) — no change needed yet.

When `hw/linux/` and `hw/windows/` are populated, tell me and I'll analyze them against the audit and move to Phase 2.
