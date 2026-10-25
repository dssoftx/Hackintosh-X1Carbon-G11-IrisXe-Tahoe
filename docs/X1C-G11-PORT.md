# Port audit — Dell XPS 13 Plus 9320 (i7-1360P / A7A0) → Lenovo ThinkPad X1 Carbon Gen 11 (i7-1355U / A7A1)

Phase 0 of the port. **No code changed.** Upstream read at commit `0ad1bc5`, work branch `x1c-g11`.

Every component of the upstream tree is classified:

| | class | meaning |
|---|---|---|
| **(a)** | GPU-generic | keep unchanged |
| **(b)** | Dell-specific | must be replaced |
| **(c)** | panel/display-specific | must be parametrized |
| **(d)** | A7A0 / 1360P-specific | must be extended for A7A1 / 1355U |

Line references are to this tree (`git rev-parse HEAD` = the branch point). Hardware claims cite `hw/`.

---

## 1. Hardware baseline

Measured from the dumps already in `hw/`. **Nothing below is assumed from the Dell.**

| | XPS 13 Plus 9320 (upstream) | X1 Carbon Gen 11 (target) | source |
|---|---|---|---|
| CPU | i7-1360P, RPL-P, 4P+8E / 16T, 28 W | **i7-1355U, RPL-U, 2P+8E / 12T**, 15 W, family 6 model 186 (0xBA) stepping 3 | `hw/linux/lscpu.txt` |
| iGPU | 8086:**A7A0** rev ? | 8086:**A7A1** rev **0x04**, subsys `17aa:2315` | `hw/linux/lspci-nnvv.txt:1-2`, `hw/linux/i915_gpu_info.txt` (PCI ID 0xa7a1, PCI Revision 0x04) |
| i915 platform | ALDERLAKE_P | ALDERLAKE_P, **subplatform 0x5 (RPL-U)**, "integrated display version **13.00** stepping **E0**" | `hw/linux/i915_gpu_info.txt`, `hw/linux/dmesg.txt:1103` |
| GT config | 96 EU | **1 slice, 6 subslices (mask 0x3f), 16 EU/subslice, 96 EU total**, no subslice/EU power gating | `hw/linux/i915_gpu_info.txt:146-160` |
| GT frequency | RP0 1500 MHz | **RP0 1300, RP1/RPe 300, RPn 100 MHz** | `hw/linux/i915_frequency_info.txt` |
| Panel | 3840×2400, 4 lanes HBR3 | **1920×1200 @60, 2 lanes, HBR (270000)**, 8 bpc, 300×190 mm, DPCD rev 1.4, **no DSC**, PSR2 supported, one fixed mode, LPSP capable | `hw/linux/i915_display_info.txt`, `hw/linux/edp-debugfs/*` |
| eDP port | DDI A / PHY A | **DDI A / PHY A, pipe A** | `hw/linux/i915_display_info.txt` (`[ENCODER:506:DDI A/PHY A]`) |
| Other outputs | 2× TB4 only | **HDMI-A-1 (DDI B / `i915 gmbus dpb`) + DP-1…DP-4 (TC1…TC4)**; physically 2× TB4 + HDMI 2.0b + 2× USB-A | `hw/linux/i915_display_info.txt`, `hw/linux/i2c-devices.txt` |
| Backlight | PCH PWM, period 96000 | **PCH PWM**, `intel_backlight` type `raw`, period/max **19393**, duty 6464 at dump time; **CPU PWM (0x48250/54/58) all zero** | `hw/linux/backlight.txt`, `hw/linux/intel_reg.txt` |
| Audio | 8086:51CA cAVS, **SoundWire only** (RT1316 amps + RT714 mic), no HDA codec, no jack | 8086:51CA cAVS with a **real HDA codec: Realtek ALC287** (`0x10ec0287`, subsys `0x17aa2315`), codec mask 5 (codec 0 = ALC287, codec 2 = HDMI); line_outs 0x14/0x17 (speakers), hp_out 0x21, analog Mic 0x19; 4 DMICs in NHLT | `hw/linux/asound-cards.txt`, `hw/linux/asound-codecs.txt`, `hw/linux/audio-dmesg.txt` |
| Wi-Fi/BT | — | **Intel AX211**, CNVi, PCI 8086:**51f1**; BT USB 8087:**0033** | `hw/linux/lspci-nnvv.txt:562`, `hw/linux/wifi-bt-dmesg.txt`, `hw/linux/lsusb-v.txt` |
| Storage | — | KIOXIA XG8 `1e0f:0010` at **04:00.0, directly visible → VMD appears OFF** | `hw/linux/lspci-nnvv.txt:790` |
| Touchpad | Elan I2C + piezo haptics + touchscreen | **ELAN067C (04F3:31F9), I2C-HID v1.00 on i2c-0 = PCI 00:15.0**; ACPI `\_SB.PC00.I2C0.TPD0`, `_CID = PNP0C50`; **no touchscreen, no haptics** | `hw/linux/input-devices.txt`, `hw/linux/i2c-devices.txt`, `hw/acpi/oem/DSDT.aml` (TPD0) |
| Keyboard/pointer | — | **i8042 PS/2** (PNP0303 KBD + PNP0F13 MOU) + **TPPS/2 Synaptics TrackPoint** on serio1 | `hw/linux/dmesg.txt:791-794`, `hw/linux/input-dmesg.txt:7-8` |
| Hotkeys / EC | Dell SMM | **INTC1070 (Intel HID events)** + `thinkpad_acpi` (fan, battery thresholds, rfkill); BIOS N3XET64W 1.39, EC N3XHT44W | `hw/linux/dmesg.txt:1060,1077-1093` |
| Camera | OV01A10 behind IPU6 (**no macOS driver**) | **plain UVC: Bison 5986:2145 "Integrated RGB Camera"** | `hw/linux/lsusb-v.txt` |
| Fingerprint | Goodix 27C6:63BC | **Synaptics Prometheus 06cb:00fc** | `hw/linux/lsusb-v.txt` |
| WWAN | — | Intel XMM7560 LTE at 08:00.0 (own USB hub, 9 ports) | `hw/linux/lspci-nnvv.txt:881`, `hw/windows/usb.json` |
| MSR 0xE2 | — | raw `0x74008008`, **bit15 set → locked → `AppleXcpmCfgLock = true` required** | `hw/linux/msr.txt` |
| GPIO | INTC1055 | **INTC1055** (`\_SB.GPI0._HID` returns it unless `GPHD == 1`), 4 communities at SBRG+0x6E/0x6D/0x6A/0x69 0000 | `hw/acpi/oem/DSDT.aml` (GPI0) |
| ACPI root | `\_SB.PC00` | **`\_SB.PC00`** (same), GFX0 `_ADR 0x00020000`, XHCI `0x00140000`, HDAS `0x001F0003`, LPCB `0x001F0000`, SBUS `0x001F0004`, CNVW `0x00140003` | `hw/acpi/oem/DSDT.aml` |

