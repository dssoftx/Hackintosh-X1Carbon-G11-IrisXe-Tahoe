#!/bin/zsh
# One-shot diagnostics for the X1 Carbon Gen 11 port. Read-only: it reads logs, sysctl and ioreg, and
# writes nothing outside its output folder.
#
#   zsh tools/collect-logs.sh            -> ~/x1c-logs-<date>.tar.gz  (+ a summary on screen)
#   sudo zsh tools/collect-logs.sh       same, plus the kernel log (log show needs admin on Tahoe)
#
# Send the tarball, or just the SUMMARY block it prints.
set -u
setopt null_glob          # unmatched globs must not abort the script
OUT=${TMPDIR:-/tmp}/x1c-logs-$(date +%Y%m%d-%H%M%S)
mkdir -p $OUT
cap() { local f=$OUT/$1; shift; { print -r -- "\$ $*"; "$@" 2>&1; } > $f; }

# ── identity / CPU / SIP ──────────────────────────────────────────────────────
cap sw_vers.txt        sw_vers
cap sysctl-hw.txt      sysctl hw.model hw.ncpu hw.physicalcpu hw.logicalcpu hw.memsize \
                              machdep.cpu.brand_string machdep.cpu.core_count machdep.cpu.thread_count \
                              machdep.cpu.family machdep.cpu.model machdep.cpu.stepping
cap csrutil.txt        csrutil status
cap nvram-bootargs.txt nvram boot-args
cap pmset.txt          pmset -g

# ── what is loaded ───────────────────────────────────────────────────────────
{ print -r -- '$ kmutil showloaded --list-only (non-Apple)'
  kmutil showloaded --list-only 2>/dev/null | grep -v ' com\.apple\.' ; } > $OUT/kexts.txt
cap kexts-gfx.txt      sh -c "kmutil showloaded 2>/dev/null | grep -iE 'nootedgreen|hookcase|lilu|whatevergreen|tglgraphics|voodoo|itlwm|virtualsmc'"

# ── graphics ─────────────────────────────────────────────────────────────────
cap displays.txt       system_profiler SPDisplaysDataType
cap ioreg-igpu.txt     sh -c "ioreg -r -c IOPCIDevice -n IGPU -d 1"
cap ioreg-accel.txt    sh -c "ioreg -rc IntelAccelerator -d1"
cap ioreg-fb.txt       sh -c "ioreg -rc AppleIntelFramebuffer -d1"
cap gpubundles.txt     sh -c "ls -la /Library/GPUBundles /Library/Extensions /System/Library/Caches/xe.bundle 2>&1"

# ── input / network / power ──────────────────────────────────────────────────
cap ioreg-input.txt    sh -c "ioreg -l | grep -iE 'VoodooI2C|VoodooGPIO|VoodooPS2|ELAN|TPD0|HIDDevice' | head -60"
cap ioreg-wifi.txt     sh -c "ioreg -l | grep -iE 'itlwm|AirPort|IO80211' | head -40"
cap battery.txt        sh -c "pmset -g batt; ioreg -rc AppleSmartBattery -d1 | head -40"
cap thermal.txt        sh -c "powermetrics --samplers smc -n1 -i200 2>/dev/null | head -30 || echo 'needs sudo'"

# ── I2C / trackpad detail (intermittent dropouts: interrupt mode, power state, bus errors) ──
cap i2c-ioreg.txt      sh -c "ioreg -lw0 -c VoodooI2CDeviceNub; ioreg -lw0 -c VoodooI2CControllerDriver"
cap i2c-pci.txt        sh -c "ioreg -lw0 -c IOPCIDevice | grep -A40 -iE 'I2C0|pci8086,51e8'"
cap i2c-power.txt      sh -c "ioreg -lw0 | grep -iE 'IOPowerManagement|VoodooI2C|TPD0' | grep -iE -B1 -A1 'CurrentPowerState|DevicePowerState'"
cap i2c-interrupts.txt sh -c "ioreg -lw0 -c VoodooI2CDeviceNub | grep -iE 'Interrupt|IOReport'"

# ── panics ───────────────────────────────────────────────────────────────────
mkdir -p $OUT/panics
cp /Library/Logs/DiagnosticReports/*.panic $OUT/panics/ 2>/dev/null
ls -la /Library/Logs/DiagnosticReports/ > $OUT/panics/listing.txt 2>&1

# ── kernel log: the XeNG lines are the useful ones ───────────────────────────
if [[ $EUID -eq 0 ]]; then
  log show --last 20m --predicate 'sender == "kernel"' --style syslog > $OUT/kernel-20m.txt 2>&1
  grep -aE 'XeNG|ngreen|NGreen|XE-' $OUT/kernel-20m.txt > $OUT/kernel-ngreen.txt 2>&1
  grep -aiE 'VoodooI2C|VoodooGPIO|ELAN067C|TPD0|i2c|interrupt storm|Timeout waiting' \
       $OUT/kernel-20m.txt > $OUT/kernel-i2c.txt 2>&1
  dmesg > $OUT/dmesg.txt 2>&1
else
  print "run with sudo to also capture the kernel log" > $OUT/kernel-20m.txt
  print; print "  !! NOT run as root: no kernel log captured, which is where VoodooI2C reports its"
  print    "     interrupt mode and any 'Timeout waiting for bus not to be busy'. Re-run with sudo."

fi

# ── GPU registers, if XeShim + xectl are built ───────────────────────────────
if command -v xectl >/dev/null 2>&1; then cap xectl-regs.txt xectl regs; fi

# ── summary on screen ────────────────────────────────────────────────────────
print; print "──────── SUMMARY ────────"
print -n "build          : "; sw_vers -buildVersion
print -n "cpu            : "; sysctl -n machdep.cpu.brand_string
print -n "threads        : "; print -n "$(sysctl -n hw.ncpu) ncpu / "; print -n "$(sysctl -n hw.physicalcpu) phys / "; print "$(sysctl -n hw.logicalcpu) logical"
print -n "SIP            : "; csrutil status 2>/dev/null | head -1
print -n "boot-args      : "; nvram boot-args 2>/dev/null | sed 's/^boot-args//'
print -n "NootedGreen    : "; kmutil showloaded 2>/dev/null | grep -qi nootedgreen && print "LOADED" || print "not loaded"
print -n "HookCase       : "; kmutil showloaded 2>/dev/null | grep -qi hookcase   && print "LOADED" || print "not loaded"
print -n "TGL kexts in /L/E : "; ls /Library/Extensions 2>/dev/null | grep -c TGLGraphics
print -n "Metal          : "; system_profiler SPDisplaysDataType 2>/dev/null | grep -i metal | head -1 | sed 's/^ *//' || print "(none)"
print -n "xe-topo        : "; ioreg -rc IntelAccelerator -d1 2>/dev/null | grep -o '"xe-topo" = [0-9]*' || print "(no IntelAccelerator)"
print -n "trackpad       : "; ioreg -l 2>/dev/null | grep -qi VoodooI2CHIDDevice && print "VoodooI2CHID attached" || print "not attached"
print -n "wifi           : "; ioreg -l 2>/dev/null | grep -qiE 'itlwm|AirPortItlwm' && print "itlwm attached" || print "not attached"
print -n "panics         : "; print $(ls /Library/Logs/DiagnosticReports/*.panic 2>/dev/null | wc -l | tr -d ' ')
print "─────────────────────────"

T=$HOME/$(basename $OUT).tar.gz
tar czf $T -C $(dirname $OUT) $(basename $OUT) 2>/dev/null
rm -rf $OUT
print; print "tarball: $T"
print "(send that, or just paste the SUMMARY block above)"
