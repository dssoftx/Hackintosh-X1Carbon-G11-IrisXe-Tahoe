# EFI-X1C — template, not a bootable EFI

**This folder will not boot as-is.** Two things are deliberately missing:

* **SMBIOS is blank.** `SystemSerialNumber`, `MLB`, `SystemUUID` and `ROM` are empty. Every machine
  needs its own: sharing one set breaks iCloud and iMessage and can get Apple IDs flagged.
* **`OC/Drivers/HfsPlus.efi` is absent.** It is an Apple-derived binary and is not redistributed here,
  but the config lists it because OpenCore needs it to see a `createinstallmedia` USB.

Build a real EFI from this template — it fills in both:

```sh
zsh make-efi-x1c.sh          # -> dist/EFI-X1C, with your own SMBIOS + HfsPlus.efi
python3 -I verify-efi.py dist/EFI-X1C
```

## The two configs

| | |
|---|---|
| `OC/config.plist` | **accelerated** — NootedGreen on, the full boot-args. Use after `install.sh` has run |
| `OC/config-install.plist` | **NootedGreen off**, plain verbose boot-args. Use to install macOS: there is no Tiger Lake driver in `/Library/Extensions` yet for NootedGreen to patch |

OpenCore always loads `config.plist`, so to install macOS you rename: `config.plist` out of the way,
`config-install.plist` into place. Step-by-step in the [main README](../README.md#install).

`NootedGreen.kext` here is a build of `../src/NootedGreen`. Replace it with the one `install.sh` builds
on your own machine, so the kext and the user-space stack come from the same build.