### Live display registers (the ones the port depends on)

From `hw/linux/intel_reg.txt`:

```
TRANSCONF_A          0x70008 = 0xc0000000   enabled + state  → -ngreenkeepefi premise HOLDS
TRANS_DDI_FUNC_CTL_A 0x60400 = 0x8a010002   DDI A, DP SST, 8 bpc, PORT_WIDTH=1 → 2 lanes
TRANS_HTOTAL_A       0x60000 = 0x0847077f   1920 active / 2120 total
TRANS_VTOTAL_A       0x6000c = 0x04eb04af   1200 active / 1260 total
TRANS_DATA_M1/N1     0x60030 = 0x7e71fa15 / 0x00800000
TRANS_LINK_M1/N1     0x60040 = 0x0004bfc0 / 0x00080000
DDI_BUF_CTL_A        0x64000 = 0x80000082
PP_STATUS            0xc7200 = 0x80000008
PP_CONTROL           0xc7204 = 0x0000006f   bit3 EDP_BLC_ENABLE **SET**
PP_ON_DELAYS         0xc7208 = 0x07d00001
PP_OFF_DELAYS        0xc720c = 0x01f40001
BLC_PWM_PCH_CTL1     0xc8250 = 0x80000000   PWM enabled
BLC_PWM_PCH_CTL2     0xc8254 = 0x00004bc1   period 19393
BLC_PWM_DUTY         0xc8258 = 0x00001940   duty 6464
CPU PWM 0x48250/54/58 = 0 / 0 / 0           → PCH PWM path confirmed
```

Decoding `0x8a010002` against i915's `TRANS_DDI_FUNC_CTL`: bit31 enable, `TGL_TRANS_DDI_SELECT_PORT` field
(bits 30:27) = 1 → port A, `MODE_SELECT` (bits 26:24) = 2 → DP SST, `BPC` (22:20) = 0 → 8 bpc,
`PORT_WIDTH` (3:1) = 1 → **2 lanes**. Upstream's hardcoded `0x8A000106` decodes the same except
`PORT_WIDTH` = 3 → **4 lanes**, plus bit 8 (`DP_VC_PAYLOAD_ALLOC`). This single difference is finding **c1**.

### Cross-check that validates upstream's ADL-P platform work

`hw/linux/i915_dmc_info.txt` reports `adlp_dmc.bin` v2.20 with `ssp base 0x00086fc0` and `htp 0x01240108`.
Upstream's `adlpDcExit` restores exactly `0x8F074 = 0x00086FC0` and `0x8F004 = 0x01240108`
(`src/NootedGreen/kern_gen11.cpp:4873-4878`). The ADL-P DMC/power-well/DKL-PHY init block is therefore
**platform** data, not Dell data → class (a). Same for the TGL-DMC branch, which we do not use
(`ngreen-dmc=adlp`).

---

## 2. (d) A7A0 / 1360P-specific — must be extended

Exhaustive grep for `A7A0`, `0xa7a0`, `a7a0`, device-id tables, stepping/revision checks, GT/EU/subslice
constants, frequency constants, CPU core/thread counts. Non-`hw/` hits only.

### d1 — `tools/XeShim/Info.plist:32` · **blocking**
```
<key>IOPCIMatch</key><string>0xa7a08086 0x9a498086</string>
```
XeShim is the register-access kext behind `tools/xectl`, `tools/xe-brilho`, `tools/xe-haptic`,
`tools/diagnostics/*`. On A7A1 it will not attach, so **brightness control and every register tool break**.
Needs `0xa7a18086` added. One-line, isolated.

### d2 — `src/NootedGreen/kern_model.hpp:126-127` · **no change needed**
```
{0xA7A0, "Intel Iris Xe Graphics"},
{0xA7A1, "Intel Iris Xe Graphics"},
```
A7A1 is already in the Raptor Lake branding table (`g12_rpl`). Cosmetic (`getBranding`) in any case.

### d3 — `src/NootedGreen/kern_gen11.cpp:6861-6864` · GT frequency floor
```c
pisoMhz = 1500;
PE_parse_boot_argn("ngreengtfreq", &pisoMhz, sizeof(pisoMhz));
if (pisoMhz > 1500) pisoMhz = 1500;
```
`1500` is the i7-1360P's RP0. **A7A1 RP0 = 1300 MHz** (`hw/linux/i915_frequency_info.txt`); RP1 = 300,
RPn = 100. The cap is a maximum, so `ngreengtfreq=1300` in the boot-args is a **zero-code fix** and is
what I propose for the first boots. The 1100 MHz floor mentioned in the brief is historical
(`CHANGELOG.md:68`); the shipped value is 1500 (`docs/KERNEL-PATCHES.md:91`, `docs/CATALOG.md:730,964`).

Note on power: the Dell is a 28 W part whose RP0 request is already clipped to ~1300 MHz by PL4/IccMax
(`docs/STATUS.md:7`). On a 15 W U-part a hard 1300 MHz floor under load is **more** aggressive relative to
the package budget, not less, so the floor is a thermal/throttle question to measure in stage 4, not to
guess. The machinery to do it properly already exists but is unused: `GEN6_RP_STATE_CAP`
(`src/NootedGreen/kern_gen11.hpp:533`), the `rp0_freq/rp1_freq/min_freq` struct
(`kern_gen11.hpp:981-985`) and `freq_max` (`kern_gen11.hpp:1425`). Deriving the default from
`RP_STATE_CAP` would make the patch correct on every part — a candidate upstreamable change, kept behind
the same boot-arg.

### d4 — `EFI/OC/config.plist` NVRAM `revcpuname = "13th Gen Intel(R) Core(TM) i7-1360P"`
RestrictEvents CPU-name spoof. Cosmetic (About This Mac) but wrong → `i7-1355U`.

### d5 — `Kernel/Emulate/Cpuid1Data` · **RESOLVED on hardware 2026-10-25: transfers unchanged**
```
Cpuid1Data 55060A00 00008000 00000000 00000000
Cpuid1Mask FFFFFFFF 0000FF00 00000000 00000000
```
Per `docs/STATUS.md` §E-cores: the 4P+8E part reports `logical_per_package = 64` in CPUID.1:EBX[23:16]
while OpenCore's `ProvideCurrentCpuInfo` patches the kernel's cores-per-package to 128, so xnu computed
`threads_per_core = 64/128 = 0` and divided by it in `cpu_thread_alloc`. Forcing EBX[23:16] = 0x80 made it
`128/128 = 1`.

