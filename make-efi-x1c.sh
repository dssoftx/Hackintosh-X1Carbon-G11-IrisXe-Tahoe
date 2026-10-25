#!/bin/zsh
# Builds a ready-to-use OpenCore EFI for the Lenovo ThinkPad X1 Carbon Gen 11 (i7-1355U) with YOUR OWN
# serial numbers.
#
#   zsh make-efi-x1c.sh          -> dist/EFI-X1C  and  dist/EFI-X1C-G11.zip
#
# Stage 1 of the port: the BARE config that boots the macOS Tahoe installer. No acceleration, no
# NootedGreen, no iGPU injection. See EFI-X1C/README.md.
#
# Every machine needs unique SMBIOS data (serial, MLB, UUID, ROM): sharing one set between machines breaks
# iCloud / iMessage and can get Apple IDs flagged. dist/ is git-ignored — never publish it.
#
# This script also fetches two files that are NOT in this repository:
#   HfsPlus.efi  (Apple-derived, from acidanthera/OcBinaryData) — needed to see a createinstallmedia USB
#   macserial    (from the matching OpenCore release) — generates the SMBIOS data
set -e
ROOT=${0:A:h}
OC_VER=1.0.8
DEPS=$ROOT/build/deps; DIST=$ROOT/dist
mkdir -p $DEPS $DIST

MS=$DEPS/OpenCore-$OC_VER/Utilities/macserial/macserial
if [[ ! -x $MS ]]; then
  echo "== downloading OpenCore $OC_VER (macserial)"
  curl -fL -o $DEPS/oc.zip https://github.com/acidanthera/OpenCorePkg/releases/download/$OC_VER/OpenCore-$OC_VER-RELEASE.zip
  mkdir -p $DEPS/OpenCore-$OC_VER && (cd $DEPS/OpenCore-$OC_VER && unzip -q -o ../oc.zip 'Utilities/macserial/*')
  chmod +x $MS
fi

HFS=$DEPS/HfsPlus.efi
if [[ ! -s $HFS ]]; then
  echo "== downloading HfsPlus.efi (OcBinaryData; not redistributed in this repo)"
  curl -fL -o $HFS https://raw.githubusercontent.com/acidanthera/OcBinaryData/master/Drivers/HfsPlus.efi
fi

rm -rf $DIST/EFI-X1C; mkdir -p $DIST/EFI-X1C
ditto $ROOT/EFI-X1C $DIST/EFI-X1C/EFI
rm -f $DIST/EFI-X1C/EFI/README.md          # docs stay in the repo, not on the ESP
# ditto DOES write ._ AppleDouble sidecars and .DS_Store onto a FAT32 ESP; strip them
find $DIST/EFI-X1C -name '.DS_Store' -delete -o -name '._*' -delete
cp $HFS $DIST/EFI-X1C/EFI/OC/Drivers/HfsPlus.efi
cp $DIST/EFI-X1C/EFI/OC/config-install.plist $DIST/EFI-X1C/EFI/OC/config.plist

line=$($MS -m MacBookPro16,2 -g -n 1)
SERIAL=${${line%% |*}// /}; MLB=${${line##*| }// /}
UUID=$(uuidgen)
ROM=$(openssl rand -base64 6)          # 6 random bytes (plist <data> is base64)
for c in $DIST/EFI-X1C/EFI/OC/config.plist $DIST/EFI-X1C/EFI/OC/config-install.plist; do
  plutil -replace PlatformInfo.Generic.SystemProductName -string MacBookPro16,2 $c
  plutil -replace PlatformInfo.Generic.SystemSerialNumber -string $SERIAL $c
  plutil -replace PlatformInfo.Generic.MLB -string $MLB $c
  plutil -replace PlatformInfo.Generic.SystemUUID -string $UUID $c
  plutil -replace PlatformInfo.Generic.ROM -data $ROM $c
  plutil -lint $c >/dev/null
done

# Refuse to ship an EFI whose config points at files that are not there (a missing
# EFI/OC/OpenCore.efi gives only "failed to open valid OpenCore image" at the firmware).
python3 -I $ROOT/verify-efi.py $DIST/EFI-X1C/EFI

rm -f $DIST/EFI-X1C-G11.zip
(cd $DIST/EFI-X1C && ditto -c -k --keepParent EFI ../EFI-X1C-G11.zip)
cat <<EOF

EFI ready: $DIST/EFI-X1C/EFI   (zip: $DIST/EFI-X1C-G11.zip)
  Serial: $SERIAL   MLB: $MLB   UUID: $UUID
  Keep these: they are YOUR machine's. Do not publish dist/.

config.plist and config-install.plist are the SAME bare stage-1 config, so the picker works either way.

Next:
  1. Make the installer USB on a Mac:
       sudo /Applications/Install\ macOS\ Tahoe.app/Contents/Resources/createinstallmedia --volume /Volumes/<USB>
  2. Mount the USB's EFI partition and copy dist/EFI-X1C/EFI onto it.
  3. BIOS: Secure Boot off (done). Boot the USB.
  4. Read EFI-X1C/README.md before judging any failure: it says which single change to make for each
     symptom.
EOF
