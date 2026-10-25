# Iris Xe acceleration on macOS Tahoe — Lenovo ThinkPad X1 Carbon Gen 11

Hardware-accelerated graphics (**Metal**, Core Animation, Liquid Glass) plus working audio, Wi-Fi,
trackpad and battery on the **Intel Iris Xe of the i7-1355U (Raptor Lake-U, `8086:A7A1`)** under
**macOS Tahoe 26.7.1 (25G241)**, in an OpenCore hackintosh.

This is a port of [JulioNectar/Hackintosh-XPS13Plus-IrisXe-Tahoe](https://github.com/JulioNectar/Hackintosh-XPS13Plus-IrisXe-Tahoe),
which does the hard part: there is no Apple driver for Raptor Lake, so it runs Apple's **Tiger Lake**
Iris Xe driver (GPUDriversIntel 16.0.32, written for Macs that never shipped) on the newer GPU, with a
modified **NootedGreen** Lilu plugin bridging the generation gap in the kernel and a user-space stack
bridging the 2020-era Metal driver to Tahoe. All of that credit belongs upstream.

What this fork adds is the machine-specific half: a different CPU (2P+8E instead of 4P+8E), a different
GPU device-id, a different panel (1920×1200 2-lane eDP instead of 3840×2400 4-lane), and completely
different ACPI, input, audio and firmware behaviour.

> ⚠️ **Experimental.** Everything below was confirmed on one machine. Expect to debug. Keep a second
> bootable disk. Nothing here is a product.

---

## Status

| | |
|---|---|
| **Metal / GPU acceleration** | ✅ works — desktop, Dock, Liquid Glass, animations |
| **CPU** | ✅ all 12 threads (`hw.ncpu = hw.physicalcpu = hw.logicalcpu = 12`) |
| **Internal panel** 1920×1200 | ✅ works |
| **Audio** | ✅ speakers, headphone jack, headset mic — **needs an extra step, see [Audio](#audio)** |
| **Wi-Fi** | ✅ AX211 via AirportItlwm (no AirDrop/AWDL — driver limitation) |
| **Trackpad** | ✅ ELAN067C with gestures — ⚠️ via a polling workaround, see [Trackpad](#trackpad) |
| **Keyboard, TrackPoint** | ✅ VoodooPS2 |
| **Battery** | ✅ needs `ECEnabler` |
| **USB, NVMe** | ✅ |
| **Webcam** | likely fine — a plain UVC device (`5986:2145`), unlike the XPS's IPO6 sensor. Not specifically tested |
| **Bluetooth** | ❌ not enabled in this EFI (the kexts are available; just untested here) |
| **Brightness range** | ⚠️ slider may cap around 50% — `ngreenblmax` is unmeasured on this panel |
| **Internal mic array** | ❌ DMIC behind the audio DSP, not on the codec. Out of scope |
| **External displays, sleep, fingerprint** | ❌ out of scope, deliberately untouched |

---

## Hardware this was built on

| | |
|---|---|
| Model | ThinkPad X1 Carbon Gen 11, `21HM0049MZ`, BIOS N3XET64W 1.39, EC N3XHT44W |
| CPU | i7-1355U, Raptor Lake-U, 2P+8E / 12T, 15 W, family 6 model 186 stepping 3 |
| iGPU | `8086:A7A1` rev 04, display version 13.00 stepping E0, **96 EU** (1 slice, 6 DSS × 16 EU, mask `0x3f`) |
| GT clocks | RP0 **1300** / RP1 300 / RPn 100 MHz |
| Panel | 1920×1200 @60, eDP on DDI A, **2 lanes @ HBR**, 8 bpc, no DSC |
| Backlight | PCH PWM, period 19393 (CPU PWM registers all zero) |
| Audio | Realtek **ALC287** (`0x10ec0287`) on the `8086:51CA` cAVS controller |
| Wi-Fi/BT | Intel **AX211**, CNVi `8086:51F1`, BT `8087:0033` |
| Trackpad | **ELAN067C** (`04F3:31F9`), I²C-HID on `00:15.0`, ACPI `\_SB.PC00.I2C0.TPD0` |
| SMBIOS used | `MacBookPro16,2` |

Every one of those numbers came from a dump in [`hw/`](hw/), not from a guess. The full audit that
derives the port from them is [`docs/X1C-G11-PORT.md`](docs/X1C-G11-PORT.md).

---

## The four things that actually mattered

If you are porting this to another machine, these are the findings worth your time.

### 1. `Booter/Quirks/SetupVirtualMap = true`

Upstream runs with it **off**, and so does Dortania's Alder Lake guidance. On this ThinkPad firmware
that value hangs **inside `ExitBootServices`** — the kernel is never entered, so there is no verbose
output, no panic, and Caps Lock does not respond. It cost four boots to find. OpenCore's own
description is the giveaway: *"Some types of firmware access memory by virtual addresses after a
`SetVirtualAddresses` call, resulting in early boot crashes."*

Debugging note: OpenCore's log file **always** ends at `AAPL: #[EB|LOG:EXITBS:START]`, because it cannot
write to the ESP after `ExitBootServices`. That line is not a sign of failure — a successful boot's log
ends identically. Judge this stage from the console and from whether the kernel responds at all.

### 2. XE-FWSNAP — the panel registers must come from the firmware

Two values in upstream's NootedGreen are literals from the author's own panel:

* `hwSetMode` wrote `TRANS_DDI_FUNC_CTL_A = 0x8A000106` on **every** modeset. That encodes **4 lanes**;
  this panel is trained at **2** (`0x8a010002`). Upstream's own comment warns that changing lane count
  on a live transcoder resets the DDI buffer and drops the link.
* `adlpDcExit` wrote `PP_CONTROL = 0x67` on every DC exit, clearing bit 3 `EDP_BLC_ENABLE`, which this
  firmware sets (`0x6f`). The DMC logs ~1100 DC5→DC6 transitions in a few idle minutes, so it fires
  constantly.

[`patches/x1c-fwsnap-ddifunc-ppcontrol.diff`](patches/) reads both registers **once**, before anything
writes them, and uses the captured values. On the XPS the capture returns exactly the old literals, so
upstream behaviour is unchanged — no fork of the logic. `ngreenddifunc=0xVALUE` overrides it.

### 3. The touchpad's I²C controller, and ACPI that fights macOS

Two separate problems:

* **`\_SB.PC00.I2C0._PS3` calls `SOD3(IC00,1,1)`**, which writes `PMEC = 0x03` (D3hot) *and zeroes
  BAR0*, wiping the controller's MMIO base — while **`_PS0` is an empty method**, so ACPI never undoes
  it. [`acpi/SSDT-X1C-I2C0PS3.dsl`](acpi/) makes `_PS3` a no-op under Darwin. The rename is scoped by a
  17-byte pattern containing the `IC00` nameseg, which occurs exactly once, so `I2C1`–`I2C7` are
  untouched.
* **`TPD0._CRS` returns no I²C descriptor at all** while `OSYS < 0x07DC` — just an interrupt. Under
  Darwin `_OSI` matches no Windows string, so that is the branch you get and VoodooI2C has no bus to
  attach to. Hence `SSDT-XOSI.aml` plus the `_OSI` → `XOSI` rename.

### 4. Tahoe removed `AppleHDA`

AppleALC alone is not enough on 26.7.1: **`AppleHDA` no longer ships with the OS**. See [Audio](#audio).

---

## Install

You need: a Mac (or macOS VM) to build the EFI, a USB stick, and macOS Tahoe **26.7.1 build 25G241**
specifically — upstream's kernel patches are byte patterns against that exact build and `install.sh`
refuses anything else.

**BIOS:** Secure Boot off. VT-d/VT-x can stay on (`DisableIoMapper` handles it). There is no CFG Lock,
Resizable BAR or Above-4G option on this machine, and none is needed.

**1. Build the EFI** with your own SMBIOS — never reuse someone else's:

```sh
git clone <this repo> && cd <this repo>
zsh make-efi-x1c.sh            # -> dist/EFI-X1C, with your own serial/MLB/UUID/ROM
```

That also downloads `HfsPlus.efi` from acidanthera/OcBinaryData, which is **not** in this repository
(Apple-derived binary) and is needed for OpenCore to see a `createinstallmedia` USB.

**2. Make the installer USB** (on a Mac, with the 26.7.1 installer app downloaded):

```sh
sudo /Applications/Install\ macOS\ Tahoe.app/Contents/Resources/createinstallmedia --volume /Volumes/<USB>
```

**3. Put the EFI on the USB's EFI partition.** Use `config-install.plist`, **not** `config.plist`: it is
the same configuration with **NootedGreen disabled** and plain verbose boot-args, because there is no
Tiger Lake driver in `/Library/Extensions` yet and nothing for it to patch.

```sh
diskutil list                              # find the USB's EFI partition, e.g. disk4s1
sudo diskutil mount disk4s1                # mounts as /Volumes/EFI
sudo ditto dist/EFI-X1C /Volumes/EFI/EFI
cd /Volumes/EFI/EFI/OC && sudo mv config.plist config-accel.plist \
    && sudo mv config-install.plist config.plist && cd -
sudo find /Volumes/EFI -name '._*' -delete -o -name .DS_Store -delete
sudo diskutil unmount /Volumes/EFI
```

`ditto`, not `cp -R`: both write `._` AppleDouble sidecars onto FAT32, hence the `find`.

**4. Install macOS.** Boot the USB (F12), install as usual. It reboots two or three times; leave the USB
in and pick the right OpenCore entry each time. Expect it to be slow and 1024×768 — there is no
acceleration yet.

**5. Build and install the acceleration stack, on the ThinkPad**, after macOS is up:

```sh
xcode-select --install          # Command Line Tools, once
zsh install.sh                  # downloads Apple's 16.0.32 bundles, builds, installs
```

**6. Switch to the accelerated config** and use the NootedGreen you just built:

```sh
sudo diskutil mount disk0s1                # the INTERNAL ESP once macOS is installed
sudo cp -R /Volumes/EFI/EFI "$HOME/EFI-backup-$(date +%F)"
sudo cp -R build/NootedGreen.kext /Volumes/EFI/EFI/OC/Kexts/
cd /Volumes/EFI/EFI/OC && sudo mv config.plist config-install.plist \
    && sudo mv config-accel.plist config.plist && cd -
sudo find /Volumes/EFI -name '._*' -delete -o -name .DS_Store -delete
```

Reboot, approve the system extension if macOS asks, and check:

```sh
kmutil showloaded | grep -iE 'nootedgreen|hookcase'
system_profiler SPDisplaysDataType | grep -i metal
ioreg -rc IntelAccelerator -d1 | grep xe-topo        # 24584 = (96 << 8) | 8
```

If the internal panel comes up black, add `ngreenddifunc=0x8a010002` to boot-args — that forces this
panel's real 2-lane value explicitly. Keep a copy of the pre-acceleration EFI to fall back to.

Build it **on the ThinkPad**, not on another Mac: the shader compiler links against the running
system's `libLLVM`, and the export set differs even between two Tahoe builds that report the same
`GPUCompiler` version. If you must cross-build, `tools/dump-llvm-exports.sh` captures the target's
symbol list and `XE_LLVM_EXPORTS=<file> zsh macos/build-all.sh <sle>` links against it — verified to
produce byte-identical output.

**7. Verify before every boot** — a missing file gives only "failed to open valid OpenCore image", which
names nothing:

```sh
python3 -I verify-efi.py dist/EFI-X1C      # resolves every path the config references
```

### Audio

AppleALC is necessary but not sufficient on Tahoe 26.7.1, because **`AppleHDA` was removed from the
OS**. You also need to:

1. install the **KDK matching 25G241**, and
2. install `AppleHDA` from it — [MyKextInstaller](https://github.com/MyBeautifulWorld/MyKextInstaller)
   does this.

This EFI injects `layout-id = 11` on `PciRoot(0x0)/Pci(0x1f,0x3)`. AppleALC 1.9.8 ships exactly three
layouts for ALC287 — `11` (generic), `21` (Lenovo Yoga Slim 7), `13` (Lenovo Legion 5 Pro) — so if 11 is
wrong the list is short. `python3 -I set-layout-id.py <config.plist> 21` switches, or `alcid=21` in
boot-args overrides for a single test boot.

The internal **mic array will not work**: it is DMIC behind the audio DSP rather than on the codec. The
**headset mic** does.

### Trackpad

It works, including gestures, but only with **`-vi2c-force-polling`** in boot-args, which is what this
EFI ships. That is a workaround, not a fix, and it is honest about what it costs: extra CPU wakeups on a
15 W part, and upstream abandoned polling on the XPS because the I²C bus eventually got stuck
(`Timeout waiting for bus not to be busy`).

What is known: polling working **proves the fault is interrupt delivery**, and clears the bus and power
management. What is not known is which interrupt the firmware handed us — `TPD0._CRS` returns a GpioInt
on `\_SB.GPI0` when the firmware variable `TPDM` is zero, and a plain APIC line otherwise. One root
kernel log would say which, and from there the fix is either forcing the GpioInt path (scoped with
OpenCore's `Base`) or looking at `SHPO`/HOSTSW_OWN pin ownership. Patches welcome.

---

## Porting this to a different laptop

This repo is a port of a port, so the method is the point. It is written up in full in
[`docs/X1C-G11-PORT.md`](docs/X1C-G11-PORT.md); the short version:

**1. Collect your hardware's facts first. Do not reuse anyone's constants.**

```sh
sudo bash hw/collect-linux.sh      # from an Ubuntu live USB -> hw/linux/
```

That captures what every machine-specific decision here was made from: `lspci -nnvv` (your iGPU
device-id and revision), `i915_gpu_info` (fused EU/subslice config), `i915_frequency_info` (**RP0/RP1/RPn**
— upstream's GT frequency floor is wrong on any part with a different RP0), `i915_display_info` and the
eDP debugfs (panel resolution, **lane count**, link rate), `intel_reg` reads of
`TRANS_DDI_FUNC_CTL_A`/`PIPECONF`/PWM, `backlight` (period, for `ngreenblmax`), the HDA codec, the I²C-HID
touchpad, MSR `0xE2` for CFG Lock, and `acpidump`. Also run **SSDTTime** against your own DSDT and
**USBToolBox** in Windows for the port map.

**2. Classify every upstream component before changing it.** The audit splits them four ways —
GPU-generic (keep), Dell-specific (replace), panel-specific (parametrize), A7A0/1360P-specific (extend)
— with `file:line` for each. Highlights that will bite you:

| | |
|---|---|
| `src/NootedGreen/kern_gen11.cpp` `hwSetMode`, `adlpDcExit` | hardcoded panel/lane/PP_CONTROL literals — see XE-FWSNAP above |
| `kern_gen11.cpp` `ngreengtfreq` default | your RP0, not 1500 |
| `kern_gen11.cpp` `getOSInformation` | the connector table: eDP + one external DP, 3 framebuffers |
| `kern_gen11.cpp` `gTopoSs`/`gTopoL3` | fine at 96 EU; 80 EU parts need `ngreen-eu=80 ngreen-l3=6` |
| `tools/XeShim/Info.plist` | `IOPCIMatch` — add your device-id or brightness and the register tools are dead |
| `EFI/OC/ACPI/*` and every ACPI patch | all of it is the other machine's DSDT. Regenerate, never copy |
| **the whole of `macos/`** | **needs no changes** — the user-space Metal stack is device-id agnostic |

That last row is the good news: the hard part of this project ports for free.

**3. Expect the firmware, not the hardware, to be the problem.** The single hardest bug here was
`SetupVirtualMap`, a quirk with no deterministic answer by OpenCore's own documentation. Read the logs
before changing config — and remember that OpenCore's file log ends at `EXITBS:START` even when the boot
succeeds.

---

## Boot-args

```
-ngreentglwithgfx -allow3d -disablegfxfirmware ngreen-dmc=adlp -ngreenv189 -ngreenkeepefi
-ngreenxefix -ngreenfixbootmode amfi_get_out_of_my_way=1 ngreenSched=4 ngreenV142=3 gfxrst=1
ngreengtfreq=1300 -vi2c-force-polling -v keepsyms=1 debug=0x100
```

Differences from upstream, and why:

| | |
|---|---|
| `ngreengtfreq=1300` | this part's RP0 is 1300 MHz, not the i7-1360P's 1500 |
| no `ngreenblmax=17777` | upstream's value was measured against a 96000 PWM period; this panel's is 19393, so it needs measuring here |
| `-vi2c-force-polling` | the trackpad workaround above |
| no `IGLogLevel=3` | Apple driver logging, not needed |

**Lilu truncates boot-args at about 228 characters.** Every `ngreen*` flag is inside the first 200, which
is deliberate — the kernel-only arguments go last, because the kernel parses boot-args from its own
1024-byte buffer and does not care.

---

## Layout

```
EFI-X1C/                 the OpenCore EFI for THIS machine (serials blank — generate your own)
  config.plist             accelerated
  config-install.plist     NootedGreen off, for installing macOS
EFI/                     upstream's EFI, for the Dell XPS 13 Plus 9320 — do NOT boot this on a ThinkPad
make-efi-x1c.sh          builds dist/EFI-X1C with your SMBIOS + fetches HfsPlus.efi
verify-efi.py            checks every file a config references actually exists
enable-input.py          toggle the trackpad stack (VoodooI2C + XOSI + the _OSI rename)
set-layout-id.py         switch the AppleALC ALC287 layout-id
acpi/SSDT-X1C-I2C0PS3.*  the I2C0 _PS3 override, with its reasoning in the header
patches/x1c-*.diff       this fork's NootedGreen/XeShim changes, each citing its audit finding
docs/X1C-G11-PORT.md     the full audit: every upstream component classified, with file:line
CHANGELOG-X1C.md         what was changed, when, and whether hardware confirmed it
hw/                      the dumps the whole port was derived from (scrubbed, see below)
tools/collect-logs.sh    one-shot read-only diagnostics with an on-screen summary
tools/scrub-hw.py        what was used to sanitise hw/ for publication
```

Everything else is upstream's, unchanged.

### About `hw/`

These are real dumps from the machine, kept because they are what makes the port auditable rather than
a pile of magic numbers. They were scrubbed with `tools/scrub-hw.py` before publication: the **MSDM ACPI
table was deleted** and its block removed from `acpidump.txt` (it embeds the machine's Windows OEM
product key in clear text), and all **MAC addresses were masked**. If you publish your own dumps, run
that script first — and check it yourself rather than trusting it.

---

## Credits

Upstream does the genuinely hard work:

* **[JulioNectar/Hackintosh-XPS13Plus-IrisXe-Tahoe](https://github.com/JulioNectar/Hackintosh-XPS13Plus-IrisXe-Tahoe)** — the Tiger-Lake-on-Raptor-Lake stack this is a port of.
* **NootedGreen** by StezzaPilot ([sgiammori/NootedGreen](https://github.com/sgiammori/NootedGreen)) — the Lilu plugin and the source of the 16.0.32 driver bundles.
* **WhateverXe** / OCLP fork by b00t0x, and jkbuha's WhateverXe work.
* **acidanthera** — OpenCore, Lilu, WhateverGreen, VirtualSMC, AppleALC, MacKernelSDK.
* **OpenIntelWireless** (itlwm/AirportItlwm, IntelBluetoothFirmware), **VoodooI2C**, **USBToolBox**,
  **1Revenger1** (ECEnabler), **laobamac** (AirportItlwm-Tahoe).

No Apple binaries are included in this repository. `HfsPlus.efi`, Apple's GPUDriversIntel 16.0.32
bundles and `AppleHDA` are all fetched or installed by you, on your own machine.

## License

[Thou Shalt Not Profit License 1.0](LICENSE), inherited from NootedGreen, which this project derives
from. Third-party kexts in `EFI-X1C/` keep their own licenses — see [NOTICE.md](NOTICE.md).