That arithmetic is **independent of the real EBX value**, so the same spoof plausibly transfers to 2P+8E —
*provided* OC 1.0.8 still writes 128 for a 2+8 part. That is the one thing I will not assume. Two things to
confirm in Phase 2: (i) the real `CPUID.1:EBX[23:16]` on the 1355U, (ii) what OC 1.0.8's
`ProvideCurrentCpuInfo` writes for 2P+8E. Both are cheap to check (`cpuid -1 -l 1 -r` on Linux; OC source).
`AppleXcpmCfgLock = True` is already correct and matches `hw/linux/msr.txt`.

**Result (2026-10-25).** It transfers unchanged. `sysctl` on the installed system reports
`hw.ncpu = hw.physicalcpu = hw.logicalcpu = 12` with `machdep.cpu.brand_string` = i7-1355U, and
`sw_vers -buildVersion` = **25G241**, the exact build upstream's patches target. The mechanism is now
understood rather than guessed: OpenCore 1.0.8 sets cores-per-package to a **constant 128** for any CPU
where `ThreadCount % CoreCount != 0` (`CpuidPatches.c`, `IsAmpCpu`), which holds for the 1355U (12 % 10)
exactly as for the 1360P (16 % 12). It also patches `MSR 0x35` to `ThreadCount | ThreadCount`
(`0x000C000C` here, logged by OpenCore) and stubs out `_x86_validate_topology`. So `EBX[23:16] = 128`
gives `128 / 128 = 1` thread per core on both parts, and macOS presents all 12 threads as 12 cores with
no SMT.

### d6 — `CpuTopologyRebuild` · **recommendation: leave it OUT on this part**
With it absent, the installed system already reports a sane 12/12/12. Upstream's default mode regroups the
E-cores as extra SMT threads of the P-cores, which on a **2** P-core part would mean 6 threads per P-core -
far more lopsided than the Dell's 4 P-cores x 4. There is no evidence it would help here, and it is one more
early-boot variable. Revisit only if scheduling behaviour turns out to be poor.

### d6 — `CpuTopologyRebuild.kext` mode
Upstream runs 2.0.2 in default mode, which turns the 8 E-cores into extra SMT threads of the 4 P-cores
(`hw.physicalcpu = 4`, `hw.logicalcpu = 16`). With **2 P-cores**, the same default gives
`hw.physicalcpu = 2` and 6 threads per P-core — a much more lopsided grouping. `ctrsmt=off` (real topology)
is the conservative choice to try first on this part. Measure, do not inherit.

### d7 — GT topology defaults · **confirmed correct for A7A1, no change**
`src/NootedGreen/kern_gen11.cpp:28` → `gTopoSs = 12, gTopoL3 = 8`; byte-patch immediates at `:2302-2303`,
`getGPUInfo` values at `:6406-6423`; boot-args `ngreen-eu` / `ngreen-l3` at `:34-35`.

`hw/linux/i915_gpu_info.txt:146-160` gives **1 slice, 6 subslices (DSS), mask 0x3f, 16 EU each, 96 EU
total** — byte-for-byte the configuration upstream hardcodes (6 DSS × 2 = 12 traditional subslices,
8 EU/SS). So **no `ngreen-eu` / `ngreen-l3` boot-args**, unlike the 80 EU parts in issues #3/#4.
Open item: the L3 bank count is read from fuse `0x9118` on those parts and is **not** in our dump
(`hw/collect-linux.sh:69-73` does not read it) — see §6.2. Default 8 is what the other 96 EU/6 DSS part uses.

### d8 — `src/NootedGreen/kern_gen11.cpp:4493-4495` · platform-info GT numbers
```c
pinfo[1].fSliceCount  = 1;
pinfo[1].fmaxEuCount  = 8;
pinfo[1].fsubslices   = 10;
```
These are Apple `PlatformInfo` fields, not fuse-derived, and are already inconsistent with the 12-subslice
`getGPUInfo` override at `:6406`. Identical on both parts → **keep**, and do not "fix" them during the port.

### d9 — `src/NootedGreen/kern_green.cpp:252-264` · `isRealTGL` · **no change**
Detected from **CPU model** (0x8C/0x8D = real TGL), not from the GPU device-id. Our model is 0xBA, and the
`Cpuid1Data` spoof masks it to 0xA5 — `isRealTGL` is `false` either way, exactly as on the Dell. Every
`!isRealTGL` path therefore applies unchanged. `cpuModel` is stored and never used elsewhere
(`kern_green.hpp:291`).

### d10 — `install.sh:86-87` · **no change**
Checks for the **spoofed** `device-id = <499a0000>`, which is machine-independent.

### d11 — the whole of `macos/` · **no change**
The only identity references are to the 9A49 spoof: `macos/install-macos.sh:22`
(`IOPCIPrimaryMatch 0x9a498086`) and `macos/vadriver/patch-vadriver.py:15` (device-id whitelist). A grep of
`macos/` for `a7a0`, EU counts, subslices, resolutions and platform-ids returns nothing else. **The entire
user-space stack — patched Metal bundle, `libxedrv`, the IGC/LLVM shader-compiler bridge, the VA plugin —
ports with zero changes.** This is the single largest piece of good news in the audit.

---

## 3. (c) panel / display-specific — must be parametrized

### c1 — `src/NootedGreen/kern_gen11.cpp:11735-11737` · **highest-risk item in the port**
```c
if (!NGreen::callback->isRealTGL) {
    NGreen::callback->writeReg32(0x60400, 0x8A000106);  // TRANS_DDI_FUNC_CTL_A
```
`Gen11::hwSetMode` writes a **4-lane** `TRANS_DDI_FUNC_CTL_A` on **every mode set**, unconditionally —
it is *not* gated by `-ngreenkeepefi`. The comment at `:11730-11734` says why: it pre-matches the UEFI-trained
4-lane link so `paramsFbCompare` sees no lane change and leaves `DDI_BUF_CTL_A` alone.

