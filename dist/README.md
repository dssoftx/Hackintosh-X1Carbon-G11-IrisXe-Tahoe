# Ready-made EFIs

Two complete OpenCore EFIs for the ThinkPad X1 Carbon Gen 11. Each has exactly one `config.plist`, so
there is nothing to rename and no way to boot the wrong one.

| | kexts | use it |
|---|---|---|
| `EFI-stage1` | 9 | **to install macOS, and to build the stack afterwards.** The configuration that first reached the Tahoe installer — Lilu, WhateverGreen, VirtualSMC, VoodooPS2 (keyboard + TrackPoint), USBToolBox — plus `AirportItlwm`. Wi-Fi is not optional here: `install.sh` has to download Xcode CLT and Apple's 16.0.32 bundles. No NootedGreen, no ACPI patches |
| `EFI-PostInstall` | 19 | **after `install.sh` has run** on the ThinkPad. Adds NootedGreen (Metal), AppleALC, AirportItlwm, VoodooI2C, battery, and the two ACPI fixes |

`EFI-stage1` is deliberately *not* just `EFI-PostInstall` with NootedGreen switched off. It is the
configuration that was actually booted and verified, with the fewest moving parts — which is what you
want when something goes wrong during an install.

`make-efi-x1c.sh` produces finished copies of both of these in `build/dist/`, with your SMBIOS filled in
and `HfsPlus.efi` added, without modifying anything here.

## Two things you must do first

### 1. Set your own SMBIOS

Both ship with a **placeholder** SMBIOS, so they boot as downloaded. It is a generated set — not
anyone's real machine — but it is the *same* set for everyone, and serial, MLB and UUID are how Apple
identifies the machine. If several people boot these values, iCloud and iMessage break for all of them
and Apple IDs can get flagged. Replace it before you sign in to anything.

```sh
zsh set-smbios.sh <SystemSerialNumber> <MLB>
```

Generate the values with `macserial` from the OpenCore release that matches this EFI:

```sh
./macserial -m MacBookPro16,2 -g -n 1        # prints "SERIAL | MLB"
```

> ⚠️ Serial, MLB and UUID identify the machine to Apple. If several people boot the same values, iCloud
> and iMessage break **for all of them** and Apple IDs can get flagged. These are yours alone: never
> publish them, never reuse someone else's, and check before you commit.

### 2. Fetch `HfsPlus.efi`

Not in this repository — it is an Apple-derived binary. Without it OpenCore cannot see a
`createinstallmedia` USB, so you need it at least for `EFI-stage1`.

It therefore ships **disabled** in both configs, and that is deliberate: `Misc/Security/HaltLevel` is
`DEBUG_ERROR`, so a driver that is *enabled but missing* makes OpenCore **halt with a critical error
before the picker ever appears**. Fetch the file and the tooling re-enables it — `make-efi-x1c.sh` does it
automatically, and `set-smbios.sh` does it if you added the file by hand. If you copy it in some other
way, enable it yourself, or run `python3 -I ../tools/sync-hfsplus.py <config.plist>`.

```sh
curl -fL -o EFI-stage1/OC/Drivers/HfsPlus.efi \
  https://raw.githubusercontent.com/acidanthera/OcBinaryData/master/Drivers/HfsPlus.efi
cp EFI-stage1/OC/Drivers/HfsPlus.efi EFI-PostInstall/OC/Drivers/HfsPlus.efi
```

`set-smbios.sh` prints that command too.

## Then

```sh
python3 -I ../verify-efi.py EFI-stage1        # expect 0 missing once HfsPlus.efi is in place
sudo ditto EFI-stage1 /Volumes/EFI/EFI        # onto the USB's EFI partition
```

and follow [the install guide](../README.md#install) from step 2.

## One thing to swap later

`EFI-PostInstall/OC/Kexts/NootedGreen.kext` is a build of `../src/NootedGreen`. Once `install.sh` has run
on your own machine, replace it with the `build/NootedGreen.kext` it produced, so the kext and the
user-space Metal stack come from the same build.

## Not a build directory

`make-efi-x1c.sh` writes to `build/dist/`, not here, so running it will not overwrite these.
