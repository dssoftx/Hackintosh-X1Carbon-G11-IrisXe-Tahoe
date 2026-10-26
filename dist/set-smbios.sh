#!/bin/zsh
# Writes your SMBIOS into BOTH ready-made EFIs in this folder.
#
#   zsh set-smbios.sh <SystemSerialNumber> <MLB> [SystemUUID] [ROM-hex]
#
# Generate the first two with macserial from the OpenCore release that matches this EFI:
#   ./macserial -m MacBookPro16,2 -g -n 1       ->  "SERIAL | MLB"
# UUID defaults to a fresh uuidgen, ROM to 6 random bytes.
#
# WHY YOU MUST DO THIS: the EFIs ship with a PLACEHOLDER SMBIOS so they boot out of the box. It is a
# generated set, not anyone's machine -- but it is the same set for everyone who downloads this repo.
# Serial, MLB and UUID identify the machine to Apple: if several people run the same values, iCloud and
# iMessage break for all of them and Apple IDs can get flagged. Replace it before signing in to
# anything. Your own values are yours; never publish them.
set -e
HERE=${0:A:h}
SERIAL=${1:?usage: set-smbios.sh <serial> <MLB> [uuid] [rom-hex]}
MLB=${2:?MLB required}
UUID=${3:-$(uuidgen)}
ROMHEX=${4:-}
if [[ -n $ROMHEX ]]; then
  [[ ${#ROMHEX} -eq 12 ]] || { print "ROM must be 12 hex characters (6 bytes), e.g. 001122AABBCC"; exit 1 }
  ROM=$(python3 -I -c "import base64,sys;print(base64.b64encode(bytes.fromhex(sys.argv[1])).decode())" $ROMHEX)
else
  ROM=$(openssl rand -base64 6)
fi

n=0
for c in $HERE/EFI-stage1/OC/config.plist $HERE/EFI-PostInstall/OC/config.plist; do
  [[ -f $c ]] || continue
  plutil -replace PlatformInfo.Generic.SystemProductName  -string MacBookPro16,2 $c
  plutil -replace PlatformInfo.Generic.SystemSerialNumber -string $SERIAL        $c
  plutil -replace PlatformInfo.Generic.MLB                -string $MLB           $c
  plutil -replace PlatformInfo.Generic.SystemUUID         -string $UUID          $c
  plutil -replace PlatformInfo.Generic.ROM                -data   $ROM           $c
  plutil -lint $c >/dev/null
  # if HfsPlus.efi has been fetched, enable it; an enabled-but-missing driver halts OpenCore
  [[ -f $HERE/../tools/sync-hfsplus.py ]] && python3 -I $HERE/../tools/sync-hfsplus.py $c
  print "  updated $c"
  n=$((n+1))
done
(( n )) || { print "no config.plist found - run this from inside dist/"; exit 1 }

print
print "Serial: $SERIAL   MLB: $MLB   UUID: $UUID"
print "Keep these. They replaced the shipped placeholder. Do not publish them, and do not reuse anyone else's."
if [[ -s $HERE/EFI-stage1/OC/Drivers/HfsPlus.efi && -s $HERE/EFI-PostInstall/OC/Drivers/HfsPlus.efi ]]; then
  print
  print "HfsPlus.efi is present in both. Nothing else to do."
  exit 0
fi
print
print "Still missing: OC/Drivers/HfsPlus.efi (Apple-derived, not redistributable)."
print "Fetch it once:"
print "    curl -fL -o EFI-stage1/OC/Drivers/HfsPlus.efi \\"
print "      https://raw.githubusercontent.com/acidanthera/OcBinaryData/master/Drivers/HfsPlus.efi"
print "    cp EFI-stage1/OC/Drivers/HfsPlus.efi EFI-PostInstall/OC/Drivers/HfsPlus.efi"
print "Without it OpenCore cannot see a createinstallmedia USB."