On the X1C the UEFI-trained link is **2 lanes** and the live register is **`0x8a010002`**. Writing a 4-lane
value into a live 2-lane transcoder is precisely the failure upstream documents at `:4712-4716`
("changing lane count in `TRANS_DDI_FUNC_CTL` while the transcoder is live resets the DDI buffer and drops
the trained link") — and the comment at `:11732` even names Apple's own target for a 2-lane panel
(`0x8A010102`). Expected symptom: black internal panel at the first mode set.

Proposed fix (one isolated patch, correct on both machines): snapshot `0x60400` once at init, before Apple
touches it, and re-write **that** value instead of a literal; fall back to the literal if the snapshot is 0.
A boot-arg override (`ngreenddifunc=0x...`) for bring-up.

### c2 — `src/NootedGreen/kern_gen11.cpp:4698-4736` · hardcoded transcoder timing block
A register dump of **upstream NootedGreen's author's 2560×1600 panel** (see the comment at `:4714-4716`),
written into transcoder A: `0x60400 = 0x8A000106`, HTOTAL `0x0A9F09FF`, VTOTAL `0x06D5063F`, DATA/LINK M/N,
etc. Bypassed by `-ngreenkeepefi` (`:4717-4718`) when `TRANSCONF_A` bit 31 is set.

Our `0x70008 = 0xc0000000` → **bit 31 set → `keepefi` engages**, so this block is skipped. `-ngreenkeepefi`
is already in the shipped boot-args (`docs/KERNEL-PATCHES.md:12`) and **must stay**. I will additionally
record our measured values here as the non-`keepefi` fallback, so a `keepefi` miss degrades to *our* panel
rather than a stranger's.

### c3 — `src/NootedGreen/kern_gen11.cpp:4744-4745` · PPS values, inside the non-`keepefi` branch
`PP_CONTROL = 0x67`, `PP_ON_DELAYS = 0x07D00001`. Skipped under `keepefi`. Ours: `0x6f` and `0x07d00001`
(the delays match by coincidence). Same treatment as c2.

### c4 — `src/NootedGreen/kern_gen11.cpp:4882` · **unconditional `PP_CONTROL = 0x67` on every DC exit**
```c
// 4. Restore panel power sequencer.
writeReg32(0xC7204, 0x67u);  // PP_CONTROL
```
`adlpDcExit` runs on every DC5/DC6 exit and is **not** gated by `keepefi`. `0x67` clears bit 3
(`EDP_BLC_ENABLE`), which our firmware **sets** (`0xc7204 = 0x6f`). On the Dell the live value is 0x67, so
the write is a no-op there; on the X1C it changes panel state behind the driver's back.
`hw/linux/i915_dmc_info.txt` shows 1122 DC5→DC6 transitions in a few minutes of idle, so this executes
constantly. Fix: snapshot `PP_CONTROL` at init and restore the snapshot (or preserve bit 3). Also note this
function zeroes `EDP_PSR_CTL`/`EDP_PSR2_CTL` (`:4885-4886`) — fine, our panel's PSR2 is a Linux-side enable.

### c5 — `ngreenblmax=17777` (`EFI/OC/config.plist` boot-args, `docs/KERNEL-PATCHES.md:13`)
XE-BLR itself is generic: it reads the hardware PWM period at runtime and rescales duty
(`src/NootedGreen/kern_gen11.cpp:3866-3886`). But `ngreenblmax` is the *reference* duty Apple treats as
100%, derived empirically on the Dell: `bl hw=96000 apple=0 fw=0 duty=17741` → 17777
(`docs/HISTORY.md:884`). Our hardware period is **19393**, a factor of ~5 smaller, so the rescale behaviour
is entirely different. **Re-derive from the live `bl hw=… apple=… duty=…` counters on the X1C** (stage 5);
if Apple does write a period on this panel, `ngreenblmax` can be dropped altogether.

### c6 — `src/NootedGreen/kern_gen11.cpp:4471-4520` · connector / framebuffer table
```c
pinfo[1].fPipeCount = 3; fInfoPortCount = 3; fInfoFramebufferCount = 3;
connectors[0] = eDP/LVDS, busId 0, pipe 0, DDI-A
connectors[1] = DP,       busId 1, pipe 2, "external USB-C/Thunderbolt DP (TC1/DDI-D)"
connectors[2..3] = ConnectorDummy
```
Built for a machine with **one** external output family. The X1C exposes `HDMI-A-1` on **DDI B / combo
PHY B** (`i915 gmbus dpb`) *plus* TC1…TC4 (`hw/linux/i2c-devices.txt`, `hw/linux/i915_display_info.txt`),
and physically has 2× TB4 + HDMI 2.0b. Three framebuffers cannot express eDP + HDMI + 2 TB4 ports.

The comment at `:4487-4489` is an explicit warning: *"Multi-pipe reduction is whack-a-mole — every count
reduction reveals new cross-pipe NULL-deref sites in TGL FB internals"*. Upstream never tested external
displays at all (`docs/EXPERIMENTS.md:437-438` only *assesses* HDMI audio). So: **first boot keeps
connectors[1..3] as Dummy** (internal panel only, the known-good shape), and external outputs become a
separate, clearly-scoped experiment in stage 6 — not part of bring-up.

### c7 — `src/NootedGreen/Info.plist:25-32` + `src/NootedGreen/DisplayMergeNub.cpp:54-68` · panel identity
```
DisplayVendorID  17119999 (0x1053aff)
DisplayProductID 18841    (0x4999)
```
`DisplayMergeNub::probe` compares the provider `AppleDisplay`'s `DisplayVendorID`/`DisplayProductID`
against these and, on a match, promotes it to `AppleBacklightDisplay`. `0x1053aff` is not a representable
EDID manufacturer id, so this personality is almost certainly **inert on both machines** (the working
brightness slider comes from PNLF + XE-BLR, not from here). Two consequences:

1. If we ever *want* it, the values must be our panel's — which needs the **missing EDID** (§6.1).
2. **Latent panic risk:** `probe` dereferences `providerVendor`/`providerDevice` with no NULL check
   (`DisplayMergeNub.cpp:59-60, 68`). Any `AppleDisplay` lacking those properties panics the kernel. Nothing
   triggers it with only an internal panel; it is a real hazard for **stage 6 (external displays)**. Worth a
   two-line guard regardless of the port.

### c8 — `src/NootedGreen/kern_gen11.cpp:11356-11362` · `-ngreenmax2560`
Rejects modes wider than 2560 px. Irrelevant at 1920×1200; noted so nobody enables it looking for a fix.

### c9 — XE-BOOTHOLD timing (`xebbms`, default 600 ms; `docs/KERNEL-PATCHES.md` Display table)
Tuned for a 3840×2400 first frame at ~20 s. Our panel has ~1/4 the pixels, so the hold window and the
`gfxrst=1` rationale (an ~18 s boot-framebuffer copy at 4K) are both over-sized. Expect to retune, or find
it unnecessary. Not a correctness risk either way (`-xenobb` disables).

### c10 — `tools/xe-res.c` · **already generic; the brief's premise does not hold**
There is **no hardcoded resolution anywhere in `xe-res`**. It enumerates `CGDisplayCopyAllDisplayModes`
with `kCGDisplayShowDuplicateLowResolutionModes` and selects by index or nearest HiDPI point-width
(`tools/xe-res.c:11-53`). Nothing to parametrize.

The real Phase-3 question is different and worth stating plainly: a 1920×1200 panel is **not
retina-class**, so macOS will likely offer *no* HiDPI (2× = 960×600) modes at all, and the native mode is
already the sensible default. Phase 3 for this machine is therefore mostly *"confirm the mode list and the
brightness path"*, not *"generalize the tools"*. If HiDPI modes are wanted they have to be injected
(display-override plist / `fixbootmode` timing table), which is a new feature, not a port.

### c11 — `tools/xe-brilho.m:16-18` · **generic, transfers as-is**
PCH PWM `0xC8250/54/58` with the period read at runtime. Our machine is confirmed PCH PWM (CPU PWM
registers all zero, §1). Depends only on XeShim attaching → blocked by **d1**, nothing else.

### c12 — `EFI/OC/ACPI/SSDT-PNLF.aml` + the `PNLF to XNLF Rename` ACPI patch
The Dell DSDT contains a `PNLF`, hence the rename. **The X1C DSDT contains no `PNLF` device** — the only
`PNLF` in it is a 16-bit NVS *field* in a root-scope `Field` list (`DSDT.dsl:6309`, read at `:19095`), one of
`PNL0`…`PNLS`. So we add a fresh `SSDT-PNLF` (at `\_SB.PC00.GFX0.PNLF`, no path collision with the root
`\PNLF` field) and **must not carry the rename patch over**: it is a byte-level `PNLF` → `XNLF` replace and
would corrupt that NVS field name. `thinkpad_acpi`
reports "standard ACPI backlight brightness control" (`hw/linux/dmesg.txt:1082`), i.e. `_BCL`/`_BCM` on the
display device, which is the normal PNLF situation.

---

## 4. (b) Dell-specific — must be replaced

### b1 — `EFI/OC/ACPI/*` (12 SSDTs)
| upstream SSDT | X1C disposition |
|---|---|
| `SSDT-EC.aml` | regenerate — ours targets `\_SB.PC00.LPCB.EC`, which **has no `_STA`** (`hw/acpi/oem/DSDT.aml`), so SSDTTime's output (`hw/acpi/ssdttime/SSDT-EC.dsl`) is a no-op wrapper and the matching rename patch is disabled. Likely nothing needed beyond `SSDT-USBX`; decide in Phase 2. |
| `SSDT-USBX.aml` | replace with `hw/acpi/ssdttime/SSDT-USBX.aml` |
| `SSDT-PLUG-ALT.aml` | replace with `hw/acpi/ssdttime/SSDT-PLUG-ALT.aml` (64 `Processor` objects `C000…C063` → `\_SB.PR00…PR63`) |
| `SSDT-XOSI.aml` | replace with `hw/acpi/ssdttime/SSDT-XOSI.aml` (returns true through Windows 2022). **Required**: our `TPD0._CRS` branches on `OSYS < 0x07DC` (`hw/acpi/oem/DSDT.aml`) |
| `SSDT-RTCAWAC.aml` | replace with `hw/acpi/ssdttime/SSDT-RTCAWAC.aml` (`STAS = 1`); our DSDT has `Device (AWAC)` with `ACPI000E` |
| `SSDT-PNLF.aml` | write fresh — see **c12** |
| `SSDT-GPI0.aml` + `_STA`→`XSTA` patch | re-derive. Ours: `GPI0._STA` returns `0x0F` unless `GPHD == 1`, and `_HID` returns `INTC1055` on the same condition. If `GPHD != 1` **no patch is needed at all** → §6.4 |
| `SSDT-XPS-I2C.aml` + 6 renames | rewrite as `SSDT-X1C-I2C` — see **b3** |
| `SSDT-MCHC.aml` | re-target; our DSDT has no `MCHC` under `PC00` (there is `Device (MC)` at `_ADR 0`) |
| `SSDT-SBUS.aml` | re-target `\_SB.PC00.SBUS` (`_ADR 0x001F0004`) — exists, path is the same |
| `SSDT-ALS0.aml` | drop unless an ALS is confirmed (`SMCLightSensor` is already disabled upstream) |
| `SSDT-USB-Reset.aml` | re-derive from our RHUB |

### b0 — `Booter/Quirks/SetupVirtualMap` — **confirmed divergence from the Dell (2026-10-25)**
Upstream runs with `SetupVirtualMap = False` (`OCABC: ... VMAP 0`), which is also what Dortania recommends for
Alder Lake. On this ThinkPad firmware that value makes the machine **hang inside `ExitBootServices`** - the
kernel is never entered (dead Caps Lock, `cpus=1` makes no difference). `SetupVirtualMap = True` fixes it,
confirmed on hardware. OpenCore's own description matches exactly: *"Some types of firmware access memory by
virtual addresses after a `SetVirtualAddresses` call, resulting in early boot crashes... the need for this
quirk is determined by early boot failures."*

This is the first proven **firmware-level** (not hardware-level) difference between the two machines, and it
sits in a quirk family OpenCore documents as having "no definite approach even on similar systems". Keep every
other Booter quirk at upstream's value; the log shows them to be either needed (`ProtectUefiServices`:
`Recovering trashed GetMemoryMap pointer` x3) or inert (`DevirtualiseMmio`: `saved 0 KB`).

