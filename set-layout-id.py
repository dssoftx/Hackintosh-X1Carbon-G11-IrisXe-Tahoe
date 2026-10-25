#!/usr/bin/env python3
"""Set the AppleALC layout-id for the ALC287 codec in an EFI-X1C config.

    python3 -I set-layout-id.py <config.plist> <id>

AppleALC 1.9.8 ships exactly three layouts for ALC287 (Resources/ALC287/Info.plist):

    11   generic ALC287
    21   Lenovo Yoga Slim 7-14IIL05
    13   Lenovo Legion 5 Pro (R9000p)

Try them in that order. The property goes on PciRoot(0x0)/Pci(0x1f,0x3), which is the
cAVS controller (8086:51CA) your ALC287 sits behind.

After each change, reboot and check:
    system_profiler SPAudioDataType
Speakers, the headphone jack and the headset mic are the three things to judge.
"""
import plistlib, sys

HDA = 'PciRoot(0x0)/Pci(0x1f,0x3)'
KNOWN = (11, 21, 13)

def main(path, lid):
    if lid not in KNOWN:
        print('warning: %d is not one of AppleALC\'s ALC287 layouts %s' % (lid, KNOWN))
    p = plistlib.load(open(path, 'rb'))
    dp = p['DeviceProperties']['Add'].setdefault(HDA, {})
    dp['layout-id'] = lid.to_bytes(4, 'little')
    plistlib.dump(p, open(path, 'wb'), sort_keys=True)
    print('layout-id = %d (%s) on %s' % (lid, dp['layout-id'].hex(), HDA))
    return 0

if __name__ == '__main__':
    if len(sys.argv) != 3:
        print(__doc__); sys.exit(2)
    sys.exit(main(sys.argv[1], int(sys.argv[2])))
