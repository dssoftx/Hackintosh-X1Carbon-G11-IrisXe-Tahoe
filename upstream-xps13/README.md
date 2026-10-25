# Upstream's Dell XPS 13 Plus 9320 material

**Do not boot this EFI on a ThinkPad.** It is kept here, unchanged, for attribution and so the fork is
diffable against what it came from — not for use.

`EFI/` is [JulioNectar/Hackintosh-XPS13Plus-IrisXe-Tahoe](https://github.com/JulioNectar/Hackintosh-XPS13Plus-IrisXe-Tahoe)'s
EFI for the Dell XPS 13 Plus 9320 (i7-1360P, `8086:A7A0`, 3840×2400 4-lane eDP). On an X1 Carbon Gen 11
it would fail several ways over:

* 11 ACPI patches and 12 SSDTs written against the **Dell's DSDT** — different device paths, an
  `SSDT-XPS-I2C` for a touchscreen this machine does not have, a `Delete` for a `xh_Dell_` table.
* `Booter/Quirks/SetupVirtualMap = false`, which on this ThinkPad firmware **hangs inside
  `ExitBootServices`** before the kernel is entered.
* `ngreengtfreq` defaulting to the 1360P's RP0 of 1500 MHz, and `ngreenblmax=17777` measured against a
  96000 PWM period rather than this panel's 19393.
* A NootedGreen build whose `hwSetMode` writes a **4-lane** `TRANS_DDI_FUNC_CTL_A` to a 2-lane panel.

`make-efi.sh` is upstream's builder for that EFI. The ThinkPad equivalent is `../make-efi-x1c.sh`.

The audit in [`../docs/X1C-G11-PORT.md`](../docs/X1C-G11-PORT.md) classifies every file in here as
GPU-generic, Dell-specific, panel-specific or A7A0-specific, with `file:line`.
