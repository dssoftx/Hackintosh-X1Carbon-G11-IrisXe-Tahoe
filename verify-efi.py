#!/usr/bin/env python3
"""Check that every file an OpenCore config references actually exists in the EFI tree.

    python3 verify-efi.py <path to the EFI folder>      # the one with BOOT/ and OC/ inside

Exists because a missing EFI/OC/OpenCore.efi cost a boot attempt: BOOTx64.efi is only the
bootstrap, and the firmware's error ("failed to open valid OpenCore image") does not name the
file. Exit status is non-zero if anything is missing, so make-efi-x1c.sh can refuse to ship.
"""
import plistlib, sys, os

def main(efi):
    oc = os.path.join(efi, 'OC')
    cfg = os.path.join(oc, 'config.plist')
    if not os.path.isfile(cfg):
        cfg = os.path.join(oc, 'config-install.plist')
    if not os.path.isfile(cfg):
        print('MISSING  OC/config.plist (and config-install.plist)')
        return 1
    p = plistlib.load(open(cfg, 'rb'))

    # (label, path relative to the EFI folder, enabled)
    checks = [('bootstrap', 'BOOT/BOOTx64.efi', True),
              ('core',      'OC/OpenCore.efi',  True)]
    for a in p['ACPI']['Add']:
        checks.append(('ACPI', 'OC/ACPI/' + a['Path'], a['Enabled']))
    for d in p['UEFI']['Drivers']:
        checks.append(('driver', 'OC/Drivers/' + d['Path'], d['Enabled']))
    for t in p['Misc'].get('Tools', []):
        checks.append(('tool', 'OC/Tools/' + t['Path'], t['Enabled']))
    for k in p['Kernel']['Add']:
        b = 'OC/Kexts/' + k['BundlePath']
        checks.append(('kext', b, k['Enabled']))
        for sub in ('ExecutablePath', 'PlistPath'):
            if k.get(sub):
                checks.append(('kext/' + sub, b + '/' + k[sub], k['Enabled']))

    bad = 0
    for label, rel, enabled in checks:
        full = os.path.join(efi, rel)
        ok = os.path.exists(full)
        if not ok and enabled:
            bad += 1
            print('MISSING  %-16s %s' % (label, rel))
        elif not ok:
            print('absent   %-16s %s (entry is disabled, fine)' % (label, rel))

    print('%s: %d reference(s) checked, %d missing' %
          (os.path.basename(cfg), len(checks), bad))
    return 1 if bad else 0

if __name__ == '__main__':
    if len(sys.argv) != 2:
        print(__doc__)
        sys.exit(2)
    sys.exit(main(sys.argv[1]))
