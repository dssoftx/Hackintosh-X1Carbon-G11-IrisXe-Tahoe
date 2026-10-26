import plistlib, os, sys
c = sys.argv[1]
have = os.path.exists(os.path.join(os.path.dirname(c), 'Drivers', 'HfsPlus.efi'))
p = plistlib.load(open(c, 'rb'))
ch = False
for d in p['UEFI']['Drivers']:
    if d['Path'] == 'HfsPlus.efi' and d['Enabled'] != have:
        d['Enabled'] = have
        d['Comment'] = 'HFS+ driver, needed to see a createinstallmedia USB' if have else \
                        'DISABLED: file absent. An enabled-but-missing driver halts OpenCore (HaltLevel=DEBUG_ERROR).'
        ch = True
if ch:
    plistlib.dump(p, open(c, 'wb'), sort_keys=True)
print('  HfsPlus.efi %s in %s' % ('ENABLED' if have else 'disabled', c))
