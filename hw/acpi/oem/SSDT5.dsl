/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20260408 (64-bit version)
 * Copyright (c) 2000 - 2026 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/daniel/Desktop/X1C1360pTahoe/hw/acpi/oem/SSDT5.aml
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00002E20 (11808)
 *     Revision         0x02
 *     Checksum         0xFC
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "AdlP_Rvp"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200717 (538969879)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "AdlP_Rvp", 0x00001000)
{
    External (_SB_.CAGS, MethodObj)    // 1 Arguments
    External (_SB_.CPID, UnknownObj)
    External (_SB_.OSCO, UnknownObj)
    External (_SB_.PC00, DeviceObj)
    External (_SB_.PC00.GLAN, DeviceObj)
    External (_SB_.PC00.HDAS, DeviceObj)
    External (_SB_.PC00.HDAS.VDID, UnknownObj)
    External (_SB_.PC00.I2C0, DeviceObj)
    External (_SB_.PC00.I2C0.TPD0, DeviceObj)
    External (_SB_.PC00.I2C0.TPL1, DeviceObj)
    External (_SB_.PC00.I2C1, DeviceObj)
    External (_SB_.PC00.I2C1.TPL1, DeviceObj)
    External (_SB_.PC00.PEG0, DeviceObj)
    External (_SB_.PC00.PEG0.CEMP, MethodObj)    // 1 Arguments
    External (_SB_.PC00.PEG0.D3HT, FieldUnitObj)
    External (_SB_.PC00.PEG0.DHDW, MethodObj)    // 0 Arguments
    External (_SB_.PC00.PEG0.DL23, MethodObj)    // 0 Arguments
    External (_SB_.PC00.PEG0.DVES, MethodObj)    // 0 Arguments
    External (_SB_.PC00.PEG0.EHDW, MethodObj)    // 0 Arguments
    External (_SB_.PC00.PEG0.HBSL, FieldUnitObj)
    External (_SB_.PC00.PEG0.KBPW, IntObj)
    External (_SB_.PC00.PEG0.L23D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.PEG0.PCPB, IntObj)
    External (_SB_.PC00.PEG0.PEGP, DeviceObj)
    External (_SB_.PC00.PEG0.PEGP.PAHC, MethodObj)    // 0 Arguments
    External (_SB_.PC00.PEG0.PRMV, IntObj)
    External (_SB_.PC00.PEG0.PRTP, IntObj)
    External (_SB_.PC00.PEG0.RD3C, IntObj)
    External (_SB_.PC00.PEG0.SKOF, IntObj)
    External (_SB_.PC00.PEG0.SLOT, IntObj)
    External (_SB_.PC00.PEG0.TMCS, IntObj)
    External (_SB_.PC00.PEG0.VDID, UnknownObj)
    External (_SB_.PC00.PEG1, DeviceObj)
    External (_SB_.PC00.PEG1.PRMV, IntObj)
    External (_SB_.PC00.PEG1.PRTP, IntObj)
    External (_SB_.PC00.PEG1.RD3C, IntObj)
    External (_SB_.PC00.PEG1.SLOT, IntObj)
    External (_SB_.PC00.PEG1.VDID, UnknownObj)
    External (_SB_.PC00.PEG2, DeviceObj)
    External (_SB_.PC00.PEG2.PRMV, IntObj)
    External (_SB_.PC00.PEG2.PRTP, IntObj)
    External (_SB_.PC00.PEG2.RD3C, IntObj)
    External (_SB_.PC00.PEG2.SLOT, IntObj)
    External (_SB_.PC00.PEG2.VDID, UnknownObj)
    External (_SB_.PC00.RP01, DeviceObj)
    External (_SB_.PC00.RP01.DL23, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP01.L23D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP01.LASX, UnknownObj)
    External (_SB_.PC00.RP01.PRMV, IntObj)
    External (_SB_.PC00.RP01.PRTP, IntObj)
    External (_SB_.PC00.RP01.PWRG, UnknownObj)
    External (_SB_.PC00.RP01.PXSX, DeviceObj)
    External (_SB_.PC00.RP01.PXSX.ISQC, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP01.RD3C, IntObj)
    External (_SB_.PC00.RP01.SCLK, UnknownObj)
    External (_SB_.PC00.RP01.SLOT, IntObj)
    External (_SB_.PC00.RP01.TB2F, UnknownObj)
    External (_SB_.PC00.RP01.TB2R, UnknownObj)
    External (_SB_.PC00.RP01.TFDI, UnknownObj)
    External (_SB_.PC00.RP01.TN2B, UnknownObj)
    External (_SB_.PC00.RP01.TR2B, UnknownObj)
    External (_SB_.PC00.RP01.TR2P, UnknownObj)
    External (_SB_.PC00.RP01.VDID, UnknownObj)
    External (_SB_.PC00.RP01.WAKG, UnknownObj)
    External (_SB_.PC00.RP01.WAKP, UnknownObj)
    External (_SB_.PC00.RP01.WWEN, UnknownObj)
    External (_SB_.PC00.RP02, DeviceObj)
    External (_SB_.PC00.RP02.PRMV, IntObj)
    External (_SB_.PC00.RP02.PRTP, IntObj)
    External (_SB_.PC00.RP02.RD3C, IntObj)
    External (_SB_.PC00.RP02.SLOT, IntObj)
    External (_SB_.PC00.RP02.VDID, UnknownObj)
    External (_SB_.PC00.RP03, DeviceObj)
    External (_SB_.PC00.RP03.PRMV, IntObj)
    External (_SB_.PC00.RP03.PRTP, IntObj)
    External (_SB_.PC00.RP03.RD3C, IntObj)
    External (_SB_.PC00.RP03.SLOT, IntObj)
    External (_SB_.PC00.RP03.VDID, UnknownObj)
    External (_SB_.PC00.RP04, DeviceObj)
    External (_SB_.PC00.RP04.PRMV, IntObj)
    External (_SB_.PC00.RP04.PRTP, IntObj)
    External (_SB_.PC00.RP04.RD3C, IntObj)
    External (_SB_.PC00.RP04.SLOT, IntObj)
    External (_SB_.PC00.RP04.VDID, UnknownObj)
    External (_SB_.PC00.RP05, DeviceObj)
    External (_SB_.PC00.RP05.PRMV, IntObj)
    External (_SB_.PC00.RP05.PRTP, IntObj)
    External (_SB_.PC00.RP05.RD3C, IntObj)
    External (_SB_.PC00.RP05.SLOT, IntObj)
    External (_SB_.PC00.RP05.VDID, UnknownObj)
    External (_SB_.PC00.RP06, DeviceObj)
    External (_SB_.PC00.RP06.PRMV, IntObj)
    External (_SB_.PC00.RP06.PRTP, IntObj)
    External (_SB_.PC00.RP06.RD3C, IntObj)
    External (_SB_.PC00.RP06.SLOT, IntObj)
    External (_SB_.PC00.RP06.VDID, UnknownObj)
    External (_SB_.PC00.RP07, DeviceObj)
    External (_SB_.PC00.RP07.PRMV, IntObj)
    External (_SB_.PC00.RP07.PRTP, IntObj)
    External (_SB_.PC00.RP07.RD3C, IntObj)
    External (_SB_.PC00.RP07.SLOT, IntObj)
    External (_SB_.PC00.RP07.VDID, UnknownObj)
    External (_SB_.PC00.RP08, DeviceObj)
    External (_SB_.PC00.RP08.CEMP, MethodObj)    // 1 Arguments
    External (_SB_.PC00.RP08.D3HT, FieldUnitObj)
    External (_SB_.PC00.RP08.DHDW, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP08.DL23, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP08.DVES, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP08.EHDW, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP08.HBSL, FieldUnitObj)
    External (_SB_.PC00.RP08.KBPW, IntObj)
    External (_SB_.PC00.RP08.L23D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP08.PCPB, IntObj)
    External (_SB_.PC00.RP08.PRMV, IntObj)
    External (_SB_.PC00.RP08.PRTP, IntObj)
    External (_SB_.PC00.RP08.RD3C, IntObj)
    External (_SB_.PC00.RP08.SKOF, IntObj)
    External (_SB_.PC00.RP08.SLOT, IntObj)
    External (_SB_.PC00.RP08.TMCS, IntObj)
    External (_SB_.PC00.RP08.VDID, UnknownObj)
    External (_SB_.PC00.RP09, DeviceObj)
    External (_SB_.PC00.RP09.PRMV, IntObj)
    External (_SB_.PC00.RP09.PRTP, IntObj)
    External (_SB_.PC00.RP09.RD3C, IntObj)
    External (_SB_.PC00.RP09.SLOT, IntObj)
    External (_SB_.PC00.RP09.VDID, UnknownObj)
    External (_SB_.PC00.RP10, DeviceObj)
    External (_SB_.PC00.RP10.PRMV, IntObj)
    External (_SB_.PC00.RP10.PRTP, IntObj)
    External (_SB_.PC00.RP10.RD3C, IntObj)
    External (_SB_.PC00.RP10.SLOT, IntObj)
    External (_SB_.PC00.RP10.VDID, UnknownObj)
    External (_SB_.PC00.RP11, DeviceObj)
    External (_SB_.PC00.RP11.PRMV, IntObj)
    External (_SB_.PC00.RP11.PRTP, IntObj)
    External (_SB_.PC00.RP11.RD3C, IntObj)
    External (_SB_.PC00.RP11.SLOT, IntObj)
    External (_SB_.PC00.RP11.VDID, UnknownObj)
    External (_SB_.PC00.RP12, DeviceObj)
    External (_SB_.PC00.RP12.PRMV, IntObj)
    External (_SB_.PC00.RP12.PRTP, IntObj)
    External (_SB_.PC00.RP12.RD3C, IntObj)
    External (_SB_.PC00.RP12.SLOT, IntObj)
    External (_SB_.PC00.RP12.VDID, UnknownObj)
    External (_SB_.PC00.RP13, DeviceObj)
    External (_SB_.PC00.RP13.PRMV, IntObj)
    External (_SB_.PC00.RP13.PRTP, IntObj)
    External (_SB_.PC00.RP13.RD3C, IntObj)
    External (_SB_.PC00.RP13.SLOT, IntObj)
    External (_SB_.PC00.RP13.VDID, UnknownObj)
    External (_SB_.PC00.RP14, DeviceObj)
    External (_SB_.PC00.RP14.PRMV, IntObj)
    External (_SB_.PC00.RP14.PRTP, IntObj)
    External (_SB_.PC00.RP14.RD3C, IntObj)
    External (_SB_.PC00.RP14.SLOT, IntObj)
    External (_SB_.PC00.RP14.VDID, UnknownObj)
    External (_SB_.PC00.RP15, DeviceObj)
    External (_SB_.PC00.RP15.PRMV, IntObj)
    External (_SB_.PC00.RP15.PRTP, IntObj)
    External (_SB_.PC00.RP15.RD3C, IntObj)
    External (_SB_.PC00.RP15.SLOT, IntObj)
    External (_SB_.PC00.RP15.VDID, UnknownObj)
    External (_SB_.PC00.RP16, DeviceObj)
    External (_SB_.PC00.RP16.PRMV, IntObj)
    External (_SB_.PC00.RP16.PRTP, IntObj)
    External (_SB_.PC00.RP16.RD3C, IntObj)
    External (_SB_.PC00.RP16.SLOT, IntObj)
    External (_SB_.PC00.RP16.VDID, UnknownObj)
    External (_SB_.PC00.RP17, DeviceObj)
    External (_SB_.PC00.RP17.PRMV, IntObj)
    External (_SB_.PC00.RP17.PRTP, IntObj)
    External (_SB_.PC00.RP17.RD3C, IntObj)
    External (_SB_.PC00.RP17.SLOT, IntObj)
    External (_SB_.PC00.RP17.VDID, UnknownObj)
    External (_SB_.PC00.RP18, DeviceObj)
    External (_SB_.PC00.RP18.PRMV, IntObj)
    External (_SB_.PC00.RP18.PRTP, IntObj)
    External (_SB_.PC00.RP18.RD3C, IntObj)
    External (_SB_.PC00.RP18.SLOT, IntObj)
    External (_SB_.PC00.RP18.VDID, UnknownObj)
    External (_SB_.PC00.RP19, DeviceObj)
    External (_SB_.PC00.RP19.PRMV, IntObj)
    External (_SB_.PC00.RP19.PRTP, IntObj)
    External (_SB_.PC00.RP19.RD3C, IntObj)
    External (_SB_.PC00.RP19.SLOT, IntObj)
    External (_SB_.PC00.RP19.VDID, UnknownObj)
    External (_SB_.PC00.RP20, DeviceObj)
    External (_SB_.PC00.RP20.PRMV, IntObj)
    External (_SB_.PC00.RP20.PRTP, IntObj)
    External (_SB_.PC00.RP20.RD3C, IntObj)
    External (_SB_.PC00.RP20.SLOT, IntObj)
    External (_SB_.PC00.RP20.VDID, UnknownObj)
    External (_SB_.PC00.RP21, DeviceObj)
    External (_SB_.PC00.RP21.PRMV, IntObj)
    External (_SB_.PC00.RP21.PRTP, IntObj)
    External (_SB_.PC00.RP21.RD3C, IntObj)
    External (_SB_.PC00.RP21.SLOT, IntObj)
    External (_SB_.PC00.RP21.VDID, UnknownObj)
    External (_SB_.PC00.RP22, DeviceObj)
    External (_SB_.PC00.RP22.PRMV, IntObj)
    External (_SB_.PC00.RP22.PRTP, IntObj)
    External (_SB_.PC00.RP22.RD3C, IntObj)
    External (_SB_.PC00.RP22.SLOT, IntObj)
    External (_SB_.PC00.RP22.VDID, UnknownObj)
    External (_SB_.PC00.RP23, DeviceObj)
    External (_SB_.PC00.RP23.PRMV, IntObj)
    External (_SB_.PC00.RP23.PRTP, IntObj)
    External (_SB_.PC00.RP23.RD3C, IntObj)
    External (_SB_.PC00.RP23.SLOT, IntObj)
    External (_SB_.PC00.RP23.VDID, UnknownObj)
    External (_SB_.PC00.RP24, DeviceObj)
    External (_SB_.PC00.RP24.PRMV, IntObj)
    External (_SB_.PC00.RP24.PRTP, IntObj)
    External (_SB_.PC00.RP24.RD3C, IntObj)
    External (_SB_.PC00.RP24.SLOT, IntObj)
    External (_SB_.PC00.RP24.VDID, UnknownObj)
    External (_SB_.PC00.RP25, DeviceObj)
    External (_SB_.PC00.RP25.PRMV, IntObj)
    External (_SB_.PC00.RP25.PRTP, IntObj)
    External (_SB_.PC00.RP25.RD3C, IntObj)
    External (_SB_.PC00.RP25.SLOT, IntObj)
    External (_SB_.PC00.RP25.VDID, UnknownObj)
    External (_SB_.PC00.RP26, DeviceObj)
    External (_SB_.PC00.RP26.PRMV, IntObj)
    External (_SB_.PC00.RP26.PRTP, IntObj)
    External (_SB_.PC00.RP26.RD3C, IntObj)
    External (_SB_.PC00.RP26.SLOT, IntObj)
    External (_SB_.PC00.RP26.VDID, UnknownObj)
    External (_SB_.PC00.RP27, DeviceObj)
    External (_SB_.PC00.RP27.PRMV, IntObj)
    External (_SB_.PC00.RP27.PRTP, IntObj)
    External (_SB_.PC00.RP27.RD3C, IntObj)
    External (_SB_.PC00.RP27.SLOT, IntObj)
    External (_SB_.PC00.RP27.VDID, UnknownObj)
    External (_SB_.PC00.RP28, DeviceObj)
    External (_SB_.PC00.RP28.PRMV, IntObj)
    External (_SB_.PC00.RP28.PRTP, IntObj)
    External (_SB_.PC00.RP28.RD3C, IntObj)
    External (_SB_.PC00.RP28.SLOT, IntObj)
    External (_SB_.PC00.RP28.VDID, UnknownObj)
    External (_SB_.PC00.SAT0, DeviceObj)
    External (_SB_.PC00.SAT0.PRT0, DeviceObj)
    External (_SB_.PC00.SAT0.PRT1, DeviceObj)
    External (_SB_.PC00.SAT0.PRT2, DeviceObj)
    External (_SB_.PC00.SAT0.PRT3, DeviceObj)
    External (_SB_.PC00.SAT0.PRT4, DeviceObj)
    External (_SB_.PC00.SAT0.PRT5, DeviceObj)
    External (_SB_.PC00.SAT0.PRT6, DeviceObj)
    External (_SB_.PC00.SAT0.PRT7, DeviceObj)
    External (_SB_.PC00.UA02.BTH0, DeviceObj)
    External (_SB_.PC00.XDCI, DeviceObj)
    External (_SB_.PC00.XDCI.D0I3, UnknownObj)
    External (_SB_.PC00.XDCI.XDCB, UnknownObj)
    External (_SB_.PC00.XHCI, DeviceObj)
    External (_SB_.PC00.XHCI.MEMB, UnknownObj)
    External (_SB_.PC00.XHCI.RHUB, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS01, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS02, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS04, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS10, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.SS01, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.SS02, DeviceObj)
    External (_SB_.PSD0, MethodObj)    // 1 Arguments
    External (_SB_.PSD3, MethodObj)    // 1 Arguments
    External (_SB_.SHPO, MethodObj)    // 2 Arguments
    External (AUDD, FieldUnitObj)
    External (DG2P, UnknownObj)
    External (DG2R, UnknownObj)
    External (DGBA, FieldUnitObj)
    External (DGOP, FieldUnitObj)
    External (DGP2, UnknownObj)
    External (DGR2, UnknownObj)
    External (DTFS, IntObj)
    External (DTOE, IntObj)
    External (DTRC, IntObj)
    External (DTRD, IntObj)
    External (DTRO, IntObj)
    External (DVID, UnknownObj)
    External (EDMX, UnknownObj)
    External (GBED, UnknownObj)
    External (GBEP, UnknownObj)
    External (GBES, UnknownObj)
    External (GPDI, UnknownObj)
    External (GPLI, UnknownObj)
    External (GPLP, UnknownObj)
    External (GPLR, UnknownObj)
    External (HBCL, FieldUnitObj)
    External (HBPL, FieldUnitObj)
    External (IC0D, FieldUnitObj)
    External (IC1D, FieldUnitObj)
    External (IC1S, FieldUnitObj)
    External (P1WK, FieldUnitObj)
    External (P1WP, UnknownObj)
    External (PBRS, UnknownObj)
    External (PEP0, UnknownObj)
    External (PFCP, UnknownObj)
    External (PIN_.OFF_, MethodObj)    // 1 Arguments
    External (PIN_.ON__, MethodObj)    // 1 Arguments
    External (PIN_.STA_, MethodObj)    // 1 Arguments
    External (PINP.OFF_, MethodObj)    // 1 Arguments
    External (PINP.ON__, MethodObj)    // 1 Arguments
    External (PPDI, UnknownObj)
    External (PPLI, UnknownObj)
    External (PPLP, UnknownObj)
    External (PPLR, UnknownObj)
    External (PPSP, UnknownObj)
    External (PPSR, UnknownObj)
    External (PRST, UnknownObj)
    External (PS2P, UnknownObj)
    External (PSP2, UnknownObj)
    External (PSPE, UnknownObj)
    External (PSPR, UnknownObj)
    External (PSR2, UnknownObj)
    External (PSW2, UnknownObj)
    External (PSWP, UnknownObj)
    External (R8DC, UnknownObj)
    External (R8WR, UnknownObj)
    External (RCG0, IntObj)
    External (RCG1, IntObj)
    External (RPS0, IntObj)
    External (RPT0, IntObj)
    External (S0ID, UnknownObj)
    External (SATP, UnknownObj)
    External (SD2P, UnknownObj)
    External (SD2R, UnknownObj)
    External (SD5P, UnknownObj)
    External (SD5R, UnknownObj)
    External (SDP1, UnknownObj)
    External (SDP5, UnknownObj)
    External (SDPP, UnknownObj)
    External (SDR1, UnknownObj)
    External (SDR2, UnknownObj)
    External (SDR5, UnknownObj)
    External (SDRP, UnknownObj)
    External (SDS0, FieldUnitObj)
    External (SDS1, FieldUnitObj)
    External (SHSB, FieldUnitObj)
    External (SPCO, MethodObj)    // 2 Arguments
    External (SPCX, MethodObj)    // 3 Arguments
    External (SR2P, UnknownObj)
    External (SSDP, UnknownObj)
    External (SSDR, UnknownObj)
    External (STPP, UnknownObj)
    External (TBPE, IntObj)
    External (TEDC, IntObj)
    External (TOFF, IntObj)
    External (TPDT, UnknownObj)
    External (TPLS, UnknownObj)
    External (TPLT, UnknownObj)
    External (UAMS, UnknownObj)
    External (VMDE, UnknownObj)
    External (VRRD, FieldUnitObj)
    External (WBRS, UnknownObj)
    External (WFCP, UnknownObj)
    External (WLWK, UnknownObj)
    External (WPRP, UnknownObj)
    External (WRTO, UnknownObj)
    External (WWKP, UnknownObj)
    External (WWMT, UnknownObj)
    External (XDCE, UnknownObj)
    External (XDST, IntObj)
    External (XHPR, UnknownObj)

    If ((GBES != Zero)){}
    If ((WRTO != Zero))
    {
        Scope (\_SB.PC00.RP01)
        {
            Name (BRST, Package (0x02)
            {
                Zero, 
                Zero
            })
            BRST [Zero] = WBRS /* External reference */
            BRST [One] = PBRS /* External reference */
            Name (RSTG, Package (0x02)
            {
                Zero, 
                Zero
            })
            RSTG [Zero] = PRST /* External reference */
            RSTG [One] = WPRP /* External reference */
            Name (PWRG, Package (0x02)
            {
                Zero, 
                Zero
            })
            PWRG [Zero] = WFCP /* External reference */
            PWRG [One] = PFCP /* External reference */
            Name (WAKG, Zero)
            WAKG = WWKP /* External reference */
            Name (SCLK, 0x05)
            Name (WKEN, Zero)
            Name (WOFF, Zero)
            Name (OFEN, One)
            Name (ONEN, Zero)
            Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
            {
                If ((WRTO == 0x03))
                {
                    Return (0x04)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                Local0 = Zero
                If (((\_SB.CPID & 0x0FFF0FF0) == 0x000B06A0))
                {
                    Local0 = One
                }

                If ((((Local0 == One) && (Arg1 >= 0x03)) || ((
                    Local0 == Zero) && (Arg1 > Zero))))
                {
                    WKEN = Zero
                }
                ElseIf ((Arg0 && Arg2))
                {
                    WKEN = One
                }
                Else
                {
                }
            }

            If ((WWEN == 0x02))
            {
                PowerResource (PXP5, 0x00, 0x0000)
                {
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If ((VDID == 0xFFFFFFFF))
                        {
                            Return (Zero)
                        }

                        Return (PSTA ())
                    }

                    Method (_ON, 0, Serialized)  // _ON_: Power On
                    {
                        Local0 = Acquire (\WWMT, 0x03E8)
                        If ((Local0 == Zero))
                        {
                            If ((VDID == 0xFFFFFFFF))
                            {
                                Release (\WWMT)
                                Return (Zero)
                            }

                            If ((OFEN == One))
                            {
                                Release (\WWMT)
                                Return (Zero)
                            }

                            \_SB.SHPO (WAKG, One)
                            PON5 ()
                            L23D ()
                            If (CondRefOf (WOFF))
                            {
                                If ((WOFF != Zero))
                                {
                                    WOFF = Zero
                                    Sleep (TR2P)
                                }
                            }

                            OFEN = One
                            Release (\WWMT)
                        }
                    }

                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                    {
                        Local0 = Acquire (\WWMT, 0x03E8)
                        If ((Local0 == Zero))
                        {
                            If ((VDID == 0xFFFFFFFF))
                            {
                                Release (\WWMT)
                                Return (Zero)
                            }

                            If ((OFEN == Zero))
                            {
                                Release (\WWMT)
                                Return (Zero)
                            }

                            DL23 ()
                            POF5 ()
                            WKEN = Zero
                            OFEN = Zero
                            Release (\WWMT)
                        }
                    }
                }

                Method (PON5, 0, Serialized)
                {
                    \_SB.PSD0 (SLOT)
                    If (CondRefOf (WOFF))
                    {
                        If ((WOFF != Zero))
                        {
                            Local0 = ((Timer - WOFF) / 0x2710)
                            If ((Local0 < TFDI))
                            {
                                Sleep ((TFDI - Local0))
                            }

                            If (CondRefOf (PWRG))
                            {
                                \PIN.ON (PWRG)
                            }

                            Sleep (TN2B)
                            If (CondRefOf (BRST))
                            {
                                \PINP.OFF (BRST)
                            }

                            Sleep (TB2R)
                        }
                    }

                    If (CondRefOf (SCLK))
                    {
                        SPCX (SCLK, One, 0x0DAC)
                    }

                    \PIN.OFF (RSTG)
                }

                Method (POF5, 0, Serialized)
                {
                    \PIN.ON (RSTG)
                    \_SB.PSD3 (SLOT)
                    If (CondRefOf (SCLK))
                    {
                        SPCO (SCLK, Zero)
                        Sleep (0x10)
                    }

                    If ((WKEN == Zero))
                    {
                        Sleep (TR2B)
                        If (CondRefOf (BRST))
                        {
                            \PINP.ON (BRST)
                        }

                        Sleep (TB2F)
                        If (CondRefOf (PWRG))
                        {
                            \PIN.OFF (PWRG)
                        }

                        If (CondRefOf (WOFF))
                        {
                            WOFF = Timer
                        }
                    }

                    If (CondRefOf (WAKG))
                    {
                        If (((WAKG != Zero) && WKEN))
                        {
                            \_SB.SHPO (WAKG, Zero)
                        }
                        Else
                        {
                            \_SB.SHPO (WAKG, One)
                        }
                    }
                }

                Scope (PXSX)
                {
                    Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                    {
                        Local0 = Zero
                        While ((\_SB.PC00.RP01.LASX == Zero))
                        {
                            If ((Local0 > 0x14))
                            {
                                Break
                            }

                            Sleep (0x10)
                            Local0++
                        }
                    }

                    Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                    {
                    }
                }
            }
            Else
            {
                PowerResource (PXP, 0x00, 0x0000)
                {
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If ((VDID == 0xFFFFFFFF))
                        {
                            Return (Zero)
                        }

                        Return (PSTA ())
                    }

                    Method (_ON, 0, Serialized)  // _ON_: Power On
                    {
                        If ((VDID == 0xFFFFFFFF))
                        {
                            Return (Zero)
                        }

                        If ((ONEN == Zero))
                        {
                            Return (Zero)
                        }

                        \_SB.SHPO (WAKG, One)
                        If (CondRefOf (WOFF))
                        {
                            If ((WOFF != Zero))
                            {
                                Local0 = ((Timer - WOFF) / 0x2710)
                                If ((Local0 < 0x01F4))
                                {
                                    Sleep ((0x01F4 - Local0))
                                }
                            }
                        }

                        PON ()
                        L23D ()
                        If (CondRefOf (WOFF))
                        {
                            If ((WOFF != Zero))
                            {
                                WOFF = Zero
                                Sleep (0x01F4)
                            }
                        }

                        OFEN = One
                        ONEN = Zero
                    }

                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                    {
                        If ((VDID == 0xFFFFFFFF))
                        {
                            Return (Zero)
                        }

                        If ((OFEN == Zero))
                        {
                            Return (Zero)
                        }

                        DL23 ()
                        POFF ()
                        If ((WKEN == Zero))
                        {
                            \PINP.ON (BRST)
                            Sleep (0x02)
                            \PIN.OFF (PWRG)
                            If (CondRefOf (WOFF))
                            {
                                WOFF = Timer
                            }
                        }

                        If (CondRefOf (WAKG))
                        {
                            If (((WAKG != Zero) && WKEN))
                            {
                                \_SB.SHPO (WAKG, Zero)
                            }
                            Else
                            {
                                \_SB.SHPO (WAKG, One)
                            }
                        }

                        WKEN = Zero
                        OFEN = Zero
                        ONEN = One
                    }
                }
            }

            Method (PSTA, 0, NotSerialized)
            {
                If (CondRefOf (PWRG))
                {
                    If (!\PIN.STA (PWRG))
                    {
                        Return (Zero)
                    }
                }

                If (\PIN.STA (RSTG))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (One)
                }
            }

            Method (PON, 0, NotSerialized)
            {
                \_SB.PSD0 (SLOT)
                If (CondRefOf (WOFF))
                {
                    If ((WOFF != Zero))
                    {
                        If (CondRefOf (PWRG))
                        {
                            \PIN.ON (PWRG)
                            Sleep (PEP0)
                        }

                        \PINP.OFF (BRST)
                        Sleep (0x14)
                    }
                    Else
                    {
                        Stall (0x14)
                    }
                }
                Else
                {
                    Stall (0x14)
                }

                If (CondRefOf (SCLK))
                {
                    SPCX (SCLK, One, 0x0DAC)
                }

                If (CondRefOf (WOFF))
                {
                    If ((WOFF != Zero))
                    {
                        Sleep (0x64)
                    }
                }

                \PIN.OFF (RSTG)
            }

            Method (POFF, 0, NotSerialized)
            {
                \PIN.ON (RSTG)
                \_SB.PSD3 (SLOT)
                If (CondRefOf (SCLK))
                {
                    SPCO (SCLK, Zero)
                    If (\_SB.PC00.RP01.PXSX.ISQC ())
                    {
                        Sleep (0x1E)
                    }
                    Else
                    {
                        Sleep (0x10)
                    }
                }
            }

            Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
            {
                If ((WWEN == 0x02))
                {
                    Return (Package (0x01)
                    {
                        PXP5, 
                    })
                }
                Else
                {
                    Return (Package (0x01)
                    {
                        PXP, 
                    })
                }
            }

            If ((WRTO == 0x03))
            {
                Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                {
                    If ((WWEN == 0x02))
                    {
                        Return (Package (0x01)
                        {
                            PXP5, 
                        })
                    }
                    Else
                    {
                        Return (Package (0x01)
                        {
                            PXP, 
                        })
                    }
                }
            }
        }

        Scope (\_SB.PC00.XHCI.RHUB.HS04)
        {
            PowerResource (WWPR, 0x00, 0x0000)
            {
                Name (_STA, One)  // _STA: Status
                Method (_ON, 0, Serialized)  // _ON_: Power On
                {
                    _STA = One
                }

                Method (_OFF, 0, Serialized)  // _OFF: Power Off
                {
                    _STA = Zero
                }
            }

            Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                WWPR, 
            })
            Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
            {
                WWPR, 
            })
            Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
            {
                WWPR, 
            })
        }
    }

    If ((R8DC == Zero))
    {
        Scope (\_SB.PC00.RP08)
        {
            Name (RSTG, Package (0x02)
            {
                Zero, 
                Zero
            })
            RSTG [Zero] = PSPR /* External reference */
            RSTG [One] = PPSR /* External reference */
            Name (PWRG, Package (0x02)
            {
                Zero, 
                Zero
            })
            PWRG [Zero] = PSPE /* External reference */
            PWRG [One] = PPSP /* External reference */
            Name (WAKG, Zero)
            WAKG = PSWP /* External reference */
            Name (SCLK, 0x07)
            Name (WAKP, Zero)
            Name (WKEN, Zero)
            Name (WOFF, Zero)
            Name (LNRD, Zero)
            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If (CondRefOf (RD3C))
                {
                    If ((RD3C == 0x02))
                    {
                        Return (0x04)
                    }
                }

                Return (Zero)
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg1)
                {
                    WKEN = One
                }
                ElseIf ((Arg0 && Arg2))
                {
                    WKEN = One
                }
                Else
                {
                    WKEN = Zero
                }
            }

            Method (PPS0, 0, Serialized)
            {
            }

            Method (PPS3, 0, Serialized)
            {
            }

            PowerResource (PXP, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((VDID == 0xFFFFFFFF))
                    {
                        Return (Zero)
                    }

                    If ((GPRS () == Zero))
                    {
                        Return (Zero)
                    }

                    Return (PSTA ())
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    If (CondRefOf (SKOF))
                    {
                        SKOF = Zero
                    }

                    If ((VDID == 0xFFFFFFFF)){}
                    ElseIf ((GPRS () == Zero)){}
                    Else
                    {
                        PON ()
                        L23D ()
                    }
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    If (CondRefOf (SKOF))
                    {
                        If ((SKOF == One))
                        {
                            Return (Zero)
                        }
                    }

                    If ((VDID == 0xFFFFFFFF)){}
                    ElseIf ((GPRS () == Zero)){}
                    Else
                    {
                        DL23 ()
                        POFF ()
                    }
                }
            }

            Method (GPPR, 0, NotSerialized)
            {
                If (CondRefOf (WAKP))
                {
                    If (((WAKP != Zero) && (WKEN == Zero)))
                    {
                        Return (Zero)
                    }
                }

                If (CondRefOf (PCPB))
                {
                    If ((PCPB != Zero))
                    {
                        Return (Zero)
                    }
                }

                If (CondRefOf (DVES))
                {
                    If ((DVES () == Zero))
                    {
                        Return (Zero)
                    }
                }

                Return (One)
            }

            Method (GPRS, 0, NotSerialized)
            {
                If ((CondRefOf (PRTP) && (PRTP == 0x04)))
                {
                    If (CondRefOf (\HBCL))
                    {
                        If (((\HBCL != 0xFF) || (\HBCL <= 0x02)))
                        {
                            If ((\HBCL == SLOT))
                            {
                                Return (Zero)
                            }
                        }
                    }
                }

                If ((CondRefOf (PRTP) && (PRTP == 0x02)))
                {
                    If (CondRefOf (HBSL))
                    {
                        Local0 = ((SLOT - One) / 0x04)
                        If ((HBSL & (One << Local0)))
                        {
                            Return (Zero)
                        }
                    }

                    If ((CondRefOf (\HBCL) && CondRefOf (\HBPL)))
                    {
                        If (((\HBCL != 0xFF) || (\HBCL <= 0x02)))
                        {
                            If ((\HBPL == (SLOT - One)))
                            {
                                Return (Zero)
                            }
                        }
                    }
                }

                If (CondRefOf (RD3C))
                {
                    If ((RD3C != 0x02))
                    {
                        Return (Zero)
                    }
                }

                If (CondRefOf (PRMV))
                {
                    If ((PRMV == One))
                    {
                        Return (Zero)
                    }
                }

                Return (One)
            }

            Method (PSTA, 0, NotSerialized)
            {
                If (\PIN.STA (RSTG))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (One)
                }
            }

            Method (PON, 0, NotSerialized)
            {
                If (CondRefOf (CEMP))
                {
                    CEMP (One)
                }

                If (CondRefOf (WAKG))
                {
                    \_SB.SHPO (WAKG, One)
                    \_SB.CAGS (WAKG)
                }

                If (CondRefOf (DHDW))
                {
                    DHDW ()
                }

                If ((CondRefOf (PRTP) && (PRTP == 0x02)))
                {
                    \_SB.PSD0 (SLOT)
                }

                Name (SKPP, Zero)
                If (CondRefOf (KBPW))
                {
                    If ((KBPW == One))
                    {
                        SKPP = One
                    }
                }

                If ((SKPP == One)){}
                ElseIf (CondRefOf (PWRG))
                {
                    If (CondRefOf (WOFF))
                    {
                        If ((WOFF != Zero))
                        {
                            Local0 = ((Timer - WOFF) / 0x2710)
                            If ((Local0 < 0xC8))
                            {
                                Sleep ((0xC8 - Local0))
                            }

                            WOFF = Zero
                        }
                    }

                    \PIN.ON (PWRG)
                    Sleep (PEP0)
                }

                If (CondRefOf (SCLK))
                {
                    If (CondRefOf (TMCS))
                    {
                        SPCX (SCLK, One, TMCS)
                    }
                    Else
                    {
                        SPCO (SCLK, One)
                    }
                }

                \PIN.OFF (RSTG)
            }

            Method (POFF, 0, NotSerialized)
            {
                Local1 = (LNRD / 0x03E8)
                Sleep (Local1)
                \PIN.ON (RSTG)
                If ((CondRefOf (PRTP) && (PRTP == 0x02)))
                {
                    \_SB.PSD3 (SLOT)
                }

                If (CondRefOf (SCLK))
                {
                    If (CondRefOf (TMCS))
                    {
                        SPCX (SCLK, Zero, TMCS)
                    }
                    Else
                    {
                        SPCO (SCLK, Zero)
                    }
                }

                If (CondRefOf (PWRG))
                {
                    If ((GPPR () == One))
                    {
                        \PIN.OFF (PWRG)
                    }

                    If (CondRefOf (WOFF))
                    {
                        WOFF = Timer
                    }
                }

                If (CondRefOf (WAKG))
                {
                    If (((WAKG != Zero) && WKEN))
                    {
                        \_SB.SHPO (WAKG, Zero)
                    }
                }

                If (CondRefOf (EHDW))
                {
                    EHDW ()
                }

                If (CondRefOf (CEMP))
                {
                    CEMP (Zero)
                }
            }

            Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
            {
                Return (Package (0x01)
                {
                    PXP, 
                })
            }

            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
            {
                Return (Package (0x01)
                {
                    PXP, 
                })
            }

            Method (UPRD, 1, Serialized)
            {
                If ((Arg0 <= 0x2710))
                {
                    LNRD = Arg0
                }

                Return (LNRD) /* \_SB_.PC00.RP08.LNRD */
            }
        }
    }

    Scope (\_SB.PC00.PEG0)
    {
        Name (RSTG, Package (0x02)
        {
            Zero, 
            Zero
        })
        Name (PWRG, Package (0x02)
        {
            Zero, 
            Zero
        })
        RSTG [Zero] = SD2R /* External reference */
        RSTG [One] = SDR1 /* External reference */
        PWRG [Zero] = SD2P /* External reference */
        PWRG [One] = SDP1 /* External reference */
        Name (WAKG, Zero)
        WAKG = Zero
        Name (WAKP, Zero)
        Name (SCLK, Zero)
        Name (WKEN, Zero)
        Name (WOFF, Zero)
        Name (LNRD, Zero)
        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
        {
            If (CondRefOf (RD3C))
            {
                If ((RD3C == 0x02))
                {
                    Return (0x04)
                }
            }

            Return (Zero)
        }

        Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
        {
            If (Arg1)
            {
                WKEN = One
            }
            ElseIf ((Arg0 && Arg2))
            {
                WKEN = One
            }
            Else
            {
                WKEN = Zero
            }
        }

        Method (PPS0, 0, Serialized)
        {
        }

        Method (PPS3, 0, Serialized)
        {
        }

        PowerResource (PXP, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((VDID == 0xFFFFFFFF))
                {
                    Return (Zero)
                }

                If ((GPRS () == Zero))
                {
                    Return (Zero)
                }

                Return (PSTA ())
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If (CondRefOf (SKOF))
                {
                    SKOF = Zero
                }

                If ((VDID == 0xFFFFFFFF)){}
                ElseIf ((GPRS () == Zero)){}
                Else
                {
                    PON ()
                    L23D ()
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If (CondRefOf (SKOF))
                {
                    If ((SKOF == One))
                    {
                        Return (Zero)
                    }
                }

                If ((VDID == 0xFFFFFFFF)){}
                ElseIf ((GPRS () == Zero)){}
                Else
                {
                    DL23 ()
                    POFF ()
                }
            }
        }

        Method (GPPR, 0, NotSerialized)
        {
            If (CondRefOf (WAKP))
            {
                If (((WAKP != Zero) && (WKEN == Zero)))
                {
                    Return (Zero)
                }
            }

            If (CondRefOf (PCPB))
            {
                If ((PCPB != Zero))
                {
                    Return (Zero)
                }
            }

            If (CondRefOf (DVES))
            {
                If ((DVES () == Zero))
                {
                    Return (Zero)
                }
            }

            Return (One)
        }

        Method (GPRS, 0, NotSerialized)
        {
            If ((CondRefOf (PRTP) && (PRTP == 0x04)))
            {
                If (CondRefOf (\HBCL))
                {
                    If (((\HBCL != 0xFF) || (\HBCL <= 0x02)))
                    {
                        If ((\HBCL == SLOT))
                        {
                            Return (Zero)
                        }
                    }
                }
            }

            If ((CondRefOf (PRTP) && (PRTP == 0x02)))
            {
                If (CondRefOf (HBSL))
                {
                    Local0 = ((SLOT - One) / 0x04)
                    If ((HBSL & (One << Local0)))
                    {
                        Return (Zero)
                    }
                }

                If ((CondRefOf (\HBCL) && CondRefOf (\HBPL)))
                {
                    If (((\HBCL != 0xFF) || (\HBCL <= 0x02)))
                    {
                        If ((\HBPL == (SLOT - One)))
                        {
                            Return (Zero)
                        }
                    }
                }
            }

            If (CondRefOf (RD3C))
            {
                If ((RD3C != 0x02))
                {
                    Return (Zero)
                }
            }

            If (CondRefOf (PRMV))
            {
                If ((PRMV == One))
                {
                    Return (Zero)
                }
            }

            Return (One)
        }

        Method (PSTA, 0, NotSerialized)
        {
            If (\PIN.STA (RSTG))
            {
                Return (Zero)
            }
            Else
            {
                Return (One)
            }
        }

        Method (PON, 0, NotSerialized)
        {
            If (CondRefOf (CEMP))
            {
                CEMP (One)
            }

            If (CondRefOf (WAKG))
            {
                \_SB.SHPO (WAKG, One)
                \_SB.CAGS (WAKG)
            }

            If (CondRefOf (DHDW))
            {
                DHDW ()
            }

            If ((CondRefOf (PRTP) && (PRTP == 0x02)))
            {
                \_SB.PSD0 (SLOT)
            }

            Name (SKPP, Zero)
            If (CondRefOf (KBPW))
            {
                If ((KBPW == One))
                {
                    SKPP = One
                }
            }

            If ((SKPP == One)){}
            ElseIf (CondRefOf (PWRG))
            {
                If (CondRefOf (WOFF))
                {
                    If ((WOFF != Zero))
                    {
                        Local0 = ((Timer - WOFF) / 0x2710)
                        If ((Local0 < 0xC8))
                        {
                            Sleep ((0xC8 - Local0))
                        }

                        WOFF = Zero
                    }
                }

                \PIN.ON (PWRG)
                Sleep (PEP0)
            }

            If (CondRefOf (SCLK))
            {
                If (CondRefOf (TMCS))
                {
                    SPCX (SCLK, One, TMCS)
                }
                Else
                {
                    SPCO (SCLK, One)
                }
            }

            \PIN.OFF (RSTG)
        }

        Method (POFF, 0, NotSerialized)
        {
            Local1 = (LNRD / 0x03E8)
            Sleep (Local1)
            \PIN.ON (RSTG)
            If ((CondRefOf (PRTP) && (PRTP == 0x02)))
            {
                \_SB.PSD3 (SLOT)
            }

            If (CondRefOf (SCLK))
            {
                If (CondRefOf (TMCS))
                {
                    SPCX (SCLK, Zero, TMCS)
                }
                Else
                {
                    SPCO (SCLK, Zero)
                }
            }

            If (CondRefOf (PWRG))
            {
                If ((GPPR () == One))
                {
                    \PIN.OFF (PWRG)
                }

                If (CondRefOf (WOFF))
                {
                    WOFF = Timer
                }
            }

            If (CondRefOf (WAKG))
            {
                If (((WAKG != Zero) && WKEN))
                {
                    \_SB.SHPO (WAKG, Zero)
                }
            }

            If (CondRefOf (EHDW))
            {
                EHDW ()
            }

            If (CondRefOf (CEMP))
            {
                CEMP (Zero)
            }
        }

        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
        {
            Return (Package (0x01)
            {
                PXP, 
            })
        }

        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
        {
            Return (Package (0x01)
            {
                PXP, 
            })
        }

        Method (UPRD, 1, Serialized)
        {
            If ((Arg0 <= 0x2710))
            {
                LNRD = Arg0
            }

            Return (LNRD) /* \_SB_.PC00.PEG0.LNRD */
        }

        Name (KBPW, Zero)
        Name (SKOF, Zero)
        Method (DVES, 0, Serialized)
        {
            If ((KBPW == One))
            {
                Return (Zero)
            }
            Else
            {
                Return (One)
            }
        }

        Scope (\_SB.PC00.PEG0.PEGP)
        {
            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If (CondRefOf (^^RD3C))
                {
                    If ((^^RD3C == 0x02))
                    {
                        Return (0x04)
                    }
                }

                Return (0x03)
            }

            Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
            {
                Return (^^_PR0 ())
            }

            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
            {
                Return (^^_PR0 ())
            }

            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
            {
            }

            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
            {
            }

            Device (MINI)
            {
                Method (_STA, 0, Serialized)  // _STA: Status
                {
                    If (CondRefOf (PAHC))
                    {
                        If (PAHC ())
                        {
                            Return (0x0F)
                        }
                    }

                    Return (Zero)
                }

                Name (_ADR, 0xFFFF)  // _ADR: Address
                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                }

                Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                {
                    Return (^^^_PR0 ())
                }

                Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                {
                    Return (^^^_PR0 ())
                }
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("e6dfdc31-31d0-46ac-86af-da1eb05fc599") /* Unknown UUID */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            If ((Arg1 == Zero))
                            {
                                Return (Buffer (One)
                                {
                                     0x01                                             // .
                                })
                            }
                            Else
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                        }
                        Case (One)
                        {
                            ^^KBPW = Arg3
                            Return (Zero)
                        }

                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_RST, 0, NotSerialized)  // _RST: Device Reset
            {
                Name (TEMP, Zero)
                TEMP = ^^KBPW /* \_SB_.PC00.PEG0.KBPW */
                ^^KBPW = Zero
                If (CondRefOf (^^DL23))
                {
                    ^^DL23 ()
                }

                If (CondRefOf (^^POFF))
                {
                    ^^POFF ()
                }

                If (CondRefOf (^^PON))
                {
                    ^^PON ()
                }

                If (CondRefOf (^^L23D))
                {
                    ^^L23D ()
                }

                ^^KBPW = TEMP /* \_SB_.PC00.PEG0.PEGP._RST.TEMP */
            }
        }
    }

    Method (KMOF, 0, NotSerialized)
    {
        If (CondRefOf (\_SB.PC00.PEG0.KBPW))
        {
            If ((\_SB.PC00.PEG0.KBPW == One))
            {
                If (CondRefOf (\_SB.PC00.PEG0.PWRG))
                {
                    \PIN.OFF (\_SB.PC00.PEG0.PWRG)
                }
            }
        }
    }

    Method (KMON, 1, Serialized)
    {
        If (CondRefOf (\_SB.PC00.PEG0.KBPW))
        {
            If ((\_SB.PC00.PEG0.KBPW == One))
            {
                If (CondRefOf (\_SB.PC00.PEG0.PWRG))
                {
                    \PIN.ON (\_SB.PC00.PEG0.PWRG)
                }

                If (CondRefOf (\_SB.PC00.PEG0.SKOF))
                {
                    If (((Arg0 == 0x03) || (Arg0 == 0x04)))
                    {
                        \_SB.PC00.PEG0.SKOF = One
                    }
                }
            }
        }
    }
}