Note for future debugging: OpenCore's **file log always ends at `AAPL: #[EB|LOG:EXITBS:START]`**, because it
cannot write to the ESP after `ExitBootServices`. That line is therefore not a sign of failure - a successful
boot's log ends identically. Judge EBS-stage failures from the console and from whether the kernel responds
(Caps Lock), not from the log's last line.

### b2 — `EFI/OC/config.plist` ACPI `Patch` / `Delete` — all 11 + 1 are Dell
`GPI0 _STA to XSTA Rename`, `OSID to XSID`, `PNLF to XNLF`, `_OSI to XOSI`, six `XPS: …` I2C renames,
`XPS: Scope RHUB.HS08 to RHUB`, and `Delete SSDT xh_Dell_` (OemTableId `xh_Dell_`).

Two specific hazards to carry forward rather than copy:

* **`GPI0 _STA to XSTA` has `Count = 0` and no `TableSignature`** — it renames *every* matching
  `Method(_STA)` in *every* table. Our DSDT contains **106** `Method (_STA)` definitions. Whatever we end up
  needing must be bounded (`TableSignature = DSDT`, `Count = 1`, unique find bytes).
* **`Scope RHUB.HS08 to RHUB`** exists because a `Scope` targets a conditionally-defined port. On the X1C
  **every** `HSxx`/`SSxx` is conditional (`If (CondRefOf (PU2C))` → `Scope (_SB.PC00.XHCI.RHUB)` →
  `If ((N <= PU2C))`), and the DSDT itself has `Scope (_SB.PC00.XHCI.RHUB.HS10)`. With USBToolBox we inject
  nothing through ACPI, so this is probably moot — but it must be checked against a real OpenCore ACPI load,
  not assumed.

