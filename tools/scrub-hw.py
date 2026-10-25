#!/usr/bin/env python3
"""Scrub the hardware dumps in hw/ so they can be published.

    python3 -I tools/scrub-hw.py <hw dir>

Removes or masks, in place:
  * hw/acpi/oem/MSDM.aml        deleted - the MSDM ACPI table embeds the machine's Windows OEM
                                product key in clear text
  * MSDM table body in acpidump.txt   replaced with a redaction note (same key, hex-dumped)
  * MAC addresses               masked to XX:XX:XX:XX:XX:XX (own Wi-Fi/BT adapters, and the
                                BSSIDs of whatever access points were nearby when dmesg ran)

Everything else in hw/ is firmware and hardware description with no bearing on identity, and is
exactly what makes the port auditable, so it is kept.
"""
import os, re, sys

MAC = re.compile(rb'\b(?:[0-9a-fA-F]{2}:){5}[0-9a-fA-F]{2}\b')

def scrub_acpidump(path):
    out, n, skipping = [], 0, False
    for line in open(path, 'rb'):
        if re.match(rb'^[A-Z0-9]{4} @ 0x', line):
            skipping = line.startswith(b'MSDM')
            out.append(line)
            if skipping:
                out.append(b'    [REDACTED: the MSDM table contains this machine\'s Windows OEM\n')
                out.append(b'     product key in clear text. Removed before publication.]\n')
                n += 1
            continue
        if skipping and re.match(rb'^\s+[0-9A-F]{4}: ', line):
            continue
        skipping = False
        out.append(line)
    open(path, 'wb').writelines(out)
    return n

def main(hw):
    msdm = os.path.join(hw, 'acpi/oem/MSDM.aml')
    if os.path.exists(msdm):
        os.remove(msdm); print('deleted  hw/acpi/oem/MSDM.aml')

    ad = os.path.join(hw, 'linux/acpidump.txt')
    if os.path.exists(ad):
        print('redacted %d MSDM block(s) in hw/linux/acpidump.txt' % scrub_acpidump(ad))

    total = 0
    for root, _, files in os.walk(hw):
        for f in files:
            p = os.path.join(root, f)
            if not f.endswith(('.txt', '.md', '.sh', '.json', '.plist', '.dsl')):
                continue
            b = open(p, 'rb').read()
            nb, k = MAC.subn(b'XX:XX:XX:XX:XX:XX', b)
            if k:
                open(p, 'wb').write(nb)
                print('masked %2d MAC(s) in %s' % (k, os.path.relpath(p, hw)))
                total += k
    print('done: %d MAC address(es) masked' % total)
    # leave no doubt
    left = []
    for root, _, files in os.walk(hw):
        for f in files:
            p = os.path.join(root, f)
            b = open(p, 'rb').read()
            if b'MSDM' in b and f != 'README.md' and not f.endswith('.txt'):
                left.append(os.path.relpath(p, hw))
            if MAC.search(b):
                left.append(os.path.relpath(p, hw) + ' (MAC)')
    print('residual hits:', left or 'none')
    return 0

if __name__ == '__main__':
    if len(sys.argv) != 2:
        print(__doc__); sys.exit(2)
    sys.exit(main(sys.argv[1]))
