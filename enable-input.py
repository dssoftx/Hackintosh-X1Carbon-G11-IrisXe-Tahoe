#!/usr/bin/env python3
"""Turn the stage-2b trackpad support on or off in an EFI-X1C config.

    python3 -I enable-input.py <config.plist> [on|off]

Stage 2b is the VoodooI2C stack plus SSDT-XOSI and the _OSI -> XOSI rename. It ships disabled so the
first boot after installing macOS changes only one thing at a time: if the machine stops booting with
input enabled, flip it back off rather than rebuilding the EFI.

Why these pieces, from hw/:
  VoodooGPIO (patched 1.2) matches INTC1055 == \\_SB.GPI0._HID
  VoodooI2C  matches 0x51e88086&0xFFFCFFFF == 00:15.0, the controller the touchpad sits on
  VoodooI2CHID attaches to the nub for \\_SB.PC00.I2C0.TPD0 (ELAN067C, _CID "PNP0C50")
  SSDT-XOSI is needed because TPD0._CRS takes a different branch when OSYS < 0x07DC
"""
import plistlib, sys

STAGE2B_KEXTS = {
    'VoodooI2C.kext',
    'VoodooI2C.kext/Contents/PlugIns/VoodooI2CServices.kext',
    'VoodooI2C.kext/Contents/PlugIns/VoodooGPIO.kext',
    'VoodooI2C.kext/Contents/PlugIns/VoodooInput.kext',
    'VoodooI2CHID.kext',
}

def main(path, state):
    on = state == 'on'
    p = plistlib.load(open(path, 'rb'))
    touched = []
    for k in p['Kernel']['Add']:
        if k['BundlePath'] in STAGE2B_KEXTS:
            k['Enabled'] = on
            touched.append('kext ' + k['BundlePath'].split('/')[-1])
    for a in p['ACPI']['Add']:
        if a['Path'] == 'SSDT-XOSI.aml':
            a['Enabled'] = on
            touched.append('acpi SSDT-XOSI.aml')
    for a in p['ACPI']['Patch']:
        if 'XOSI' in (a.get('Comment') or ''):
            a['Enabled'] = on
            touched.append('patch _OSI->XOSI')
    if not touched:
        print('nothing to change: is this an EFI-X1C config?')
        return 1
    plistlib.dump(p, open(path, 'wb'), sort_keys=True)
    print('input support %s in %s' % ('ENABLED' if on else 'DISABLED', path))
    for t in touched:
        print('   ', t)
    return 0

if __name__ == '__main__':
    if len(sys.argv) != 3 or sys.argv[2] not in ('on', 'off'):
        print(__doc__)
        sys.exit(2)
    sys.exit(main(sys.argv[1], sys.argv[2]))
