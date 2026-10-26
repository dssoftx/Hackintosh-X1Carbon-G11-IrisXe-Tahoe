#!/bin/zsh
# Keep system sleep, remove the hibernate/standby paths we have no reason to trust.
#
# The X1 Carbon Gen 11 DOES have _S3 in its DSDT (docs/X1C-G11-PORT.md b9) and macOS sleeps and
# resumes on it, unlike the XPS 13 Plus this port came from. So we keep sleep -- what we remove is
# hibernation:
#
#   macOS ships hibernatemode 3 + standby 1 on a MacBookPro16,2 SMBIOS. That writes
#   /var/vm/sleepimage on every sleep and, after standbydelaylow (3 h), cuts RAM power and expects
#   the boot path to resume from that image. OpenCore here is HibernateMode = None, so it will NOT
#   resume it -- the machine cold-boots instead and the session is gone, with the on-disk state
#   written on the assumption of a resume. hibernatemode 0 keeps sleep in RAM only.
#
# Run with sudo. Current settings are saved first, under tools/build/.
# Undo: sudo zsh tools/sleep/90-pmset-revert.sh
set -e
[[ $EUID -eq 0 ]] || { echo "run: sudo zsh $0"; exit 1; }
OUT=${0:A:h:h}/build
mkdir -p $OUT
pmset -g custom > $OUT/pmset-before-$(date +%Y%m%d-%H%M%S).txt

pmset -a hibernatemode 0      # sleep in RAM only; never write or resume a sleepimage
pmset -a standby 0            # no transition to hibernation after standbydelay
pmset -a autopoweroff 0 2>/dev/null || true   # not present on every SMBIOS/build
pmset -a powernap 0           # no dark-wake maintenance (nothing here is tested in dark wake)
pmset -a proximitywake 0      # no Apple Watch / Handoff wake; we have no working AWDL
pmset -c womp 0               # no wake-on-LAN
pmset -a disksleep 10
pmset -b displaysleep 3
pmset -c displaysleep 10
rm -f /var/vm/sleepimage       # reclaims RAM-sized disk space; recreated only if hibernate returns

echo
pmset -g