`_OSI to XOSI` is the one patch that carries over unchanged in intent (with our own SSDT-XOSI).

### b3 — `acpi/SSDT-XPS-I2C.dsl` → new `SSDT-X1C-I2C`
Upstream: touchscreen `TPL0` on `I2C0` (`_ADR 0x00150000`) and touchpad `TPD0` on `I2C1`
(`_ADR 0x00150001`), with `_INI`/`_CRS` pass-through wrappers and injected static `_ADR`s.

X1C reality (`hw/acpi/oem/DSDT.aml`, `hw/linux/i2c-devices.txt`):
* touchpad is **`\_SB.PC00.I2C0.TPD0`** — i2c-0 = PCI **00:15.0**;
* `_HID` is the placeholder `"XXXX0000"`, filled in at runtime by `UHMS()` from the `ITML` table
  (`04F3:31F9 → "ELAN067C"`), and `_CID = "PNP0C50"` → **VoodooI2CHID matches on `_CID`**;
* `_CRS` returns `ConcatenateResTemplate (I2CM (I2CX, BADR, SPED), SBFG)` when `TPDM == 0`, where `SBFG`
  carries a **GpioInt on `\_SB.GPI0`**; otherwise `SBFI` (an Extended Interrupt / APIC descriptor). So the
  GPIO-vs-APIC choice is already firmware-selectable → §6.4;
* `I2C0._ADR` is a **Method**, not a Name (as on the Dell) — the same injected-`Name(_ADR)` treatment may be
  needed, to be decided against a real boot;
* `I2C1` holds `TPL1` (the touchscreen slot) with an `ITML` listing ELAN901C/WACF2200 parts — **unpopulated
  on this machine**; `i2c-1` (PCI 00:19.0) carries only `NXP1001` (NFC). So **no touchscreen support at
  all**, and `TPL*` must be left alone.

`VoodooGPIO` needs the same `INTC1055` fix upstream already carries
(`build-voodoogpio.sh`, `patches/voodoogpio-tigerlakelp-start.diff`) — our `GPI0._HID` is also `INTC1055`
with the same four communities, so that part is **(a)**, reusable as-is.

### b4 — Kexts to drop / add
* **Drop:** `SMCDellSensors.kext` (already `Enabled = false`), `SMCLightSensor.kext` (ditto, pending ALS).
* **Add:** `AppleALC.kext` (→ b6), a ThinkPad EC/hotkey kext (`YogaSMC` family and/or `ECEnabler`), and a
  real `UTBMap.kext`.
* **Keep but re-verify:** `XHCI-unsupported.kext` (for 8086:51ED), `BrightnessKeys.kext` (→ b5),
  `AirportItlwm.kext` — its `IOPCIPrimaryMatch` **does** contain `0x51F18086`, so our AX211 is covered on
  paper.

### b5 — brightness keys
Upstream's known problem is Dell-specific: *"the EC still raises events but the Dell SMM does not report
brightness (no `Notify(LCD)`)"* (`docs/STATUS.md`), worked around with `xe-brilho daemon` bound to F6/F7.
The X1C path is completely different — `INTC1070` (Intel HID events) plus `thinkpad_acpi`
(`hw/linux/dmesg.txt:1060,1077-1093`). So this is a **fresh evaluation**, not an inherited bug. The
`xe-brilho daemon` fallback still works regardless (it drives the PWM directly).

### b6 — the entire audio stack is Dell-specific, and the X1C has it **much** easier
`tools/AudShim` (253 KB), `tools/XeSpeakers`, `tools/audctl` (277 KB), `tools/audio/`,
`tools/build-blackhole.sh`: all of it exists because the XPS 13 Plus has **no HDA codec and no jack** —
speakers are RT1316 amps on SoundWire, mics an RT714, driven by booting Intel SOF firmware on the DSP.

The X1C has a **real Realtek ALC287 on the HDA link** behind the same `8086:51CA` controller
(`hw/linux/asound-codecs.txt`: `Codec: Realtek ALC287`, `Vendor Id: 0x10ec0287`,
`Subsystem Id: 0x17aa2315`; `hw/linux/audio-dmesg.txt`: `hda codecs found, mask 5`,
`snd_hda_codec_alc269 ehdaudio0D0: ALC287 … line_outs=2 (0x14/0x17) type:speaker, hp_outs=1 (0x21),
Mic=0x19`). Linux chose the SOF path by preference, not necessity — the legacy HDA path is what macOS uses.

So the plan is **AppleALC + a layout-id**, and **AudShim/XeSpeakers/audctl/BlackHole are not needed**.
Two honest caveats:
* the **4 DMICs are on the DSP/NHLT**, not on the codec, so the **internal microphone array will not work**
  through AppleALC; the **headset mic (node 0x19) should**;
* HDMI audio needs `hda-gfx` plus a working external-display path (c6), i.e. stage 6 territory.

The ALC287 layout-id candidates will be enumerated from AppleALC's own `Resources/ALC287` plist in Phase 2
rather than guessed here.

### b7 — `tools/xe-haptic*`, `tools/xe-toque*`, `tools/xe-hapticbar.m`
Elan piezo haptic touchpad (`04F3:31D1`) and the VoodooI2C touchscreen. **Neither exists on the X1C**
(ELAN067C is a conventional clickpad; no touchscreen in `hw/linux/input-devices.txt`). Drop from the port.

### b8 — `tools/fingerprint/*`
Goodix `27C6:63BC` via libfprint's `goodixmoc`. The X1C has a **Synaptics Prometheus `06cb:00fc`**
(`hw/linux/lsusb-v.txt`) — a different driver, different protocol. **Out of scope** for this port; say so
rather than half-port it.

### b9 — `tools/sleep/*`, `tools/xe-pblock/*`
Mechanism-generic (pmset profile, lid agent, power-button LaunchAgent), but every *conclusion* in
`docs/STATUS.md` about sleep is Dell firmware (S0ix-only, `_S3` hidden). **Our DSDT has `_S3`**
(`Name (_S3, Package (0x04))`, confirmed by disassembly of `hw/acpi/oem/DSDT.aml`) and the X1C BIOS has a
Linux/Windows sleep-state option — so S3 is a genuinely open
question here, not a closed one. Keep the tools, discard the conclusions, investigate in stage 7.

### b10 — naming / branding
`make-efi.sh:2,4,38-39` (`EFI-XPS13Plus-9320.zip`), `install.sh:44` banner, `README*.md`, doc titles.
Also `make-efi.sh:26` fixes `MacBookPro16,2` — fine for both (it is what `hwgva-id` expects, see
`docs/KERNEL-PATCHES.md` gvaboard), keep.

