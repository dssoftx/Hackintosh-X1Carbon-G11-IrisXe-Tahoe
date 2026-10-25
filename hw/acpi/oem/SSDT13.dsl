/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20260408 (64-bit version)
 * Copyright (c) 2000 - 2026 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/daniel/Desktop/X1C1360pTahoe/hw/acpi/oem/SSDT13.aml
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000118A (4490)
 *     Revision         0x02
 *     Checksum         0x25
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "SocGpe "
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200717 (538969879)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "SocGpe ", 0x00003000)
{
    External (_GPE.P0L6, MethodObj)    // 0 Arguments
    External (_GPE.P1L6, MethodObj)    // 0 Arguments
    External (_GPE.P2L6, MethodObj)    // 0 Arguments
    External (_SB_.PC00, DeviceObj)
    External (_SB_.PC00.CNVW.GPEH, MethodObj)    // 0 Arguments
    External (_SB_.PC00.D3C_, PowerResObj)
    External (_SB_.PC00.D3C_._STA, MethodObj)    // 0 Arguments
    External (_SB_.PC00.GFX0, DeviceObj)
    External (_SB_.PC00.GFX0.GSCI, MethodObj)    // 0 Arguments
    External (_SB_.PC00.GFX0.GSSE, FieldUnitObj)
    External (_SB_.PC00.GLAN.GPEH, MethodObj)    // 0 Arguments
    External (_SB_.PC00.HDAS.GPEH, MethodObj)    // 0 Arguments
    External (_SB_.PC00.MC__, DeviceObj)
    External (_SB_.PC00.MC__.D1F0, FieldUnitObj)
    External (_SB_.PC00.MC__.D1F1, FieldUnitObj)
    External (_SB_.PC00.MC__.D6F0, FieldUnitObj)
    External (_SB_.PC00.PEG0, DeviceObj)
    External (_SB_.PC00.PEG0.HPEV, MethodObj)    // 0 Arguments
    External (_SB_.PC00.PEG0.HPME, MethodObj)    // 0 Arguments
    External (_SB_.PC00.PEG0.PEGP, DeviceObj)
    External (_SB_.PC00.PEG1, DeviceObj)
    External (_SB_.PC00.PEG1.HPEV, MethodObj)    // 0 Arguments
    External (_SB_.PC00.PEG1.HPME, MethodObj)    // 0 Arguments
    External (_SB_.PC00.PEG2, DeviceObj)
    External (_SB_.PC00.PEG2.HPEV, MethodObj)    // 0 Arguments
    External (_SB_.PC00.PEG2.HPME, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP01, DeviceObj)
    External (_SB_.PC00.RP02, DeviceObj)
    External (_SB_.PC00.RP03, DeviceObj)
    External (_SB_.PC00.RP04, DeviceObj)
    External (_SB_.PC00.RP05, DeviceObj)
    External (_SB_.PC00.RP06, DeviceObj)
    External (_SB_.PC00.RP07, DeviceObj)
    External (_SB_.PC00.RP08, DeviceObj)
    External (_SB_.PC00.RP09, DeviceObj)
    External (_SB_.PC00.RP10, DeviceObj)
    External (_SB_.PC00.RP11, DeviceObj)
    External (_SB_.PC00.RP12, DeviceObj)
    External (_SB_.PC00.RP13, DeviceObj)
    External (_SB_.PC00.RP14, DeviceObj)
    External (_SB_.PC00.RP15, DeviceObj)
    External (_SB_.PC00.RP16, DeviceObj)
    External (_SB_.PC00.RP17, DeviceObj)
    External (_SB_.PC00.RP18, DeviceObj)
    External (_SB_.PC00.RP19, DeviceObj)
    External (_SB_.PC00.RP20, DeviceObj)
    External (_SB_.PC00.RP21, DeviceObj)
    External (_SB_.PC00.RP22, DeviceObj)
    External (_SB_.PC00.RP23, DeviceObj)
    External (_SB_.PC00.RP24, DeviceObj)
    External (_SB_.PC00.RP25, DeviceObj)
    External (_SB_.PC00.RP26, DeviceObj)
    External (_SB_.PC00.RP27, DeviceObj)
    External (_SB_.PC00.RP28, DeviceObj)
    External (_SB_.PC00.TCOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.TCON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.TDM0, DeviceObj)
    External (_SB_.PC00.TDM0._STA, MethodObj)    // 0 Arguments
    External (_SB_.PC00.TDM0.PMES, FieldUnitObj)
    External (_SB_.PC00.TDM0.STAT, IntObj)
    External (_SB_.PC00.TDM0.VDID, FieldUnitObj)
    External (_SB_.PC00.TDM1, DeviceObj)
    External (_SB_.PC00.TDM1._STA, MethodObj)    // 0 Arguments
    External (_SB_.PC00.TDM1.PMES, FieldUnitObj)
    External (_SB_.PC00.TDM1.STAT, IntObj)
    External (_SB_.PC00.TDM1.VDID, FieldUnitObj)
    External (_SB_.PC00.TRP0, DeviceObj)
    External (_SB_.PC00.TRP0.HPEV, MethodObj)    // 0 Arguments
    External (_SB_.PC00.TRP0.HPME, MethodObj)    // 0 Arguments
    External (_SB_.PC00.TRP1, DeviceObj)
    External (_SB_.PC00.TRP1.HPEV, MethodObj)    // 0 Arguments
    External (_SB_.PC00.TRP1.HPME, MethodObj)    // 0 Arguments
    External (_SB_.PC00.TRP2, DeviceObj)
    External (_SB_.PC00.TRP2.HPEV, MethodObj)    // 0 Arguments
    External (_SB_.PC00.TRP2.HPME, MethodObj)    // 0 Arguments
    External (_SB_.PC00.TRP3, DeviceObj)
    External (_SB_.PC00.TRP3.HPEV, MethodObj)    // 0 Arguments
    External (_SB_.PC00.TRP3.HPME, MethodObj)    // 0 Arguments
    External (_SB_.PC00.TXDC, UnknownObj)
    External (_SB_.PC00.TXDC._STA, MethodObj)    // 0 Arguments
    External (_SB_.PC00.TXDC.PMES, FieldUnitObj)
    External (_SB_.PC00.TXDC.VDID, FieldUnitObj)
    External (_SB_.PC00.TXHC, DeviceObj)
    External (_SB_.PC00.TXHC._STA, MethodObj)    // 0 Arguments
    External (_SB_.PC00.TXHC.PMES, FieldUnitObj)
    External (_SB_.PC00.TXHC.VDID, FieldUnitObj)
    External (_SB_.PC00.XDCI.GPEH, MethodObj)    // 0 Arguments
    External (_SB_.PC00.XHCI.GPEH, MethodObj)    // 0 Arguments
    External (_SB_.PC01, DeviceObj)
    External (_SB_.PC01.TRP0, DeviceObj)
    External (_SB_.PC01.TRP0.HPEV, MethodObj)    // 0 Arguments
    External (_SB_.PC01.TRP0.HPME, MethodObj)    // 0 Arguments
    External (_SB_.PC01.TRP1, DeviceObj)
    External (_SB_.PC01.TRP1.HPEV, MethodObj)    // 0 Arguments
    External (_SB_.PC01.TRP1.HPME, MethodObj)    // 0 Arguments
    External (_SB_.PC01.TRP2, DeviceObj)
    External (_SB_.PC01.TRP2.HPEV, MethodObj)    // 0 Arguments
    External (_SB_.PC01.TRP2.HPME, MethodObj)    // 0 Arguments
    External (_SB_.PC01.TRP3, DeviceObj)
    External (_SB_.PC01.TRP3.HPEV, MethodObj)    // 0 Arguments
    External (_SB_.PC01.TRP3.HPME, MethodObj)    // 0 Arguments
    External (AL6D, FieldUnitObj)
    External (CPRT, FieldUnitObj)
    External (GSMI, FieldUnitObj)
    External (P1GP, FieldUnitObj)
    External (P2GP, FieldUnitObj)
    External (PCHS, FieldUnitObj)
    External (PCHX, IntObj)
    External (PG0E, FieldUnitObj)
    External (PG1E, FieldUnitObj)
    External (PG2E, FieldUnitObj)
    External (SGGP, FieldUnitObj)

    Scope (\_GPE)
    {
        Method (SL61, 0, NotSerialized)
        {
            If ((AL6D == One))
            {
                If (CondRefOf (\_SB.PC00.TXHC))
                {
                    If (CondRefOf (\_SB.PC01))
                    {
                        \_SB.PC01.TRP0.HPEV ()
                        \_SB.PC01.TRP1.HPEV ()
                        \_SB.PC01.TRP2.HPEV ()
                        \_SB.PC01.TRP3.HPEV ()
                    }
                    Else
                    {
                        \_SB.PC00.TRP0.HPEV ()
                        \_SB.PC00.TRP1.HPEV ()
                        \_SB.PC00.TRP2.HPEV ()
                        \_SB.PC00.TRP3.HPEV ()
                    }
                }
            }

            Sleep (0x64)
            If (CondRefOf (\_SB.PC00.TXHC))
            {
                If (CondRefOf (\_SB.PC01))
                {
                    \_SB.PC01.TRP0.HPEV ()
                    \_SB.PC01.TRP1.HPEV ()
                    \_SB.PC01.TRP2.HPEV ()
                    \_SB.PC01.TRP3.HPEV ()
                }
                Else
                {
                    \_SB.PC00.TRP0.HPEV ()
                    \_SB.PC00.TRP1.HPEV ()
                    \_SB.PC00.TRP2.HPEV ()
                    \_SB.PC00.TRP3.HPEV ()
                }
            }

            If ((PG0E == One))
            {
                \_SB.PC00.PEG0.HPEV ()
            }

            If ((PG1E == One))
            {
                \_SB.PC00.PEG1.HPEV ()
            }

            If ((PG2E == One))
            {
                \_SB.PC00.PEG2.HPEV ()
            }

            If ((AL6D == One))
            {
                If (CondRefOf (\_SB.PC00.TXHC))
                {
                    If (CondRefOf (\_SB.PC01))
                    {
                        \_SB.PC01.TRP0.HPEV ()
                        \_SB.PC01.TRP1.HPEV ()
                        \_SB.PC01.TRP2.HPEV ()
                        \_SB.PC01.TRP3.HPEV ()
                    }
                    Else
                    {
                        \_SB.PC00.TRP0.HPEV ()
                        \_SB.PC00.TRP1.HPEV ()
                        \_SB.PC00.TRP2.HPEV ()
                        \_SB.PC00.TRP3.HPEV ()
                    }
                }
            }
        }

        Method (SL66, 0, NotSerialized)
        {
            If (CondRefOf (\_SB.PC00.GFX0))
            {
                If ((\_SB.PC00.GFX0.GSSE && !GSMI))
                {
                    \_SB.PC00.GFX0.GSCI ()
                }
            }
        }

        Method (SL69, 0, NotSerialized)
        {
            If (CondRefOf (\_SB.PC00.TXHC))
            {
                If (CondRefOf (\_SB.PC01))
                {
                    If ((\_SB.PC01.TRP0.HPME () == One))
                    {
                        Notify (\_SB.PC00.TDM0, 0x02) // Device Wake
                        Notify (\_SB.PC01.TRP0, 0x02) // Device Wake
                    }

                    If ((\_SB.PC01.TRP1.HPME () == One))
                    {
                        Notify (\_SB.PC00.TDM0, 0x02) // Device Wake
                        Notify (\_SB.PC01.TRP1, 0x02) // Device Wake
                    }

                    If ((\_SB.PC01.TRP2.HPME () == One))
                    {
                        Notify (\_SB.PC00.TDM1, 0x02) // Device Wake
                        Notify (\_SB.PC01.TRP2, 0x02) // Device Wake
                    }

                    If ((\_SB.PC01.TRP3.HPME () == One))
                    {
                        Notify (\_SB.PC00.TDM1, 0x02) // Device Wake
                        Notify (\_SB.PC01.TRP3, 0x02) // Device Wake
                    }
                }
                Else
                {
                    If ((\_SB.PC00.TRP0.HPME () == One))
                    {
                        Notify (\_SB.PC00.TDM0, 0x02) // Device Wake
                        Notify (\_SB.PC00.TRP0, 0x02) // Device Wake
                    }

                    If ((\_SB.PC00.TRP1.HPME () == One))
                    {
                        Notify (\_SB.PC00.TDM0, 0x02) // Device Wake
                        Notify (\_SB.PC00.TRP1, 0x02) // Device Wake
                    }

                    If ((\_SB.PC00.TRP2.HPME () == One))
                    {
                        Notify (\_SB.PC00.TDM1, 0x02) // Device Wake
                        Notify (\_SB.PC00.TRP2, 0x02) // Device Wake
                    }

                    If ((\_SB.PC00.TRP3.HPME () == One))
                    {
                        Notify (\_SB.PC00.TDM1, 0x02) // Device Wake
                        Notify (\_SB.PC00.TRP3, 0x02) // Device Wake
                    }
                }
            }

            If ((PCHS == PCHX)){}
            If ((\_SB.PC00.MC.D6F0 == One))
            {
                \_SB.PC00.PEG0.HPME ()
                Notify (\_SB.PC00.PEG0, 0x02) // Device Wake
                Notify (\_SB.PC00.PEG0.PEGP, 0x02) // Device Wake
            }

            If ((\_SB.PC00.MC.D1F0 == One))
            {
                \_SB.PC00.PEG1.HPME ()
                Notify (\_SB.PC00.PEG1, 0x02) // Device Wake
            }

            If ((\_SB.PC00.MC.D1F1 == One))
            {
                \_SB.PC00.PEG2.HPME ()
                Notify (\_SB.PC00.PEG2, 0x02) // Device Wake
            }
        }

        If ((AL6D == One))
        {
            Method (SL6D, 0, NotSerialized)
            {
                If (CondRefOf (\_SB.PC00.XHCI))
                {
                    \_SB.PC00.XHCI.GPEH ()
                }

                If (CondRefOf (\_SB.PC00.HDAS))
                {
                    \_SB.PC00.HDAS.GPEH ()
                }

                If (CondRefOf (\_SB.PC00.GLAN))
                {
                    \_SB.PC00.GLAN.GPEH ()
                }

                If (CondRefOf (\_SB.PC00.CNVW))
                {
                    \_SB.PC00.CNVW.GPEH ()
                }

                If (CondRefOf (\_SB.PC00.XDCI))
                {
                    \_SB.PC00.XDCI.GPEH ()
                }

                Local0 = Zero
                If (CondRefOf (\_SB.PC00.D3C))
                {
                    If ((\_SB.PC00.D3C._STA () == Zero))
                    {
                        \_SB.PC00.TCON ()
                        Local0 = One
                    }
                }

                If (CondRefOf (\_SB.PC00.TDM0))
                {
                    If ((\_SB.PC00.TDM0._STA () == 0x0F))
                    {
                        If ((\_SB.PC00.TDM0.VDID != 0xFFFFFFFF))
                        {
                            Local1 = \_SB.PC00.TDM0.PMES /* External reference */
                            If ((Local1 == One))
                            {
                                Local0 = Zero
                                Notify (\_SB.PC00.TDM0, 0x02) // Device Wake
                            }
                        }
                    }
                }

                If (CondRefOf (\_SB.PC00.TDM1))
                {
                    If ((\_SB.PC00.TDM1._STA () == 0x0F))
                    {
                        If ((\_SB.PC00.TDM1.VDID != 0xFFFFFFFF))
                        {
                            Local1 = \_SB.PC00.TDM1.PMES /* External reference */
                            If ((Local1 == One))
                            {
                                Local0 = Zero
                                Notify (\_SB.PC00.TDM1, 0x02) // Device Wake
                            }
                        }
                    }
                }

                If (CondRefOf (\_SB.PC00.TXDC))
                {
                    If ((\_SB.PC00.TXDC._STA () == 0x0F))
                    {
                        If ((\_SB.PC00.TXDC.VDID != 0xFFFFFFFF))
                        {
                            Local1 = \_SB.PC00.TXDC.PMES /* External reference */
                            If ((Local1 == One))
                            {
                                Local0 = Zero
                                Notify (\_SB.PC00.TXDC, 0x02) // Device Wake
                            }
                        }
                    }
                }

                If (CondRefOf (\_SB.PC00.TXHC))
                {
                    If ((\_SB.PC00.TXHC._STA () == 0x0F))
                    {
                        If ((\_SB.PC00.TXHC.VDID != 0xFFFFFFFF))
                        {
                            Local1 = \_SB.PC00.TXHC.PMES /* External reference */
                            If ((Local1 == One))
                            {
                                Local0 = Zero
                                Notify (\_SB.PC00.TXHC, 0x02) // Device Wake
                            }
                        }
                    }
                }

                If ((Local0 == One))
                {
                    \_SB.PC00.TCOF ()
                }
            }
        }

        Method (SL6F, 0, NotSerialized)
        {
            If ((SGGP == One))
            {
                If (CondRefOf (\_GPE.P0L6))
                {
                    \_GPE.P0L6 ()
                }
            }

            If ((P1GP == One))
            {
                If (CondRefOf (\_GPE.P1L6))
                {
                    \_GPE.P1L6 ()
                }
            }

            If ((P2GP == One))
            {
                If (CondRefOf (\_GPE.P2L6))
                {
                    \_GPE.P2L6 ()
                }
            }
        }
    }
}

