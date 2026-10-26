#!/bin/zsh
# Turns the ready-made EFIs in dist/ into bootable ones: fills in YOUR SMBIOS and adds the one file
# that cannot be redistributed.
#
#   zsh make-efi-x1c.sh            -> build/dist/EFI-stage1, build/dist/EFI-PostInstall  (+ .zip each)
#
# dist/ is the source of truth: those trees are what was tested on hardware. This script never edits
# them - output goes to build/dist/.
#
#   EFI-stage1       9 kexts. Install macOS with this, and keep using it until install.sh has run:
#                    it has Wi-Fi (AirportItlwm) because install.sh needs the network to fetch Xcode
#                    Command Line Tools and Apple's 16.0.32 driver bundles. No NootedGreen - there is
#                    no Tiger Lake driver in /Library/Extensions for it to patch yet.
#   EFI-PostInstall  19 kexts, accelerated. Switch to this once install.sh has finished.
#
# Every machine needs unique SMBIOS data: sharing one set between machines breaks iCloud and iMessage
# and can get Apple IDs flagged. build/dist/ is git-ignored - never publish it.
#
# Also fetches, because neither can be redistributed here:
#   macserial    from the matching OpenCore release, to generate the SMBIOS
#   HfsPlus.efi  from acidanthera/OcBinaryData (Apple-derived) - without it OpenCore cannot see a
#                createinstallmedia USB
set -e
ROOT=${0:A:h}
OC_VER=1.0.8
DEPS=$ROOT/build/deps; DIST=$ROOT/build/dist
TREES=(EFI-stage1 EFI-PostInstall)
mkdir -p $DEPS $DIST

for t in $TREES; do
  [[ -d $ROOT/dist/$t/OC ]] || { print "missing $ROOT/dist/$t - run this from the repository root"; exit 1 }
done

MS=$DEPS/OpenCore-$OC_VER/Utilities/macserial/macserial
if [[ ! -x $MS ]]; then
  print "== downloading OpenCore $OC_VER (macserial)"
  curl -fL -o $DEPS/oc.zip https://github.com/acidanthera/OpenCorePkg/releases/download/$OC_VER/OpenCore-$OC_VER-RELEASE.zip
  mkdir -p $DEPS/OpenCore-$OC_VER && (cd $DEPS/OpenCore-$OC_VER && unzip -q -o ../oc.zip 'Utilities/macserial/*')
  chmod +x $MS
fi

HFS=$DEPS/HfsPlus.efi
if [[ ! -s $HFS ]]; then
  print "== downloading HfsPlus.efi (OcBinaryData; not redistributed in this repository)"
  curl -fL -o $HFS https://raw.githubusercontent.com/acidanthera/OcBinaryData/master/Drivers/HfsPlus.efi
fi

# one SMBIOS for both trees: it is the same machine
line=$($MS -m MacBookPro16,2 -g -n 1)
SERIAL=${${line%% |*}// /}; MLB=${${line##*| }// /}
UUID=$(uuidgen)
ROM=$(openssl rand -base64 6)          # 6 random bytes (plist <data> is base64)

for t in $TREES; do
  print "== $t"
  rm -rf $DIST/$t; ditto $ROOT/dist/$t $DIST/$t
  rm -f $DIST/$t/README.md
  # ditto DOES write ._ AppleDouble sidecars and .DS_Store onto a FAT32 ESP; strip them
  find $DIST/$t -name '.DS_Store' -delete -o -name '._*' -delete
  cp $HFS $DIST/$t/OC/Drivers/HfsPlus.efi
  c=$DIST/$t/OC/config.plist
  # the shipped configs disable HfsPlus.efi because the file is absent; it is here now
  python3 -I $ROOT/tools/sync-hfsplus.py $c
  plutil -replace PlatformInfo.Generic.SystemProductName  -string MacBookPro16,2 $c
  plutil -replace PlatformInfo.Generic.SystemSerialNumber -string $SERIAL        $c
  plutil -replace PlatformInfo.Generic.MLB                -string $MLB           $c
  plutil -replace PlatformInfo.Generic.SystemUUID         -string $UUID          $c
  plutil -replace PlatformInfo.Generic.ROM                -data   $ROM           $c
  plutil -lint $c >/dev/null
  # refuse to ship an EFI whose config points at files that are not there: a missing OC/OpenCore.efi
  # gives only "failed to open valid OpenCore image" at the firmware, naming nothing
  python3 -I $ROOT/verify-efi.py $DIST/$t
  rm -f $DIST/$t-G11.zip
  (cd $DIST && ditto -c -k --keepParent $t $t-G11.zip)
done

cat <<EOF

Ready:
  $DIST/EFI-stage1        install macOS with this, and keep it until install.sh has run (has Wi-Fi)
  $DIST/EFI-PostInstall   switch to this afterwards (accelerated)

  Serial: $SERIAL   MLB: $MLB   UUID: $UUID
  Keep these. They are YOUR machine's. Do not publish build/dist/.

Next:
  1. Installer USB, on a Mac:
       sudo /Applications/Install\ macOS\ Tahoe.app/Contents/Resources/createinstallmedia --volume /Volumes/<USB>
  2. Put EFI-stage1 on the USB's EFI partition:
       diskutil list && sudo diskutil mount diskNs1
       sudo ditto $DIST/EFI-stage1 /Volumes/EFI/EFI
       sudo find /Volumes/EFI -name '._*' -delete -o -name .DS_Store -delete
  3. Install macOS, then on the ThinkPad: xcode-select --install && zsh install.sh
  4. Swap to EFI-PostInstall and drop in the NootedGreen.kext install.sh just built.

  Full guide: README.md
EOF