### b11 — USB port map
Upstream ships `UTBDefault.kext`, a catch-all `IOPCIClassMatch 0x0c030000&0xffff0000` personality with **no
port definitions at all** — i.e. no map, every port enabled (USBToolBox bypasses the 15-port limit, so this
works). We have a real export (`hw/windows/usb.json`), which reads:

```
PCH xHCI  8086:51ED  \_SB.PC00.XHCI  (16 ports)
  1  USB2  type-C   → USB3 companion 2   Type-C port 1 (USB2 half)
  3  USB2  type-C   → USB3 companion 4   Type-C port 2 (USB2 half)
  6  USB2            Synaptics UWP WBDI  (fingerprint)
  7  USB2          → companion 14        USB-A port
  8  USB2            Integrated RGB Camera
  9  USB2          → companion 13        USB-A port
 10  USB2            Intel Wireless Bluetooth
 13  USB3            USB-A (pair of 9)
 14  USB3            USB-A (pair of 7)
TB4 xHCI  8086:A71E  \_SB.PC00.TXHC  (5 ports)
  2  USB3  type-C   → companion 1        TB4 port 1 (SS half)
  4  USB3  type-C   → companion 3        TB4 port 2 (SS half)
WWAN      8086:7560  \_SB.PC00.RP01.PXSX (9 ports, XMM7560's own hub)
```
→ **9 PCH + 2 TXHC ports**, comfortably under 15 per controller. The USB-A ports were probed via a hub
("Brisket USB Hub"), so their companion pairing should be re-confirmed with a direct USB2 + USB3 device in
each port before the map is frozen.

### b12 — camera: a Dell limitation that simply does not exist here
`docs/STATUS.md` lists the camera as impossible (OV01A10 + Intel VSC + IPU6, no driver). The X1C's camera is
a **plain UVC device** (`5986:2145`, `Class=Video, Driver=uvcvideo`) → expected to work with no driver work.
Remove the limitation from the ported docs rather than inherit it.

---

## 5. (a) GPU-generic — keep unchanged

Listed explicitly so that any later diff touching these needs justification.

* **All of `macos/`** — see **d11**. Zero changes.
* **`EFI/OC/config.plist` `DeviceProperties`** — `PciRoot(0x0)/Pci(0x2,0x0)` is correct (iGPU is at
  **00:02.0**, `hw/linux/lspci-nnvv.txt`); `device-id = 499a0000`, `AAPL,ig-platform-id = 0000499a`,
  `rps-control`, `force-online`, `complete-modeset`, `enable-max-pixel-clock-override`, `hda-gfx`. No
  framebuffer connector patches are present. **Keep verbatim.**
* **`src/NootedGreen/Info.plist` main personality** — matches `IOResources`/`IOKit` (Lilu-plugin style),
  device-id agnostic.
* **ADL-P DMC + power wells + DKL PHY init** (`kern_gen11.cpp:4615-4826`, `adlpDcExit` at `:4850-4889`) —
  cross-validated against our live DMC registers (§1). Only the `PP_CONTROL` literal is (c4).
* **Lane-count hooks** `computeLaneCount` / `setupOptimalLaneCount` (`kern_gen11.cpp:3367-3417`) — read
  `DDI_BUF_CTL_A` live.
* **DPCD handling** V98/V99 passthrough (`kern_gen11.cpp:3466-3502`); the `caps->revision < 0x03` clamps
  (`kern_gen11.cpp:3501`, `kern_genx.cpp:362`) are **inert** here — our panel reports DPCD rev 1.4
  (`hw/linux/i915_display_info.txt`).
* **`fixbootmode` / `fbTimingsWorker`** (`docs/CATALOG.md:81`) — builds the timing table from the live CRTC
  via `hwCRTCToIODetailedTimingInformation`; no hardcoded panel.
* **Plane stride / tiling** (`kern_gen11.cpp:2866-2882`) — derived from the live `PIPE_SRCSZ` width; the
  2560-px `0xa0` literal is only a fallback and the whole block is off under `-ngreenxefix`.
* **Display-13 workarounds** `initPlatformWorkarounds` (`kern_gen11.cpp:4419-4470`) — `CLKGATE_DIS_5` bit 17,
  `CHICKEN_DCPR_1` bit 7, `PIPE_CHICKEN` bits 30/15/7, `XELPD_DISPLAY_ERR_FATAL_MASK`, and the explicit
  "ADL-P uses PCH PWM for backlight" decision at `:4425-4428` — all correct for display version 13.00 E0
  (`hw/linux/dmesg.txt:1103`) and for our PCH-PWM panel.
* **Everything in the command-submission, memory, render-compression and power sections of
  `docs/KERNEL-PATCHES.md`** — CSB guard, csbresync, XE-IDLEBOUND, SAMETAIL, ELSQ, XE-NOPOSH, BLITSCRATCH2,
  XE-POOL2, PAGEON GUARD, XE-RESFREE, XE-NOORPHAN, PLANES2, XE-NOCCS/NOAUX/NOCCS3/NODEPTH/RCPOLICY,
  XE-GVAID, XE-BLITALIGN, XE-BLITFIX, XE-PAGESYNC, XE-RC6FW, XE-GPUREC v1+v2, XE-NOGVA, XE-FMT, GAMMA,
  DPT/DBUF. None of these reference device-id, panel geometry or CPU topology.
* **`src/HookCase/`**, `build-hookcase.sh`, `build-nootedgreen.sh`, `build-voodoogpio.sh` + its patch.
* **`install.sh`** (the 9A49 check is spoof-side), `tools/xe-res.c`, `tools/xe-brilho.m`, `tools/xectl.c`,
  `tools/XeShim/XeShim.cpp` (only its `Info.plist` match string is (d1)), `tools/diagnostics/*`.
* **Kexts:** Lilu, WhateverGreen, VirtualSMC + SMCProcessor + SMCBatteryManager, NVMeFix, RestrictEvents,
  IntelBluetoothFirmware + IntelBTPatcher + BlueToolFixup, USBToolBox, VoodooI2C stack, VoodooPS2Controller,
  CpuTopologyRebuild (mode per **d6**), AirportItlwm.

---

## 6. Open questions — data gaps and decisions

These are the things I will **not** guess. Items 1–2 need one more Linux pass; 3–5 are quick checks; 6–8 are
measurements on the installed system.

1. **The eDP EDID is missing.** `hw/collect-linux.sh:44-51` copies `/sys/class/drm/*/edid` only
   `if [ -s "$p" ]`, and no `edid-*.bin` / `edid-*.txt` was produced, so the sysfs node read as empty. Yet
   the EDID clearly *was* parsed by i915 (physical size 300×190 mm, one DTD). Needed for: panel
   manufacturer/product id (c7), the full DTD/mode set (c10 HiDPI decision), and any display-override plist.
   **Re-collect**: `cat /sys/class/drm/card*-eDP-1/edid > edid-eDP-1.bin` as root, plus
   `edid-decode < edid-eDP-1.bin`.
