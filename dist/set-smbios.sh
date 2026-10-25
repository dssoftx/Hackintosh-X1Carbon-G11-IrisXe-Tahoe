#!/bin/zsh
# Writes your SMBIOS into BOTH ready-made EFIs in this folder.
#
#   zsh set-smbios.sh <SystemSerialNumber> <MLB> [SystemUUID] [ROM-hex]
#
# Generate the first two with macserial from the OpenCore release that matches this EFI:
#   ./macserial -m MacBookPro16,2 -g -n 1       ->  "SERIAL | MLB"
# UUID defaults to a fresh uuidgen, ROM to 6 random bytes.
#
# WHY YOU MUST DO THIS: the EFIs ship with blank SMBIOS. Serial, MLB and UUID identify the machine to
# Apple. If several people run the same values, iCloud and iMessage break for all of them and Apple IDs
# can get flagged. These are yours; never publish them.
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
for c in $HERE/EFI-install/EFI/OC/config.plist $HERE/EFI-accel/EFI/OC/config.plist; do
  [[ -f $c ]] || continue
  plutil -replace PlatformInfo.Generic.SystemProductName  -string MacBookPro16,2 $c
  plutil -replace PlatformInfo.Generic.SystemSerialNumber -string $SERIAL        $c
  plutil -replace PlatformInfo.Generic.MLB                -string $MLB           $c
  plutil -replace PlatformInfo.Generic.SystemUUID         -string $UUID          $c
  plutil -replace PlatformInfo.Generic.ROM                -data   $ROM           $c
  plutil -lint $c >/dev/null
  print "  updated $c"
  ((n++))
done
(( n )) || { print "no config.plist found - run this from inside dist/"; exit 1 }

print
print "Serial: $SERIAL   MLB: $MLB   UUID: $UUID"
print "Keep these. Do not publish them, and do not reuse anyone else's."
print
print "Still missing from both EFIs: OC/Drivers/HfsPlus.efi (Apple-derived, not redistributable)."
print "Fetch it once:"
print "    curl -fL -o EFI-install/EFI/OC/Drivers/HfsPlus.efi \\"
print "      https://raw.githubusercontent.com/acidanthera/OcBinaryData/master/Drivers/HfsPlus.efi"
print "    cp EFI-install/EFI/OC/Drivers/HfsPlus.efi EFI-accel/EFI/OC/Drivers/HfsPlus.efi"
print "Without it OpenCore cannot see a createinstallmedia USB."
