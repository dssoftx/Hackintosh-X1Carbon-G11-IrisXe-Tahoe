# Ready-made EFIs

Two complete OpenCore EFIs for the ThinkPad X1 Carbon Gen 11. Each has a single `config.plist`, so
there is nothing to rename.

| | |
|---|---|
| `EFI-install/EFI` | **NootedGreen off**, verbose boot. Use this to **install macOS** — there is no Tiger Lake driver in `/Library/Extensions` yet for NootedGreen to patch |
| `EFI-accel/EFI` | **NootedGreen on**, accelerated boot-args. Use this **after `install.sh` has run** on the ThinkPad |

They are otherwise byte-identical: same kexts, same ACPI, same quirks.

## Two things you must do first

### 1. Set your own SMBIOS

Both ship with SMBIOS **blank**.

```sh
zsh set-smbios.sh <SystemSerialNumber> <MLB>
```

Generate the values with `macserial` from the OpenCore release that matches this EFI:

```sh
./macserial -m MacBookPro16,2 -g -n 1        # prints "SERIAL | MLB"
```

> ⚠️ Serial, MLB and UUID identify the machine to Apple. If several people boot the same values, iCloud
> and iMessage break **for all of them** and Apple IDs can get flagged. These are yours alone: never
> publish them, never reuse someone else's, and do not commit them.

### 2. Fetch `HfsPlus.efi`

Not in this repository — it is an Apple-derived binary. Without it OpenCore cannot see a
`createinstallmedia` USB, so you need it at least for the install.

```sh
curl -fL -o EFI-install/EFI/OC/Drivers/HfsPlus.efi \
  https://raw.githubusercontent.com/acidanthera/OcBinaryData/master/Drivers/HfsPlus.efi
cp EFI-install/EFI/OC/Drivers/HfsPlus.efi EFI-accel/EFI/OC/Drivers/HfsPlus.efi
```

## Then

```sh
python3 -I ../verify-efi.py EFI-install/EFI     # should report 0 missing
```

and follow [the install guide](../README.md#install) from step 2.

## One thing to swap later

`EFI-accel/EFI/OC/Kexts/NootedGreen.kext` is a build of `../src/NootedGreen`. Once `install.sh` has run
on your own machine, replace it with the `build/NootedGreen.kext` it produced, so the kext and the
user-space Metal stack come from the same build.

## Not a build directory

`make-efi-x1c.sh` writes to `build/dist/`, not here, so running it will not overwrite these.