2. **L3 bank count** — read fuse `0x9118` (`intel_reg read 0x9118`). The default `gTopoL3 = 8` is what the
   other 96 EU / 6 DSS parts use, and issues #3/#4 only needed 6 on **80 EU** parts, so 8 is the right
   starting assumption — but it is an assumption until the fuse is read.
3. **`CPUID.1:EBX[23:16]` on the 1355U** (`cpuid -1 -l 1 -r`, or `rdmsr`-free from Windows) **and** what
   OC 1.0.8's `ProvideCurrentCpuInfo` writes for a 2P+8E part. Decides d5.
4. **`GPHD` and `TPDM`** runtime values — `GPHD` decides whether `GPI0` needs any ACPI patch at all
   (b1/b2), `TPDM` decides GpioInt vs APIC interrupt for the touchpad (b3). Both are readable from Linux via
   the ACPI debugfs/`acpiexec`, or inferred from the touchpad's actual IRQ
   (`cat /proc/interrupts | grep -i i2c`, and `/sys/bus/i2c/devices/i2c-ELAN067C:00/.../irq`).
5. ~~BIOS settings~~ **answered 2026-10-25 by the owner:** Secure Boot **off**; **VT-d and VT-x on, with no
   toggle for either**; and **no BIOS option at all** for sleep states, Resizable BAR, Above-4G Decoding or
   CFG Lock. Consequences, all already applied to `EFI-X1C/OC/config-install.plist`:
   * VT-d on and not disableable → **`DisableIoMapper = True`** (rather than deleting DMAR).
   * CFG Lock not disableable → **`AppleXcpmCfgLock = True`**, which `hw/linux/msr.txt` independently
     requires (MSR 0xE2 bit 15 set).
   * No ReBar / Above-4G toggles → leave `ResizeAppleGpuBars = -1` and `UEFI/Quirks/ResizeGpuBars = -1`
     ("do not change"). Lenovo firmware enables Above-4G unconditionally on this platform, which is what
     macOS needs.
   * No sleep-state toggle → stage 7 cannot be influenced from the BIOS, so whether the firmware honours
     the `_S3` present in the DSDT has to be settled empirically. Not a blocker.
   VMD remains inferred-off from `lspci` (NVMe directly visible at 04:00.0) rather than read from the BIOS;
   if the installer cannot see the disk, that inference is the first thing to re-check.
6. **`ngreenblmax`** — from the live `bl hw=… apple=… duty=…` counters (c5).
7. **ALC287 layout-id** — enumerate from AppleALC's `Resources/ALC287` plist, then try candidates (b6).
8. **Internal mic** — expect *not* to work (DMICs behind the DSP, b6); confirm and document rather than
   chase.

---

## 7. Proposed plan

### Phase 1 — close the data gaps
A short second Linux pass for §6.1–6.4 (I will extend `hw/collect-linux.sh` rather than hand you ad-hoc
commands), plus the three BIOS readings in §6.5. Everything else Phase 1 asked for is **already in `hw/`**
and has been used above.

### Phase 2 — `EFI-X1C/` + A7A1 support
Commits, one concern each:

1. `docs: X1C G11 port audit (Phase 0)` — this file + `CHANGELOG-X1C.md`.
2. `hw: collect EDID, L3 fuse, CPUID leaf 1, touchpad IRQ` — collector additions for §6.
3. `acpi: SSDTs from the X1C DSDT` — EC/USBX/PLUG-ALT/XOSI/RTCAWAC from `hw/acpi/ssdttime/` + new PNLF,
   MCHC, SBUS, USB-Reset, `SSDT-X1C-I2C`; **no Dell paths**.
4. `EFI-X1C: config-install.plist` — NootedGreen off, `-v keepsyms=1`, `Resolution 1024x768`,
   `AppleXcpmCfgLock`, our ACPI set, our kext set, external outputs untouched.
5. `EFI-X1C: config.plist (accelerated)` — same + NootedGreen, boot-args with `ngreengtfreq=1300`,
   `ngreenblmax` left out until measured, `revcpuname` = i7-1355U.
6. `patches/x1c-xeshim-a7a1.diff` — d1 (`tools/XeShim/Info.plist:32`).
7. `patches/x1c-ddi-func-ctl-dynamic.diff` — c1 (`kern_gen11.cpp:11735`), snapshot-and-restore + boot-arg.
8. `patches/x1c-pp-control-preserve.diff` — c4 (`kern_gen11.cpp:4882`).
9. `patches/x1c-keepefi-fallback-timings.diff` — c2/c3, our measured values as the non-`keepefi` fallback.
10. `patches/x1c-displaymergenub-nullguard.diff` — c7 hazard, before stage 6.
11. `kexts: AppleALC, YogaSMC/ECEnabler, UTBMap; drop SMCDellSensors/SMCLightSensor` + a pinned
    `EFI-X1C/MANIFEST.md`.
12. `make-efi: X1C naming` (b10).

Every patch file will carry, in its header, the `file:line` finding from this document that justifies it.
Nothing outside those lines gets touched.

### Phase 3 — panel / display
Scoped by **c10**: confirm the mode list, settle `ngreenblmax` (c5), and keep the IPS/PCH-PWM path
(c11, already confirmed — the OLED/DPCD-AUX branch in the brief does not apply, panel is IPS per
`hw/README.md` and PCH PWM per §1). Panel-specific NootedGreen code goes behind boot-args (c1's
`ngreenddifunc`, the PP_CONTROL snapshot), so **one kext builds for both machines** — no fork.

### Phase 4 — staged test plan
The seven stages from the brief, each one change away from a known-good config, plus
`tools/collect-logs.sh`. One addition I want to insert: **stage 3 splits into 3a "does NootedGreen attach"
(`kextstat`, `ioreg -l | grep xe-`, `XeNG` log lines, `xe-topo` = 24584 expected for 96 EU / L3 8, i.e. (96<<8)|8) and 3b
"is the panel still lit after the first mode set"** — because c1 and c4 both fail exactly there, and
telling them apart from a generic "no acceleration" is otherwise painful.

---

## 8. Ground rules in force

* **Nothing here is tested.** Every statement about the X1C's behaviour under macOS is a prediction from
  Linux/Windows data and upstream's source. Hardware is the only authority.
* No change to the GPU-generic stack beyond what A7A1 support requires; every change cites its finding.
* Upstream license (Thou Shalt Not Profit 1.0) respected; no Apple binaries committed.
