/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20260408 (64-bit version)
 * Copyright (c) 2000 - 2026 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/daniel/Desktop/X1C1360pTahoe/hw/acpi/oem/SSDT11.aml
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000093E7 (37863)
 *     Revision         0x02
 *     Checksum         0x03
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "TbtTypeC"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200717 (538969879)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "TbtTypeC", 0x00000000)
{
    External (_SB_.PC00.PEG1, DeviceObj)
    External (_SB_.PC00.PEG1.PEGP, DeviceObj)
    External (_SB_.PC00.PEG1.PEGP.TBDH.NHI4, DeviceObj)
    External (_SB_.PC00.PEG1.PEGP.TBDH.NHI5, DeviceObj)
    External (_SB_.PC00.PEG1.PEGP.TP1D, UnknownObj)
    External (_SB_.PC00.PEG1.PEGP.TP1T, UnknownObj)
    External (_SB_.PC00.PEG1.PEGP.TP2D, UnknownObj)
    External (_SB_.PC00.PEG1.PEGP.TP2T, UnknownObj)
    External (_SB_.PC00.PEG1.PEGP.TP3D, UnknownObj)
    External (_SB_.PC00.PEG1.PEGP.TP3T, UnknownObj)
    External (_SB_.PC00.PEG1.PEGP.TP4D, UnknownObj)
    External (_SB_.PC00.PEG1.PEGP.TP4T, UnknownObj)
    External (_SB_.PC00.PEG1.PEGP.TP5D, UnknownObj)
    External (_SB_.PC00.PEG1.PEGP.TP5T, UnknownObj)
    External (_SB_.PC00.PEG1.PEGP.TP6D, UnknownObj)
    External (_SB_.PC00.PEG1.PEGP.TP6T, UnknownObj)
    External (_SB_.PC00.PEG1.TUID, IntObj)
    External (_SB_.PC00.PEG1.WAKG, IntObj)
    External (_SB_.PC00.PEG2, DeviceObj)
    External (_SB_.PC00.PEG2.PEGP, DeviceObj)
    External (_SB_.PC00.PEG2.PEGP.TBDH.NHI4, DeviceObj)
    External (_SB_.PC00.PEG2.PEGP.TBDH.NHI5, DeviceObj)
    External (_SB_.PC00.PEG2.PEGP.TP1D, UnknownObj)
    External (_SB_.PC00.PEG2.PEGP.TP1T, UnknownObj)
    External (_SB_.PC00.PEG2.PEGP.TP2D, UnknownObj)
    External (_SB_.PC00.PEG2.PEGP.TP2T, UnknownObj)
    External (_SB_.PC00.PEG2.PEGP.TP3D, UnknownObj)
    External (_SB_.PC00.PEG2.PEGP.TP3T, UnknownObj)
    External (_SB_.PC00.PEG2.PEGP.TP4D, UnknownObj)
    External (_SB_.PC00.PEG2.PEGP.TP4T, UnknownObj)
    External (_SB_.PC00.PEG2.PEGP.TP5D, UnknownObj)
    External (_SB_.PC00.PEG2.PEGP.TP5T, UnknownObj)
    External (_SB_.PC00.PEG2.PEGP.TP6D, UnknownObj)
    External (_SB_.PC00.PEG2.PEGP.TP6T, UnknownObj)
    External (_SB_.PC00.PEG2.TUID, IntObj)
    External (_SB_.PC00.PEG2.WAKG, IntObj)
    External (_SB_.PC00.RP01.PXSX, DeviceObj)
    External (_SB_.PC00.RP01.PXSX.TBDH.NHI4, DeviceObj)
    External (_SB_.PC00.RP01.PXSX.TBDH.NHI5, DeviceObj)
    External (_SB_.PC00.RP01.PXSX.TP1D, UnknownObj)
    External (_SB_.PC00.RP01.PXSX.TP1T, UnknownObj)
    External (_SB_.PC00.RP01.PXSX.TP2D, UnknownObj)
    External (_SB_.PC00.RP01.PXSX.TP2T, UnknownObj)
    External (_SB_.PC00.RP01.PXSX.TP3D, UnknownObj)
    External (_SB_.PC00.RP01.PXSX.TP3T, UnknownObj)
    External (_SB_.PC00.RP01.PXSX.TP4D, UnknownObj)
    External (_SB_.PC00.RP01.PXSX.TP4T, UnknownObj)
    External (_SB_.PC00.RP01.PXSX.TP5D, UnknownObj)
    External (_SB_.PC00.RP01.PXSX.TP5T, UnknownObj)
    External (_SB_.PC00.RP01.PXSX.TP6D, UnknownObj)
    External (_SB_.PC00.RP01.PXSX.TP6T, UnknownObj)
    External (_SB_.PC00.RP01.TUID, IntObj)
    External (_SB_.PC00.RP01.WAKG, IntObj)
    External (_SB_.PC00.RP05.PXSX, DeviceObj)
    External (_SB_.PC00.RP05.PXSX.TBDH.NHI4, DeviceObj)
    External (_SB_.PC00.RP05.PXSX.TBDH.NHI5, DeviceObj)
    External (_SB_.PC00.RP05.PXSX.TP1D, UnknownObj)
    External (_SB_.PC00.RP05.PXSX.TP1T, UnknownObj)
    External (_SB_.PC00.RP05.PXSX.TP2D, UnknownObj)
    External (_SB_.PC00.RP05.PXSX.TP2T, UnknownObj)
    External (_SB_.PC00.RP05.PXSX.TP3D, UnknownObj)
    External (_SB_.PC00.RP05.PXSX.TP3T, UnknownObj)
    External (_SB_.PC00.RP05.PXSX.TP4D, UnknownObj)
    External (_SB_.PC00.RP05.PXSX.TP4T, UnknownObj)
    External (_SB_.PC00.RP05.PXSX.TP5D, UnknownObj)
    External (_SB_.PC00.RP05.PXSX.TP5T, UnknownObj)
    External (_SB_.PC00.RP05.PXSX.TP6D, UnknownObj)
    External (_SB_.PC00.RP05.PXSX.TP6T, UnknownObj)
    External (_SB_.PC00.RP05.TUID, IntObj)
    External (_SB_.PC00.RP05.WAKG, IntObj)
    External (_SB_.PC00.RP09.PXSX, DeviceObj)
    External (_SB_.PC00.RP09.PXSX.TBDH.NHI4, DeviceObj)
    External (_SB_.PC00.RP09.PXSX.TBDH.NHI5, DeviceObj)
    External (_SB_.PC00.RP09.PXSX.TP1D, UnknownObj)
    External (_SB_.PC00.RP09.PXSX.TP1T, UnknownObj)
    External (_SB_.PC00.RP09.PXSX.TP2D, UnknownObj)
    External (_SB_.PC00.RP09.PXSX.TP2T, UnknownObj)
    External (_SB_.PC00.RP09.PXSX.TP3D, UnknownObj)
    External (_SB_.PC00.RP09.PXSX.TP3T, UnknownObj)
    External (_SB_.PC00.RP09.PXSX.TP4D, UnknownObj)
    External (_SB_.PC00.RP09.PXSX.TP4T, UnknownObj)
    External (_SB_.PC00.RP09.PXSX.TP5D, UnknownObj)
    External (_SB_.PC00.RP09.PXSX.TP5T, UnknownObj)
    External (_SB_.PC00.RP09.PXSX.TP6D, UnknownObj)
    External (_SB_.PC00.RP09.PXSX.TP6T, UnknownObj)
    External (_SB_.PC00.RP09.TUID, IntObj)
    External (_SB_.PC00.RP09.WAKG, IntObj)
    External (_SB_.PC00.RP13.PXSX, DeviceObj)
    External (_SB_.PC00.RP13.PXSX.TBDH.NHI4, DeviceObj)
    External (_SB_.PC00.RP13.PXSX.TBDH.NHI5, DeviceObj)
    External (_SB_.PC00.RP13.PXSX.TP1D, UnknownObj)
    External (_SB_.PC00.RP13.PXSX.TP1T, UnknownObj)
    External (_SB_.PC00.RP13.PXSX.TP2D, UnknownObj)
    External (_SB_.PC00.RP13.PXSX.TP2T, UnknownObj)
    External (_SB_.PC00.RP13.PXSX.TP3D, UnknownObj)
    External (_SB_.PC00.RP13.PXSX.TP3T, UnknownObj)
    External (_SB_.PC00.RP13.PXSX.TP4D, UnknownObj)
    External (_SB_.PC00.RP13.PXSX.TP4T, UnknownObj)
    External (_SB_.PC00.RP13.PXSX.TP5D, UnknownObj)
    External (_SB_.PC00.RP13.PXSX.TP5T, UnknownObj)
    External (_SB_.PC00.RP13.PXSX.TP6D, UnknownObj)
    External (_SB_.PC00.RP13.PXSX.TP6T, UnknownObj)
    External (_SB_.PC00.RP13.TUID, IntObj)
    External (_SB_.PC00.RP13.WAKG, IntObj)
    External (_SB_.PC00.RP17.PXSX, DeviceObj)
    External (_SB_.PC00.RP17.PXSX.TBDH.NHI4, DeviceObj)
    External (_SB_.PC00.RP17.PXSX.TBDH.NHI5, DeviceObj)
    External (_SB_.PC00.RP17.PXSX.TP1D, UnknownObj)
    External (_SB_.PC00.RP17.PXSX.TP1T, UnknownObj)
    External (_SB_.PC00.RP17.PXSX.TP2D, UnknownObj)
    External (_SB_.PC00.RP17.PXSX.TP2T, UnknownObj)
    External (_SB_.PC00.RP17.PXSX.TP3D, UnknownObj)
    External (_SB_.PC00.RP17.PXSX.TP3T, UnknownObj)
    External (_SB_.PC00.RP17.PXSX.TP4D, UnknownObj)
    External (_SB_.PC00.RP17.PXSX.TP4T, UnknownObj)
    External (_SB_.PC00.RP17.PXSX.TP5D, UnknownObj)
    External (_SB_.PC00.RP17.PXSX.TP5T, UnknownObj)
    External (_SB_.PC00.RP17.PXSX.TP6D, UnknownObj)
    External (_SB_.PC00.RP17.PXSX.TP6T, UnknownObj)
    External (_SB_.PC00.RP17.TUID, IntObj)
    External (_SB_.PC00.RP17.WAKG, IntObj)
    External (_SB_.PC00.RP21.PXSX, DeviceObj)
    External (_SB_.PC00.RP21.PXSX.TBDH.NHI4, DeviceObj)
    External (_SB_.PC00.RP21.PXSX.TBDH.NHI5, DeviceObj)
    External (_SB_.PC00.RP21.PXSX.TP1D, UnknownObj)
    External (_SB_.PC00.RP21.PXSX.TP1T, UnknownObj)
    External (_SB_.PC00.RP21.PXSX.TP2D, UnknownObj)
    External (_SB_.PC00.RP21.PXSX.TP2T, UnknownObj)
    External (_SB_.PC00.RP21.PXSX.TP3D, UnknownObj)
    External (_SB_.PC00.RP21.PXSX.TP3T, UnknownObj)
    External (_SB_.PC00.RP21.PXSX.TP4D, UnknownObj)
    External (_SB_.PC00.RP21.PXSX.TP4T, UnknownObj)
    External (_SB_.PC00.RP21.PXSX.TP5D, UnknownObj)
    External (_SB_.PC00.RP21.PXSX.TP5T, UnknownObj)
    External (_SB_.PC00.RP21.PXSX.TP6D, UnknownObj)
    External (_SB_.PC00.RP21.PXSX.TP6T, UnknownObj)
    External (_SB_.PC00.RP21.TUID, IntObj)
    External (_SB_.PC00.RP21.WAKG, IntObj)
    External (_SB_.PC00.RP25.PXSX, DeviceObj)
    External (_SB_.PC00.RP25.PXSX.TBDH.NHI4, DeviceObj)
    External (_SB_.PC00.RP25.PXSX.TBDH.NHI5, DeviceObj)
    External (_SB_.PC00.RP25.PXSX.TP1D, UnknownObj)
    External (_SB_.PC00.RP25.PXSX.TP1T, UnknownObj)
    External (_SB_.PC00.RP25.PXSX.TP2D, UnknownObj)
    External (_SB_.PC00.RP25.PXSX.TP2T, UnknownObj)
    External (_SB_.PC00.RP25.PXSX.TP3D, UnknownObj)
    External (_SB_.PC00.RP25.PXSX.TP3T, UnknownObj)
    External (_SB_.PC00.RP25.PXSX.TP4D, UnknownObj)
    External (_SB_.PC00.RP25.PXSX.TP4T, UnknownObj)
    External (_SB_.PC00.RP25.PXSX.TP5D, UnknownObj)
    External (_SB_.PC00.RP25.PXSX.TP5T, UnknownObj)
    External (_SB_.PC00.RP25.PXSX.TP6D, UnknownObj)
    External (_SB_.PC00.RP25.PXSX.TP6T, UnknownObj)
    External (_SB_.PC00.RP25.TUID, IntObj)
    External (_SB_.PC00.RP25.WAKG, IntObj)
    External (_SB_.SHPO, MethodObj)    // 2 Arguments
    External (_SB_.UBTC.RUCC, MethodObj)    // 2 Arguments
    External (ADBG, MethodObj)    // 1 Arguments
    External (DPM1, IntObj)
    External (DPM2, IntObj)
    External (DPM3, IntObj)
    External (DSCE, IntObj)
    External (DTFS, IntObj)
    External (DTMB, MethodObj)    // 4 Arguments
    External (DTRT, IntObj)
    External (NDUS, IntObj)
    External (NTUS, IntObj)
    External (RPS0, IntObj)
    External (RPS1, IntObj)
    External (RPT0, IntObj)
    External (RPT1, IntObj)
    External (TBSE, IntObj)
    External (TP1D, IntObj)
    External (TP1P, IntObj)
    External (TP1T, IntObj)
    External (TP2D, IntObj)
    External (TP2P, IntObj)
    External (TP2T, IntObj)
    External (TP3D, IntObj)
    External (TP3P, IntObj)
    External (TP3T, IntObj)
    External (TP4D, IntObj)
    External (TP4P, IntObj)
    External (TP4T, IntObj)
    External (TP5D, IntObj)
    External (TP5P, IntObj)
    External (TP5T, IntObj)
    External (TP6D, IntObj)
    External (TP6P, IntObj)
    External (TP6T, IntObj)

    If (CondRefOf (\DTFS))
    {
        If ((DTFS == One))
        {
            If (((RPT0 == 0x02) || (RPT1 == 0x02)))
            {
                If (((RPS0 == 0x02) || (RPS1 == 0x02)))
                {
                    Scope (\_SB.PC00.PEG1.PEGP)
                    {
                        Name (TURP, 0x02)
                        Device (TBDU)
                        {
                            Name (_ADR, 0x00020000)  // _ADR: Address
                            Device (XHCI)
                            {
                                Name (_ADR, Zero)  // _ADR: Address
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    ADBG ("DTBT XHCI S0W")
                                    Return (0x04)
                                }

                                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                                {
                                    ADBG ("DTBT XHCI PS0")
                                }

                                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                                {
                                    ADBG ("DTBT XHCI PS3")
                                }

                                Device (RHUB)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                    {
                                        ADBG ("DTBT XHCI RHUB S0W return 4")
                                        Return (0x04)
                                    }

                                    Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                                    {
                                        ADBG ("DTBT XHCI RHUB PS0")
                                    }

                                    Method (_PS2, 0, Serialized)  // _PS2: Power State 2
                                    {
                                        ADBG ("DTBT XHCI RHUB PS2")
                                    }

                                    Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                                    {
                                        ADBG ("DTBT XHCI RHUB PS3")
                                    }

                                    Method (SLMS, 1, Serialized)
                                    {
                                        Local0 = (TURP << 0x02)
                                        Local0 |= One
                                        If ((((TP1D >> One) == Local0) && (Arg0 == TP1T)))
                                        {
                                            Return ((TP1D & One))
                                        }
                                        ElseIf ((((TP2D >> One) == Local0) && (Arg0 == TP2T)))
                                        {
                                            Return ((TP2D & One))
                                        }
                                        ElseIf ((((TP3D >> One) == Local0) && (Arg0 == TP3T)))
                                        {
                                            Return ((TP3D & One))
                                        }
                                        ElseIf ((((TP4D >> One) == Local0) && (Arg0 == TP4T)))
                                        {
                                            Return ((TP4D & One))
                                        }
                                        ElseIf ((((TP5D >> One) == Local0) && (Arg0 == TP5T)))
                                        {
                                            Return ((TP5D & One))
                                        }
                                        ElseIf ((((TP6D >> One) == Local0) && (Arg0 == TP6T)))
                                        {
                                            Return ((TP6D & One))
                                        }
                                        Else
                                        {
                                            Return (Zero)
                                        }
                                    }

                                    Method (FPCP, 2, Serialized)
                                    {
                                        Local0 = (TURP << 0x02)
                                        Local0 |= One
                                        If ((((TP1D >> One) == Local0) && (Arg0 == TP1T)))
                                        {
                                            Return (\_SB.UBTC.RUCC (One, Arg1))
                                        }
                                        ElseIf ((((TP2D >> One) == Local0) && (Arg0 == TP2T)))
                                        {
                                            Return (\_SB.UBTC.RUCC (0x02, Arg1))
                                        }
                                        ElseIf ((((TP3D >> One) == Local0) && (Arg0 == TP3T)))
                                        {
                                            Return (\_SB.UBTC.RUCC (0x03, Arg1))
                                        }
                                        ElseIf ((((TP4D >> One) == Local0) && (Arg0 == TP4T)))
                                        {
                                            Return (\_SB.UBTC.RUCC (0x04, Arg1))
                                        }
                                        ElseIf ((((TP5D >> One) == Local0) && (Arg0 == TP5T)))
                                        {
                                            Return (\_SB.UBTC.RUCC (0x05, Arg1))
                                        }
                                        ElseIf ((((TP6D >> One) == Local0) && (Arg0 == TP6T)))
                                        {
                                            Return (\_SB.UBTC.RUCC (0x06, Arg1))
                                        }
                                        ElseIf ((Arg1 == One))
                                        {
                                            Return (TUPC (Zero, Zero))
                                        }
                                        Else
                                        {
                                            Return (TPLD (Zero, Zero))
                                        }
                                    }

                                    Method (FPSP, 1, Serialized)
                                    {
                                        Local0 = (TURP << 0x02)
                                        Local0 |= One
                                        If ((((TP1D >> One) == Local0) && (Arg0 == TP1T)))
                                        {
                                            Return (One)
                                        }
                                        ElseIf ((((TP2D >> One) == Local0) && (Arg0 == TP2T)))
                                        {
                                            Return (One)
                                        }
                                        ElseIf ((((TP3D >> One) == Local0) && (Arg0 == TP3T)))
                                        {
                                            Return (One)
                                        }
                                        ElseIf ((((TP4D >> One) == Local0) && (Arg0 == TP4T)))
                                        {
                                            Return (One)
                                        }
                                        ElseIf ((((TP5D >> One) == Local0) && (Arg0 == TP5T)))
                                        {
                                            Return (One)
                                        }
                                        ElseIf ((((TP6D >> One) == Local0) && (Arg0 == TP6T)))
                                        {
                                            Return (One)
                                        }
                                        Else
                                        {
                                            Return (Zero)
                                        }
                                    }

                                    Method (TPLD, 2, Serialized)
                                    {
                                        Name (PCKG, Package (0x01)
                                        {
                                            Buffer (0x10){}
                                        })
                                        CreateField (DerefOf (PCKG [Zero]), Zero, 0x07, REV)
                                        REV = One
                                        CreateField (DerefOf (PCKG [Zero]), 0x40, One, VISI)
                                        VISI = Arg0
                                        CreateField (DerefOf (PCKG [Zero]), 0x57, 0x08, GPOS)
                                        GPOS = Arg1
                                        CreateField (DerefOf (PCKG [Zero]), 0x4A, 0x04, SHAP)
                                        SHAP = One
                                        CreateField (DerefOf (PCKG [Zero]), 0x20, 0x10, WID)
                                        WID = 0x08
                                        CreateField (DerefOf (PCKG [Zero]), 0x30, 0x10, HGT)
                                        HGT = 0x03
                                        Return (PCKG) /* \_SB_.PC00.PEG1.PEGP.TBDU.XHCI.RHUB.TPLD.PCKG */
                                    }

                                    Method (TUPC, 2, Serialized)
                                    {
                                        Name (PCKG, Package (0x04)
                                        {
                                            One, 
                                            Zero, 
                                            Zero, 
                                            Zero
                                        })
                                        PCKG [Zero] = Arg0
                                        PCKG [One] = Arg1
                                        Return (PCKG) /* \_SB_.PC00.PEG1.PEGP.TBDU.XHCI.RHUB.TUPC.PCKG */
                                    }

                                    If ((FPSP (One) == One))
                                    {
                                        Device (HS01)
                                        {
                                            Name (_ADR, One)  // _ADR: Address
                                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                            {
                                                If ((SLMS (One) == Zero))
                                                {
                                                    Return (FPCP (One, One))
                                                }
                                                Else
                                                {
                                                    Return (TUPC (Zero, Zero))
                                                }
                                            }

                                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                            {
                                                If ((SLMS (One) == Zero))
                                                {
                                                    Return (FPCP (One, 0x02))
                                                }
                                                Else
                                                {
                                                    Return (TPLD (Zero, Zero))
                                                }
                                            }
                                        }
                                    }

                                    If ((FPSP (0x02) == One))
                                    {
                                        Device (HS02)
                                        {
                                            Name (_ADR, 0x02)  // _ADR: Address
                                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                            {
                                                If ((SLMS (0x02) == Zero))
                                                {
                                                    Return (FPCP (0x02, One))
                                                }
                                                Else
                                                {
                                                    Return (TUPC (Zero, Zero))
                                                }
                                            }

                                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                            {
                                                If ((SLMS (0x02) == Zero))
                                                {
                                                    Return (FPCP (0x02, 0x02))
                                                }
                                                Else
                                                {
                                                    Return (TPLD (Zero, Zero))
                                                }
                                            }
                                        }
                                    }

                                    If ((FPSP (One) == One))
                                    {
                                        Device (SS01)
                                        {
                                            Name (_ADR, 0x03)  // _ADR: Address
                                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                            {
                                                Return (FPCP (One, One))
                                            }

                                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                            {
                                                Return (FPCP (One, 0x02))
                                            }

                                            If (CondRefOf (\_SB.PC00.PEG1.TUID))
                                            {
                                                ADBG (Concatenate ("DTBT SS01 TUID = ", ToHexString (\_SB.PC00.PEG1.TUID)))
                                                If ((\_SB.PC00.PEG1.TUID <= One))
                                                {
                                                    Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                                                    {
                                                        ADBG ("DTBT SS01 DSD")
                                                        If ((\_SB.PC00.PEG1.TUID == Zero))
                                                        {
                                                            Return (Package (0x02)
                                                            {
                                                                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                                Package (0x02)
                                                                {
                                                                    Package (0x02)
                                                                    {
                                                                        "usb4-host-interface", 
                                                                        \_SB.PC00.PEG1.PEGP.TBDH.NHI4, 
                                                                    }, 

                                                                    Package (0x02)
                                                                    {
                                                                        "usb4-port-number", 
                                                                        Zero
                                                                    }
                                                                }
                                                            })
                                                        }
                                                        Else
                                                        {
                                                            Return (Package (0x02)
                                                            {
                                                                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                                Package (0x02)
                                                                {
                                                                    Package (0x02)
                                                                    {
                                                                        "usb4-host-interface", 
                                                                        \_SB.PC00.PEG1.PEGP.TBDH.NHI5, 
                                                                    }, 

                                                                    Package (0x02)
                                                                    {
                                                                        "usb4-port-number", 
                                                                        Zero
                                                                    }
                                                                }
                                                            })
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }

                                    If ((FPSP (0x02) == One))
                                    {
                                        Device (SS02)
                                        {
                                            Name (_ADR, 0x04)  // _ADR: Address
                                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                            {
                                                Return (FPCP (0x02, One))
                                            }

                                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                            {
                                                Return (FPCP (0x02, 0x02))
                                            }

                                            If (CondRefOf (\_SB.PC00.PEG1.TUID))
                                            {
                                                ADBG (Concatenate ("DTBT SS02 TUID = ", ToHexString (\_SB.PC00.PEG1.TUID)))
                                                If ((\_SB.PC00.PEG1.TUID <= One))
                                                {
                                                    Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                                                    {
                                                        ADBG ("DTBT SS02 DSD")
                                                        If ((\_SB.PC00.PEG1.TUID == Zero))
                                                        {
                                                            Return (Package (0x02)
                                                            {
                                                                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                                Package (0x02)
                                                                {
                                                                    Package (0x02)
                                                                    {
                                                                        "usb4-host-interface", 
                                                                        \_SB.PC00.PEG1.PEGP.TBDH.NHI4, 
                                                                    }, 

                                                                    Package (0x02)
                                                                    {
                                                                        "usb4-port-number", 
                                                                        One
                                                                    }
                                                                }
                                                            })
                                                        }
                                                        Else
                                                        {
                                                            Return (Package (0x02)
                                                            {
                                                                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                                Package (0x02)
                                                                {
                                                                    Package (0x02)
                                                                    {
                                                                        "usb4-host-interface", 
                                                                        \_SB.PC00.PEG1.PEGP.TBDH.NHI5, 
                                                                    }, 

                                                                    Package (0x02)
                                                                    {
                                                                        "usb4-port-number", 
                                                                        One
                                                                    }
                                                                }
                                                            })
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    Return (Zero)
                                }
                            }
                        }

                        If ((CondRefOf (\_SB.PC00.PEG1.TUID) && CondRefOf (\DTRT)))
                        {
                            Device (TBDH)
                            {
                                Name (_ADR, Zero)  // _ADR: Address
                                If ((\_SB.PC00.PEG1.TUID <= One))
                                {
                                    If ((\_SB.PC00.PEG1.TUID == Zero))
                                    {
                                        Device (NHI4)
                                        {
                                            Name (_ADR, Zero)  // _ADR: Address
                                            If (CondRefOf (\DTRT))
                                            {
                                                Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
                                                {
                                                    If ((\DTRT == Zero))
                                                    {
                                                        ADBG ("DTBT NHI S0W return 3")
                                                        Return (0x03)
                                                    }
                                                    Else
                                                    {
                                                        ADBG ("DTBT NHI S0W return 4")
                                                        Return (0x04)
                                                    }
                                                }

                                                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                                                {
                                                }

                                                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                                                {
                                                    If (!(CondRefOf (\RPS0) && CondRefOf (\RPT0)))
                                                    {
                                                        Return (Zero)
                                                    }

                                                    If ((CondRefOf (\DSCE) && CondRefOf (\DTMB)))
                                                    {
                                                        If ((\DSCE == One))
                                                        {
                                                            \DTMB (0x48, Zero, \RPS0, \RPT0)
                                                            If (CondRefOf (\_SB.PC00.PEG1.WAKG))
                                                            {
                                                                If ((\_SB.PC00.PEG1.WAKG != Zero))
                                                                {
                                                                    \_SB.SHPO (\_SB.PC00.PEG1.WAKG, Zero)
                                                                }
                                                            }
                                                        }
                                                    }
                                                }

                                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                                {
                                                    Return (Zero)
                                                }
                                            }
                                        }
                                    }
                                    Else
                                    {
                                        Device (NHI5)
                                        {
                                            Name (_ADR, Zero)  // _ADR: Address
                                            If (CondRefOf (\DTRT))
                                            {
                                                Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
                                                {
                                                    If ((\DTRT == Zero))
                                                    {
                                                        ADBG ("DTBT NHI S0W return 3")
                                                        Return (0x03)
                                                    }
                                                    Else
                                                    {
                                                        ADBG ("DTBT NHI S0W return 4")
                                                        Return (0x04)
                                                    }
                                                }

                                                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                                                {
                                                }

                                                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                                                {
                                                    If (!(CondRefOf (\RPS1) && CondRefOf (\RPT1)))
                                                    {
                                                        Return (Zero)
                                                    }

                                                    If ((CondRefOf (\DSCE) && CondRefOf (\DTMB)))
                                                    {
                                                        If ((\DSCE == One))
                                                        {
                                                            \DTMB (0x48, Zero, \RPS1, \RPT1)
                                                            If (CondRefOf (\_SB.PC00.PEG1.WAKG))
                                                            {
                                                                If ((\_SB.PC00.PEG1.WAKG != Zero))
                                                                {
                                                                    \_SB.SHPO (\_SB.PC00.PEG1.WAKG, Zero)
                                                                }
                                                            }
                                                        }
                                                    }
                                                }

                                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                                {
                                                    Return (Zero)
                                                }
                                            }
                                        }
                                    }
                                }
                            }

                            Device (TBP1)
                            {
                                Name (_ADR, 0x00010000)  // _ADR: Address
                                Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
                                {
                                    If ((\DTRT == Zero))
                                    {
                                        ADBG ("DTBT DS1 S0W return 3")
                                        Return (0x03)
                                    }
                                    Else
                                    {
                                        ADBG ("DTBT DS1 S0W return 4")
                                        Return (0x04)
                                    }
                                }

                                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                                {
                                }

                                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                                {
                                }

                                If ((\_SB.PC00.PEG1.TUID <= One))
                                {
                                    Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                                    {
                                        If ((\_SB.PC00.PEG1.TUID == Zero))
                                        {
                                            Return (Package (0x02)
                                            {
                                                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                Package (0x02)
                                                {
                                                    Package (0x02)
                                                    {
                                                        "usb4-host-interface", 
                                                        \_SB.PC00.PEG1.PEGP.TBDH.NHI4, 
                                                    }, 

                                                    Package (0x02)
                                                    {
                                                        "usb4-port-number", 
                                                        Zero
                                                    }
                                                }
                                            })
                                        }
                                        Else
                                        {
                                            Return (Package (0x02)
                                            {
                                                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                Package (0x02)
                                                {
                                                    Package (0x02)
                                                    {
                                                        "usb4-host-interface", 
                                                        \_SB.PC00.PEG1.PEGP.TBDH.NHI5, 
                                                    }, 

                                                    Package (0x02)
                                                    {
                                                        "usb4-port-number", 
                                                        Zero
                                                    }
                                                }
                                            })
                                        }
                                    }
                                }
                            }

                            Device (TBP3)
                            {
                                Name (_ADR, 0x00030000)  // _ADR: Address
                                Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
                                {
                                    If ((\DTRT == Zero))
                                    {
                                        ADBG ("DTBT DS3 S0W return 3")
                                        Return (0x03)
                                    }
                                    Else
                                    {
                                        ADBG ("DTBT DS3 S0W return 4")
                                        Return (0x04)
                                    }
                                }

                                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                                {
                                }

                                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                                {
                                }

                                If ((\_SB.PC00.PEG1.TUID <= One))
                                {
                                    Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                                    {
                                        If ((\_SB.PC00.PEG1.TUID == Zero))
                                        {
                                            Return (Package (0x02)
                                            {
                                                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                Package (0x02)
                                                {
                                                    Package (0x02)
                                                    {
                                                        "usb4-host-interface", 
                                                        \_SB.PC00.PEG1.PEGP.TBDH.NHI4, 
                                                    }, 

                                                    Package (0x02)
                                                    {
                                                        "usb4-port-number", 
                                                        One
                                                    }
                                                }
                                            })
                                        }
                                        Else
                                        {
                                            Return (Package (0x02)
                                            {
                                                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                Package (0x02)
                                                {
                                                    Package (0x02)
                                                    {
                                                        "usb4-host-interface", 
                                                        \_SB.PC00.PEG1.PEGP.TBDH.NHI5, 
                                                    }, 

                                                    Package (0x02)
                                                    {
                                                        "usb4-port-number", 
                                                        One
                                                    }
                                                }
                                            })
                                        }
                                    }
                                }
                            }
                        }
                    }
                }

                If (((RPS0 == 0x03) || (RPS1 == 0x03)))
                {
                    Scope (\_SB.PC00.PEG2.PEGP)
                    {
                        Name (TURP, 0x03)
                        Device (TBDU)
                        {
                            Name (_ADR, 0x00020000)  // _ADR: Address
                            Device (XHCI)
                            {
                                Name (_ADR, Zero)  // _ADR: Address
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    ADBG ("DTBT XHCI S0W")
                                    Return (0x04)
                                }

                                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                                {
                                    ADBG ("DTBT XHCI PS0")
                                }

                                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                                {
                                    ADBG ("DTBT XHCI PS3")
                                }

                                Device (RHUB)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                    {
                                        ADBG ("DTBT XHCI RHUB S0W return 4")
                                        Return (0x04)
                                    }

                                    Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                                    {
                                        ADBG ("DTBT XHCI RHUB PS0")
                                    }

                                    Method (_PS2, 0, Serialized)  // _PS2: Power State 2
                                    {
                                        ADBG ("DTBT XHCI RHUB PS2")
                                    }

                                    Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                                    {
                                        ADBG ("DTBT XHCI RHUB PS3")
                                    }

                                    Method (SLMS, 1, Serialized)
                                    {
                                        Local0 = (TURP << 0x02)
                                        Local0 |= One
                                        If ((((TP1D >> One) == Local0) && (Arg0 == TP1T)))
                                        {
                                            Return ((TP1D & One))
                                        }
                                        ElseIf ((((TP2D >> One) == Local0) && (Arg0 == TP2T)))
                                        {
                                            Return ((TP2D & One))
                                        }
                                        ElseIf ((((TP3D >> One) == Local0) && (Arg0 == TP3T)))
                                        {
                                            Return ((TP3D & One))
                                        }
                                        ElseIf ((((TP4D >> One) == Local0) && (Arg0 == TP4T)))
                                        {
                                            Return ((TP4D & One))
                                        }
                                        ElseIf ((((TP5D >> One) == Local0) && (Arg0 == TP5T)))
                                        {
                                            Return ((TP5D & One))
                                        }
                                        ElseIf ((((TP6D >> One) == Local0) && (Arg0 == TP6T)))
                                        {
                                            Return ((TP6D & One))
                                        }
                                        Else
                                        {
                                            Return (Zero)
                                        }
                                    }

                                    Method (FPCP, 2, Serialized)
                                    {
                                        Local0 = (TURP << 0x02)
                                        Local0 |= One
                                        If ((((TP1D >> One) == Local0) && (Arg0 == TP1T)))
                                        {
                                            Return (\_SB.UBTC.RUCC (One, Arg1))
                                        }
                                        ElseIf ((((TP2D >> One) == Local0) && (Arg0 == TP2T)))
                                        {
                                            Return (\_SB.UBTC.RUCC (0x02, Arg1))
                                        }
                                        ElseIf ((((TP3D >> One) == Local0) && (Arg0 == TP3T)))
                                        {
                                            Return (\_SB.UBTC.RUCC (0x03, Arg1))
                                        }
                                        ElseIf ((((TP4D >> One) == Local0) && (Arg0 == TP4T)))
                                        {
                                            Return (\_SB.UBTC.RUCC (0x04, Arg1))
                                        }
                                        ElseIf ((((TP5D >> One) == Local0) && (Arg0 == TP5T)))
                                        {
                                            Return (\_SB.UBTC.RUCC (0x05, Arg1))
                                        }
                                        ElseIf ((((TP6D >> One) == Local0) && (Arg0 == TP6T)))
                                        {
                                            Return (\_SB.UBTC.RUCC (0x06, Arg1))
                                        }
                                        ElseIf ((Arg1 == One))
                                        {
                                            Return (TUPC (Zero, Zero))
                                        }
                                        Else
                                        {
                                            Return (TPLD (Zero, Zero))
                                        }
                                    }

                                    Method (FPSP, 1, Serialized)
                                    {
                                        Local0 = (TURP << 0x02)
                                        Local0 |= One
                                        If ((((TP1D >> One) == Local0) && (Arg0 == TP1T)))
                                        {
                                            Return (One)
                                        }
                                        ElseIf ((((TP2D >> One) == Local0) && (Arg0 == TP2T)))
                                        {
                                            Return (One)
                                        }
                                        ElseIf ((((TP3D >> One) == Local0) && (Arg0 == TP3T)))
                                        {
                                            Return (One)
                                        }
                                        ElseIf ((((TP4D >> One) == Local0) && (Arg0 == TP4T)))
                                        {
                                            Return (One)
                                        }
                                        ElseIf ((((TP5D >> One) == Local0) && (Arg0 == TP5T)))
                                        {
                                            Return (One)
                                        }
                                        ElseIf ((((TP6D >> One) == Local0) && (Arg0 == TP6T)))
                                        {
                                            Return (One)
                                        }
                                        Else
                                        {
                                            Return (Zero)
                                        }
                                    }

                                    Method (TPLD, 2, Serialized)
                                    {
                                        Name (PCKG, Package (0x01)
                                        {
                                            Buffer (0x10){}
                                        })
                                        CreateField (DerefOf (PCKG [Zero]), Zero, 0x07, REV)
                                        REV = One
                                        CreateField (DerefOf (PCKG [Zero]), 0x40, One, VISI)
                                        VISI = Arg0
                                        CreateField (DerefOf (PCKG [Zero]), 0x57, 0x08, GPOS)
                                        GPOS = Arg1
                                        CreateField (DerefOf (PCKG [Zero]), 0x4A, 0x04, SHAP)
                                        SHAP = One
                                        CreateField (DerefOf (PCKG [Zero]), 0x20, 0x10, WID)
                                        WID = 0x08
                                        CreateField (DerefOf (PCKG [Zero]), 0x30, 0x10, HGT)
                                        HGT = 0x03
                                        Return (PCKG) /* \_SB_.PC00.PEG2.PEGP.TBDU.XHCI.RHUB.TPLD.PCKG */
                                    }

                                    Method (TUPC, 2, Serialized)
                                    {
                                        Name (PCKG, Package (0x04)
                                        {
                                            One, 
                                            Zero, 
                                            Zero, 
                                            Zero
                                        })
                                        PCKG [Zero] = Arg0
                                        PCKG [One] = Arg1
                                        Return (PCKG) /* \_SB_.PC00.PEG2.PEGP.TBDU.XHCI.RHUB.TUPC.PCKG */
                                    }

                                    If ((FPSP (One) == One))
                                    {
                                        Device (HS01)
                                        {
                                            Name (_ADR, One)  // _ADR: Address
                                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                            {
                                                If ((SLMS (One) == Zero))
                                                {
                                                    Return (FPCP (One, One))
                                                }
                                                Else
                                                {
                                                    Return (TUPC (Zero, Zero))
                                                }
                                            }

                                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                            {
                                                If ((SLMS (One) == Zero))
                                                {
                                                    Return (FPCP (One, 0x02))
                                                }
                                                Else
                                                {
                                                    Return (TPLD (Zero, Zero))
                                                }
                                            }
                                        }
                                    }

                                    If ((FPSP (0x02) == One))
                                    {
                                        Device (HS02)
                                        {
                                            Name (_ADR, 0x02)  // _ADR: Address
                                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                            {
                                                If ((SLMS (0x02) == Zero))
                                                {
                                                    Return (FPCP (0x02, One))
                                                }
                                                Else
                                                {
                                                    Return (TUPC (Zero, Zero))
                                                }
                                            }

                                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                            {
                                                If ((SLMS (0x02) == Zero))
                                                {
                                                    Return (FPCP (0x02, 0x02))
                                                }
                                                Else
                                                {
                                                    Return (TPLD (Zero, Zero))
                                                }
                                            }
                                        }
                                    }

                                    If ((FPSP (One) == One))
                                    {
                                        Device (SS01)
                                        {
                                            Name (_ADR, 0x03)  // _ADR: Address
                                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                            {
                                                Return (FPCP (One, One))
                                            }

                                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                            {
                                                Return (FPCP (One, 0x02))
                                            }

                                            If (CondRefOf (\_SB.PC00.PEG2.TUID))
                                            {
                                                ADBG (Concatenate ("DTBT SS01 TUID = ", ToHexString (\_SB.PC00.PEG2.TUID)))
                                                If ((\_SB.PC00.PEG2.TUID <= One))
                                                {
                                                    Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                                                    {
                                                        ADBG ("DTBT SS01 DSD")
                                                        If ((\_SB.PC00.PEG2.TUID == Zero))
                                                        {
                                                            Return (Package (0x02)
                                                            {
                                                                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                                Package (0x02)
                                                                {
                                                                    Package (0x02)
                                                                    {
                                                                        "usb4-host-interface", 
                                                                        \_SB.PC00.PEG2.PEGP.TBDH.NHI4, 
                                                                    }, 

                                                                    Package (0x02)
                                                                    {
                                                                        "usb4-port-number", 
                                                                        Zero
                                                                    }
                                                                }
                                                            })
                                                        }
                                                        Else
                                                        {
                                                            Return (Package (0x02)
                                                            {
                                                                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                                Package (0x02)
                                                                {
                                                                    Package (0x02)
                                                                    {
                                                                        "usb4-host-interface", 
                                                                        \_SB.PC00.PEG2.PEGP.TBDH.NHI5, 
                                                                    }, 

                                                                    Package (0x02)
                                                                    {
                                                                        "usb4-port-number", 
                                                                        Zero
                                                                    }
                                                                }
                                                            })
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }

                                    If ((FPSP (0x02) == One))
                                    {
                                        Device (SS02)
                                        {
                                            Name (_ADR, 0x04)  // _ADR: Address
                                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                            {
                                                Return (FPCP (0x02, One))
                                            }

                                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                            {
                                                Return (FPCP (0x02, 0x02))
                                            }

                                            If (CondRefOf (\_SB.PC00.PEG2.TUID))
                                            {
                                                ADBG (Concatenate ("DTBT SS02 TUID = ", ToHexString (\_SB.PC00.PEG2.TUID)))
                                                If ((\_SB.PC00.PEG2.TUID <= One))
                                                {
                                                    Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                                                    {
                                                        ADBG ("DTBT SS02 DSD")
                                                        If ((\_SB.PC00.PEG2.TUID == Zero))
                                                        {
                                                            Return (Package (0x02)
                                                            {
                                                                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                                Package (0x02)
                                                                {
                                                                    Package (0x02)
                                                                    {
                                                                        "usb4-host-interface", 
                                                                        \_SB.PC00.PEG2.PEGP.TBDH.NHI4, 
                                                                    }, 

                                                                    Package (0x02)
                                                                    {
                                                                        "usb4-port-number", 
                                                                        One
                                                                    }
                                                                }
                                                            })
                                                        }
                                                        Else
                                                        {
                                                            Return (Package (0x02)
                                                            {
                                                                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                                Package (0x02)
                                                                {
                                                                    Package (0x02)
                                                                    {
                                                                        "usb4-host-interface", 
                                                                        \_SB.PC00.PEG2.PEGP.TBDH.NHI5, 
                                                                    }, 

                                                                    Package (0x02)
                                                                    {
                                                                        "usb4-port-number", 
                                                                        One
                                                                    }
                                                                }
                                                            })
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    Return (Zero)
                                }
                            }
                        }

                        If ((CondRefOf (\_SB.PC00.PEG2.TUID) && CondRefOf (\DTRT)))
                        {
                            Device (TBDH)
                            {
                                Name (_ADR, Zero)  // _ADR: Address
                                If ((\_SB.PC00.PEG2.TUID <= One))
                                {
                                    If ((\_SB.PC00.PEG2.TUID == Zero))
                                    {
                                        Device (NHI4)
                                        {
                                            Name (_ADR, Zero)  // _ADR: Address
                                            If (CondRefOf (\DTRT))
                                            {
                                                Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
                                                {
                                                    If ((\DTRT == Zero))
                                                    {
                                                        ADBG ("DTBT NHI S0W return 3")
                                                        Return (0x03)
                                                    }
                                                    Else
                                                    {
                                                        ADBG ("DTBT NHI S0W return 4")
                                                        Return (0x04)
                                                    }
                                                }

                                                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                                                {
                                                }

                                                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                                                {
                                                    If (!(CondRefOf (\RPS0) && CondRefOf (\RPT0)))
                                                    {
                                                        Return (Zero)
                                                    }

                                                    If ((CondRefOf (\DSCE) && CondRefOf (\DTMB)))
                                                    {
                                                        If ((\DSCE == One))
                                                        {
                                                            \DTMB (0x48, Zero, \RPS0, \RPT0)
                                                            If (CondRefOf (\_SB.PC00.PEG2.WAKG))
                                                            {
                                                                If ((\_SB.PC00.PEG2.WAKG != Zero))
                                                                {
                                                                    \_SB.SHPO (\_SB.PC00.PEG2.WAKG, Zero)
                                                                }
                                                            }
                                                        }
                                                    }
                                                }

                                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                                {
                                                    Return (Zero)
                                                }
                                            }
                                        }
                                    }
                                    Else
                                    {
                                        Device (NHI5)
                                        {
                                            Name (_ADR, Zero)  // _ADR: Address
                                            If (CondRefOf (\DTRT))
                                            {
                                                Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
                                                {
                                                    If ((\DTRT == Zero))
                                                    {
                                                        ADBG ("DTBT NHI S0W return 3")
                                                        Return (0x03)
                                                    }
                                                    Else
                                                    {
                                                        ADBG ("DTBT NHI S0W return 4")
                                                        Return (0x04)
                                                    }
                                                }

                                                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                                                {
                                                }

                                                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                                                {
                                                    If (!(CondRefOf (\RPS1) && CondRefOf (\RPT1)))
                                                    {
                                                        Return (Zero)
                                                    }

                                                    If ((CondRefOf (\DSCE) && CondRefOf (\DTMB)))
                                                    {
                                                        If ((\DSCE == One))
                                                        {
                                                            \DTMB (0x48, Zero, \RPS1, \RPT1)
                                                            If (CondRefOf (\_SB.PC00.PEG2.WAKG))
                                                            {
                                                                If ((\_SB.PC00.PEG2.WAKG != Zero))
                                                                {
                                                                    \_SB.SHPO (\_SB.PC00.PEG2.WAKG, Zero)
                                                                }
                                                            }
                                                        }
                                                    }
                                                }

                                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                                {
                                                    Return (Zero)
                                                }
                                            }
                                        }
                                    }
                                }
                            }

                            Device (TBP1)
                            {
                                Name (_ADR, 0x00010000)  // _ADR: Address
                                Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
                                {
                                    If ((\DTRT == Zero))
                                    {
                                        ADBG ("DTBT DS1 S0W return 3")
                                        Return (0x03)
                                    }
                                    Else
                                    {
                                        ADBG ("DTBT DS1 S0W return 4")
                                        Return (0x04)
                                    }
                                }

                                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                                {
                                }

                                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                                {
                                }

                                If ((\_SB.PC00.PEG2.TUID <= One))
                                {
                                    Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                                    {
                                        If ((\_SB.PC00.PEG2.TUID == Zero))
                                        {
                                            Return (Package (0x02)
                                            {
                                                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                Package (0x02)
                                                {
                                                    Package (0x02)
                                                    {
                                                        "usb4-host-interface", 
                                                        \_SB.PC00.PEG2.PEGP.TBDH.NHI4, 
                                                    }, 

                                                    Package (0x02)
                                                    {
                                                        "usb4-port-number", 
                                                        Zero
                                                    }
                                                }
                                            })
                                        }
                                        Else
                                        {
                                            Return (Package (0x02)
                                            {
                                                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                Package (0x02)
                                                {
                                                    Package (0x02)
                                                    {
                                                        "usb4-host-interface", 
                                                        \_SB.PC00.PEG2.PEGP.TBDH.NHI5, 
                                                    }, 

                                                    Package (0x02)
                                                    {
                                                        "usb4-port-number", 
                                                        Zero
                                                    }
                                                }
                                            })
                                        }
                                    }
                                }
                            }

                            Device (TBP3)
                            {
                                Name (_ADR, 0x00030000)  // _ADR: Address
                                Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
                                {
                                    If ((\DTRT == Zero))
                                    {
                                        ADBG ("DTBT DS3 S0W return 3")
                                        Return (0x03)
                                    }
                                    Else
                                    {
                                        ADBG ("DTBT DS3 S0W return 4")
                                        Return (0x04)
                                    }
                                }

                                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                                {
                                }

                                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                                {
                                }

                                If ((\_SB.PC00.PEG2.TUID <= One))
                                {
                                    Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                                    {
                                        If ((\_SB.PC00.PEG2.TUID == Zero))
                                        {
                                            Return (Package (0x02)
                                            {
                                                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                Package (0x02)
                                                {
                                                    Package (0x02)
                                                    {
                                                        "usb4-host-interface", 
                                                        \_SB.PC00.PEG2.PEGP.TBDH.NHI4, 
                                                    }, 

                                                    Package (0x02)
                                                    {
                                                        "usb4-port-number", 
                                                        One
                                                    }
                                                }
                                            })
                                        }
                                        Else
                                        {
                                            Return (Package (0x02)
                                            {
                                                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                Package (0x02)
                                                {
                                                    Package (0x02)
                                                    {
                                                        "usb4-host-interface", 
                                                        \_SB.PC00.PEG2.PEGP.TBDH.NHI5, 
                                                    }, 

                                                    Package (0x02)
                                                    {
                                                        "usb4-port-number", 
                                                        One
                                                    }
                                                }
                                            })
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        If (((DTFS == One) && ((RPS0 == One) || (RPS1 == One))))
        {
            Scope (\_SB.PC00.RP01.PXSX)
            {
                Name (TURP, One)
                Device (TBDU)
                {
                    Name (_ADR, 0x00020000)  // _ADR: Address
                    Device (XHCI)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                        {
                            ADBG ("DTBT XHCI S0W")
                            Return (0x04)
                        }

                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                        {
                            ADBG ("DTBT XHCI PS0")
                        }

                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                        {
                            ADBG ("DTBT XHCI PS3")
                        }

                        Device (RHUB)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                            {
                                ADBG ("DTBT XHCI RHUB S0W return 4")
                                Return (0x04)
                            }

                            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                            {
                                ADBG ("DTBT XHCI RHUB PS0")
                            }

                            Method (_PS2, 0, Serialized)  // _PS2: Power State 2
                            {
                                ADBG ("DTBT XHCI RHUB PS2")
                            }

                            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                            {
                                ADBG ("DTBT XHCI RHUB PS3")
                            }

                            Method (SLMS, 1, Serialized)
                            {
                                Local0 = (TURP << 0x02)
                                Local0 |= One
                                If ((((TP1D >> One) == Local0) && (Arg0 == TP1T)))
                                {
                                    Return ((TP1D & One))
                                }
                                ElseIf ((((TP2D >> One) == Local0) && (Arg0 == TP2T)))
                                {
                                    Return ((TP2D & One))
                                }
                                ElseIf ((((TP3D >> One) == Local0) && (Arg0 == TP3T)))
                                {
                                    Return ((TP3D & One))
                                }
                                ElseIf ((((TP4D >> One) == Local0) && (Arg0 == TP4T)))
                                {
                                    Return ((TP4D & One))
                                }
                                ElseIf ((((TP5D >> One) == Local0) && (Arg0 == TP5T)))
                                {
                                    Return ((TP5D & One))
                                }
                                ElseIf ((((TP6D >> One) == Local0) && (Arg0 == TP6T)))
                                {
                                    Return ((TP6D & One))
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }

                            Method (FPCP, 2, Serialized)
                            {
                                Local0 = (TURP << 0x02)
                                Local0 |= One
                                If ((((TP1D >> One) == Local0) && (Arg0 == TP1T)))
                                {
                                    Return (\_SB.UBTC.RUCC (One, Arg1))
                                }
                                ElseIf ((((TP2D >> One) == Local0) && (Arg0 == TP2T)))
                                {
                                    Return (\_SB.UBTC.RUCC (0x02, Arg1))
                                }
                                ElseIf ((((TP3D >> One) == Local0) && (Arg0 == TP3T)))
                                {
                                    Return (\_SB.UBTC.RUCC (0x03, Arg1))
                                }
                                ElseIf ((((TP4D >> One) == Local0) && (Arg0 == TP4T)))
                                {
                                    Return (\_SB.UBTC.RUCC (0x04, Arg1))
                                }
                                ElseIf ((((TP5D >> One) == Local0) && (Arg0 == TP5T)))
                                {
                                    Return (\_SB.UBTC.RUCC (0x05, Arg1))
                                }
                                ElseIf ((((TP6D >> One) == Local0) && (Arg0 == TP6T)))
                                {
                                    Return (\_SB.UBTC.RUCC (0x06, Arg1))
                                }
                                ElseIf ((Arg1 == One))
                                {
                                    Return (TUPC (Zero, Zero))
                                }
                                Else
                                {
                                    Return (TPLD (Zero, Zero))
                                }
                            }

                            Method (FPSP, 1, Serialized)
                            {
                                Local0 = (TURP << 0x02)
                                Local0 |= One
                                If ((((TP1D >> One) == Local0) && (Arg0 == TP1T)))
                                {
                                    Return (One)
                                }
                                ElseIf ((((TP2D >> One) == Local0) && (Arg0 == TP2T)))
                                {
                                    Return (One)
                                }
                                ElseIf ((((TP3D >> One) == Local0) && (Arg0 == TP3T)))
                                {
                                    Return (One)
                                }
                                ElseIf ((((TP4D >> One) == Local0) && (Arg0 == TP4T)))
                                {
                                    Return (One)
                                }
                                ElseIf ((((TP5D >> One) == Local0) && (Arg0 == TP5T)))
                                {
                                    Return (One)
                                }
                                ElseIf ((((TP6D >> One) == Local0) && (Arg0 == TP6T)))
                                {
                                    Return (One)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }

                            Method (TPLD, 2, Serialized)
                            {
                                Name (PCKG, Package (0x01)
                                {
                                    Buffer (0x10){}
                                })
                                CreateField (DerefOf (PCKG [Zero]), Zero, 0x07, REV)
                                REV = One
                                CreateField (DerefOf (PCKG [Zero]), 0x40, One, VISI)
                                VISI = Arg0
                                CreateField (DerefOf (PCKG [Zero]), 0x57, 0x08, GPOS)
                                GPOS = Arg1
                                CreateField (DerefOf (PCKG [Zero]), 0x4A, 0x04, SHAP)
                                SHAP = One
                                CreateField (DerefOf (PCKG [Zero]), 0x20, 0x10, WID)
                                WID = 0x08
                                CreateField (DerefOf (PCKG [Zero]), 0x30, 0x10, HGT)
                                HGT = 0x03
                                Return (PCKG) /* \_SB_.PC00.RP01.PXSX.TBDU.XHCI.RHUB.TPLD.PCKG */
                            }

                            Method (TUPC, 2, Serialized)
                            {
                                Name (PCKG, Package (0x04)
                                {
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                })
                                PCKG [Zero] = Arg0
                                PCKG [One] = Arg1
                                Return (PCKG) /* \_SB_.PC00.RP01.PXSX.TBDU.XHCI.RHUB.TUPC.PCKG */
                            }

                            If ((FPSP (One) == One))
                            {
                                Device (HS01)
                                {
                                    Name (_ADR, One)  // _ADR: Address
                                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                    {
                                        If ((SLMS (One) == Zero))
                                        {
                                            Return (FPCP (One, One))
                                        }
                                        Else
                                        {
                                            Return (TUPC (Zero, Zero))
                                        }
                                    }

                                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                    {
                                        If ((SLMS (One) == Zero))
                                        {
                                            Return (FPCP (One, 0x02))
                                        }
                                        Else
                                        {
                                            Return (TPLD (Zero, Zero))
                                        }
                                    }
                                }
                            }

                            If ((FPSP (0x02) == One))
                            {
                                Device (HS02)
                                {
                                    Name (_ADR, 0x02)  // _ADR: Address
                                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                    {
                                        If ((SLMS (0x02) == Zero))
                                        {
                                            Return (FPCP (0x02, One))
                                        }
                                        Else
                                        {
                                            Return (TUPC (Zero, Zero))
                                        }
                                    }

                                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                    {
                                        If ((SLMS (0x02) == Zero))
                                        {
                                            Return (FPCP (0x02, 0x02))
                                        }
                                        Else
                                        {
                                            Return (TPLD (Zero, Zero))
                                        }
                                    }
                                }
                            }

                            If ((FPSP (One) == One))
                            {
                                Device (SS01)
                                {
                                    Name (_ADR, 0x03)  // _ADR: Address
                                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                    {
                                        Return (FPCP (One, One))
                                    }

                                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                    {
                                        Return (FPCP (One, 0x02))
                                    }

                                    If (CondRefOf (\_SB.PC00.RP01.TUID))
                                    {
                                        ADBG (Concatenate ("DTBT SS01 TUID = ", ToHexString (\_SB.PC00.RP01.TUID)))
                                        If ((\_SB.PC00.RP01.TUID <= One))
                                        {
                                            Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                                            {
                                                ADBG ("DTBT SS01 DSD")
                                                If ((\_SB.PC00.RP01.TUID == Zero))
                                                {
                                                    Return (Package (0x02)
                                                    {
                                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                        Package (0x02)
                                                        {
                                                            Package (0x02)
                                                            {
                                                                "usb4-host-interface", 
                                                                \_SB.PC00.RP01.PXSX.TBDH.NHI4, 
                                                            }, 

                                                            Package (0x02)
                                                            {
                                                                "usb4-port-number", 
                                                                Zero
                                                            }
                                                        }
                                                    })
                                                }
                                                Else
                                                {
                                                    Return (Package (0x02)
                                                    {
                                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                        Package (0x02)
                                                        {
                                                            Package (0x02)
                                                            {
                                                                "usb4-host-interface", 
                                                                \_SB.PC00.RP01.PXSX.TBDH.NHI5, 
                                                            }, 

                                                            Package (0x02)
                                                            {
                                                                "usb4-port-number", 
                                                                Zero
                                                            }
                                                        }
                                                    })
                                                }
                                            }
                                        }
                                    }
                                }
                            }

                            If ((FPSP (0x02) == One))
                            {
                                Device (SS02)
                                {
                                    Name (_ADR, 0x04)  // _ADR: Address
                                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                    {
                                        Return (FPCP (0x02, One))
                                    }

                                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                    {
                                        Return (FPCP (0x02, 0x02))
                                    }

                                    If (CondRefOf (\_SB.PC00.RP01.TUID))
                                    {
                                        ADBG (Concatenate ("DTBT SS02 TUID = ", ToHexString (\_SB.PC00.RP01.TUID)))
                                        If ((\_SB.PC00.RP01.TUID <= One))
                                        {
                                            Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                                            {
                                                ADBG ("DTBT SS02 DSD")
                                                If ((\_SB.PC00.RP01.TUID == Zero))
                                                {
                                                    Return (Package (0x02)
                                                    {
                                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                        Package (0x02)
                                                        {
                                                            Package (0x02)
                                                            {
                                                                "usb4-host-interface", 
                                                                \_SB.PC00.RP01.PXSX.TBDH.NHI4, 
                                                            }, 

                                                            Package (0x02)
                                                            {
                                                                "usb4-port-number", 
                                                                One
                                                            }
                                                        }
                                                    })
                                                }
                                                Else
                                                {
                                                    Return (Package (0x02)
                                                    {
                                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                        Package (0x02)
                                                        {
                                                            Package (0x02)
                                                            {
                                                                "usb4-host-interface", 
                                                                \_SB.PC00.RP01.PXSX.TBDH.NHI5, 
                                                            }, 

                                                            Package (0x02)
                                                            {
                                                                "usb4-port-number", 
                                                                One
                                                            }
                                                        }
                                                    })
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }
                    }
                }

                If ((CondRefOf (\_SB.PC00.RP01.TUID) && CondRefOf (\DTRT)))
                {
                    Device (TBDH)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        If ((\_SB.PC00.RP01.TUID <= One))
                        {
                            If ((\_SB.PC00.RP01.TUID == Zero))
                            {
                                Device (NHI4)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    If (CondRefOf (\DTRT))
                                    {
                                        Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
                                        {
                                            If ((\DTRT == Zero))
                                            {
                                                ADBG ("DTBT NHI S0W return 3")
                                                Return (0x03)
                                            }
                                            Else
                                            {
                                                ADBG ("DTBT NHI S0W return 4")
                                                Return (0x04)
                                            }
                                        }

                                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                                        {
                                        }

                                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                                        {
                                            If (!(CondRefOf (\RPS0) && CondRefOf (\RPT0)))
                                            {
                                                Return (Zero)
                                            }

                                            If ((CondRefOf (\DSCE) && CondRefOf (\DTMB)))
                                            {
                                                If ((\DSCE == One))
                                                {
                                                    \DTMB (0x48, Zero, \RPS0, \RPT0)
                                                    If (CondRefOf (\_SB.PC00.RP01.WAKG))
                                                    {
                                                        If ((\_SB.PC00.RP01.WAKG != Zero))
                                                        {
                                                            \_SB.SHPO (\_SB.PC00.RP01.WAKG, Zero)
                                                        }
                                                    }
                                                }
                                            }
                                        }

                                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                        {
                                            Return (Zero)
                                        }
                                    }
                                }
                            }
                            Else
                            {
                                Device (NHI5)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    If (CondRefOf (\DTRT))
                                    {
                                        Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
                                        {
                                            If ((\DTRT == Zero))
                                            {
                                                ADBG ("DTBT NHI S0W return 3")
                                                Return (0x03)
                                            }
                                            Else
                                            {
                                                ADBG ("DTBT NHI S0W return 4")
                                                Return (0x04)
                                            }
                                        }

                                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                                        {
                                        }

                                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                                        {
                                            If (!(CondRefOf (\RPS1) && CondRefOf (\RPT1)))
                                            {
                                                Return (Zero)
                                            }

                                            If ((CondRefOf (\DSCE) && CondRefOf (\DTMB)))
                                            {
                                                If ((\DSCE == One))
                                                {
                                                    \DTMB (0x48, Zero, \RPS1, \RPT1)
                                                    If (CondRefOf (\_SB.PC00.RP01.WAKG))
                                                    {
                                                        If ((\_SB.PC00.RP01.WAKG != Zero))
                                                        {
                                                            \_SB.SHPO (\_SB.PC00.RP01.WAKG, Zero)
                                                        }
                                                    }
                                                }
                                            }
                                        }

                                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                        {
                                            Return (Zero)
                                        }
                                    }
                                }
                            }
                        }
                    }

                    Device (TBP1)
                    {
                        Name (_ADR, 0x00010000)  // _ADR: Address
                        Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
                        {
                            If ((\DTRT == Zero))
                            {
                                ADBG ("DTBT DS1 S0W return 3")
                                Return (0x03)
                            }
                            Else
                            {
                                ADBG ("DTBT DS1 S0W return 4")
                                Return (0x04)
                            }
                        }

                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                        {
                        }

                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                        {
                        }

                        If ((\_SB.PC00.RP01.TUID <= One))
                        {
                            Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                            {
                                If ((\_SB.PC00.RP01.TUID == Zero))
                                {
                                    Return (Package (0x02)
                                    {
                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                        Package (0x02)
                                        {
                                            Package (0x02)
                                            {
                                                "usb4-host-interface", 
                                                \_SB.PC00.RP01.PXSX.TBDH.NHI4, 
                                            }, 

                                            Package (0x02)
                                            {
                                                "usb4-port-number", 
                                                Zero
                                            }
                                        }
                                    })
                                }
                                Else
                                {
                                    Return (Package (0x02)
                                    {
                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                        Package (0x02)
                                        {
                                            Package (0x02)
                                            {
                                                "usb4-host-interface", 
                                                \_SB.PC00.RP01.PXSX.TBDH.NHI5, 
                                            }, 

                                            Package (0x02)
                                            {
                                                "usb4-port-number", 
                                                Zero
                                            }
                                        }
                                    })
                                }
                            }
                        }
                    }

                    Device (TBP3)
                    {
                        Name (_ADR, 0x00030000)  // _ADR: Address
                        Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
                        {
                            If ((\DTRT == Zero))
                            {
                                ADBG ("DTBT DS3 S0W return 3")
                                Return (0x03)
                            }
                            Else
                            {
                                ADBG ("DTBT DS3 S0W return 4")
                                Return (0x04)
                            }
                        }

                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                        {
                        }

                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                        {
                        }

                        If ((\_SB.PC00.RP01.TUID <= One))
                        {
                            Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                            {
                                If ((\_SB.PC00.RP01.TUID == Zero))
                                {
                                    Return (Package (0x02)
                                    {
                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                        Package (0x02)
                                        {
                                            Package (0x02)
                                            {
                                                "usb4-host-interface", 
                                                \_SB.PC00.RP01.PXSX.TBDH.NHI4, 
                                            }, 

                                            Package (0x02)
                                            {
                                                "usb4-port-number", 
                                                One
                                            }
                                        }
                                    })
                                }
                                Else
                                {
                                    Return (Package (0x02)
                                    {
                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                        Package (0x02)
                                        {
                                            Package (0x02)
                                            {
                                                "usb4-host-interface", 
                                                \_SB.PC00.RP01.PXSX.TBDH.NHI5, 
                                            }, 

                                            Package (0x02)
                                            {
                                                "usb4-port-number", 
                                                One
                                            }
                                        }
                                    })
                                }
                            }
                        }
                    }
                }
            }
        }

        If (((DTFS == One) && ((RPS0 == 0x05) || (RPS1 == 0x05))))
        {
            Scope (\_SB.PC00.RP05.PXSX)
            {
                Name (TURP, 0x05)
                Device (TBDU)
                {
                    Name (_ADR, 0x00020000)  // _ADR: Address
                    Device (XHCI)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                        {
                            ADBG ("DTBT XHCI S0W")
                            Return (0x04)
                        }

                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                        {
                            ADBG ("DTBT XHCI PS0")
                        }

                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                        {
                            ADBG ("DTBT XHCI PS3")
                        }

                        Device (RHUB)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                            {
                                ADBG ("DTBT XHCI RHUB S0W return 4")
                                Return (0x04)
                            }

                            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                            {
                                ADBG ("DTBT XHCI RHUB PS0")
                            }

                            Method (_PS2, 0, Serialized)  // _PS2: Power State 2
                            {
                                ADBG ("DTBT XHCI RHUB PS2")
                            }

                            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                            {
                                ADBG ("DTBT XHCI RHUB PS3")
                            }

                            Method (SLMS, 1, Serialized)
                            {
                                Local0 = (TURP << 0x02)
                                Local0 |= One
                                If ((((TP1D >> One) == Local0) && (Arg0 == TP1T)))
                                {
                                    Return ((TP1D & One))
                                }
                                ElseIf ((((TP2D >> One) == Local0) && (Arg0 == TP2T)))
                                {
                                    Return ((TP2D & One))
                                }
                                ElseIf ((((TP3D >> One) == Local0) && (Arg0 == TP3T)))
                                {
                                    Return ((TP3D & One))
                                }
                                ElseIf ((((TP4D >> One) == Local0) && (Arg0 == TP4T)))
                                {
                                    Return ((TP4D & One))
                                }
                                ElseIf ((((TP5D >> One) == Local0) && (Arg0 == TP5T)))
                                {
                                    Return ((TP5D & One))
                                }
                                ElseIf ((((TP6D >> One) == Local0) && (Arg0 == TP6T)))
                                {
                                    Return ((TP6D & One))
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }

                            Method (FPCP, 2, Serialized)
                            {
                                Local0 = (TURP << 0x02)
                                Local0 |= One
                                If ((((TP1D >> One) == Local0) && (Arg0 == TP1T)))
                                {
                                    Return (\_SB.UBTC.RUCC (One, Arg1))
                                }
                                ElseIf ((((TP2D >> One) == Local0) && (Arg0 == TP2T)))
                                {
                                    Return (\_SB.UBTC.RUCC (0x02, Arg1))
                                }
                                ElseIf ((((TP3D >> One) == Local0) && (Arg0 == TP3T)))
                                {
                                    Return (\_SB.UBTC.RUCC (0x03, Arg1))
                                }
                                ElseIf ((((TP4D >> One) == Local0) && (Arg0 == TP4T)))
                                {
                                    Return (\_SB.UBTC.RUCC (0x04, Arg1))
                                }
                                ElseIf ((((TP5D >> One) == Local0) && (Arg0 == TP5T)))
                                {
                                    Return (\_SB.UBTC.RUCC (0x05, Arg1))
                                }
                                ElseIf ((((TP6D >> One) == Local0) && (Arg0 == TP6T)))
                                {
                                    Return (\_SB.UBTC.RUCC (0x06, Arg1))
                                }
                                ElseIf ((Arg1 == One))
                                {
                                    Return (TUPC (Zero, Zero))
                                }
                                Else
                                {
                                    Return (TPLD (Zero, Zero))
                                }
                            }

                            Method (FPSP, 1, Serialized)
                            {
                                Local0 = (TURP << 0x02)
                                Local0 |= One
                                If ((((TP1D >> One) == Local0) && (Arg0 == TP1T)))
                                {
                                    Return (One)
                                }
                                ElseIf ((((TP2D >> One) == Local0) && (Arg0 == TP2T)))
                                {
                                    Return (One)
                                }
                                ElseIf ((((TP3D >> One) == Local0) && (Arg0 == TP3T)))
                                {
                                    Return (One)
                                }
                                ElseIf ((((TP4D >> One) == Local0) && (Arg0 == TP4T)))
                                {
                                    Return (One)
                                }
                                ElseIf ((((TP5D >> One) == Local0) && (Arg0 == TP5T)))
                                {
                                    Return (One)
                                }
                                ElseIf ((((TP6D >> One) == Local0) && (Arg0 == TP6T)))
                                {
                                    Return (One)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }

                            Method (TPLD, 2, Serialized)
                            {
                                Name (PCKG, Package (0x01)
                                {
                                    Buffer (0x10){}
                                })
                                CreateField (DerefOf (PCKG [Zero]), Zero, 0x07, REV)
                                REV = One
                                CreateField (DerefOf (PCKG [Zero]), 0x40, One, VISI)
                                VISI = Arg0
                                CreateField (DerefOf (PCKG [Zero]), 0x57, 0x08, GPOS)
                                GPOS = Arg1
                                CreateField (DerefOf (PCKG [Zero]), 0x4A, 0x04, SHAP)
                                SHAP = One
                                CreateField (DerefOf (PCKG [Zero]), 0x20, 0x10, WID)
                                WID = 0x08
                                CreateField (DerefOf (PCKG [Zero]), 0x30, 0x10, HGT)
                                HGT = 0x03
                                Return (PCKG) /* \_SB_.PC00.RP05.PXSX.TBDU.XHCI.RHUB.TPLD.PCKG */
                            }

                            Method (TUPC, 2, Serialized)
                            {
                                Name (PCKG, Package (0x04)
                                {
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                })
                                PCKG [Zero] = Arg0
                                PCKG [One] = Arg1
                                Return (PCKG) /* \_SB_.PC00.RP05.PXSX.TBDU.XHCI.RHUB.TUPC.PCKG */
                            }

                            If ((FPSP (One) == One))
                            {
                                Device (HS01)
                                {
                                    Name (_ADR, One)  // _ADR: Address
                                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                    {
                                        If ((SLMS (One) == Zero))
                                        {
                                            Return (FPCP (One, One))
                                        }
                                        Else
                                        {
                                            Return (TUPC (Zero, Zero))
                                        }
                                    }

                                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                    {
                                        If ((SLMS (One) == Zero))
                                        {
                                            Return (FPCP (One, 0x02))
                                        }
                                        Else
                                        {
                                            Return (TPLD (Zero, Zero))
                                        }
                                    }
                                }
                            }

                            If ((FPSP (0x02) == One))
                            {
                                Device (HS02)
                                {
                                    Name (_ADR, 0x02)  // _ADR: Address
                                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                    {
                                        If ((SLMS (0x02) == Zero))
                                        {
                                            Return (FPCP (0x02, One))
                                        }
                                        Else
                                        {
                                            Return (TUPC (Zero, Zero))
                                        }
                                    }

                                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                    {
                                        If ((SLMS (0x02) == Zero))
                                        {
                                            Return (FPCP (0x02, 0x02))
                                        }
                                        Else
                                        {
                                            Return (TPLD (Zero, Zero))
                                        }
                                    }
                                }
                            }

                            If ((FPSP (One) == One))
                            {
                                Device (SS01)
                                {
                                    Name (_ADR, 0x03)  // _ADR: Address
                                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                    {
                                        Return (FPCP (One, One))
                                    }

                                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                    {
                                        Return (FPCP (One, 0x02))
                                    }

                                    If (CondRefOf (\_SB.PC00.RP05.TUID))
                                    {
                                        ADBG (Concatenate ("DTBT SS01 TUID = ", ToHexString (\_SB.PC00.RP05.TUID)))
                                        If ((\_SB.PC00.RP05.TUID <= One))
                                        {
                                            Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                                            {
                                                ADBG ("DTBT SS01 DSD")
                                                If ((\_SB.PC00.RP05.TUID == Zero))
                                                {
                                                    Return (Package (0x02)
                                                    {
                                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                        Package (0x02)
                                                        {
                                                            Package (0x02)
                                                            {
                                                                "usb4-host-interface", 
                                                                \_SB.PC00.RP05.PXSX.TBDH.NHI4, 
                                                            }, 

                                                            Package (0x02)
                                                            {
                                                                "usb4-port-number", 
                                                                Zero
                                                            }
                                                        }
                                                    })
                                                }
                                                Else
                                                {
                                                    Return (Package (0x02)
                                                    {
                                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                        Package (0x02)
                                                        {
                                                            Package (0x02)
                                                            {
                                                                "usb4-host-interface", 
                                                                \_SB.PC00.RP05.PXSX.TBDH.NHI5, 
                                                            }, 

                                                            Package (0x02)
                                                            {
                                                                "usb4-port-number", 
                                                                Zero
                                                            }
                                                        }
                                                    })
                                                }
                                            }
                                        }
                                    }
                                }
                            }

                            If ((FPSP (0x02) == One))
                            {
                                Device (SS02)
                                {
                                    Name (_ADR, 0x04)  // _ADR: Address
                                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                    {
                                        Return (FPCP (0x02, One))
                                    }

                                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                    {
                                        Return (FPCP (0x02, 0x02))
                                    }

                                    If (CondRefOf (\_SB.PC00.RP05.TUID))
                                    {
                                        ADBG (Concatenate ("DTBT SS02 TUID = ", ToHexString (\_SB.PC00.RP05.TUID)))
                                        If ((\_SB.PC00.RP05.TUID <= One))
                                        {
                                            Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                                            {
                                                ADBG ("DTBT SS02 DSD")
                                                If ((\_SB.PC00.RP05.TUID == Zero))
                                                {
                                                    Return (Package (0x02)
                                                    {
                                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                        Package (0x02)
                                                        {
                                                            Package (0x02)
                                                            {
                                                                "usb4-host-interface", 
                                                                \_SB.PC00.RP05.PXSX.TBDH.NHI4, 
                                                            }, 

                                                            Package (0x02)
                                                            {
                                                                "usb4-port-number", 
                                                                One
                                                            }
                                                        }
                                                    })
                                                }
                                                Else
                                                {
                                                    Return (Package (0x02)
                                                    {
                                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                        Package (0x02)
                                                        {
                                                            Package (0x02)
                                                            {
                                                                "usb4-host-interface", 
                                                                \_SB.PC00.RP05.PXSX.TBDH.NHI5, 
                                                            }, 

                                                            Package (0x02)
                                                            {
                                                                "usb4-port-number", 
                                                                One
                                                            }
                                                        }
                                                    })
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }
                    }
                }

                If ((CondRefOf (\_SB.PC00.RP05.TUID) && CondRefOf (\DTRT)))
                {
                    Device (TBDH)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        If ((\_SB.PC00.RP05.TUID <= One))
                        {
                            If ((\_SB.PC00.RP05.TUID == Zero))
                            {
                                Device (NHI4)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    If (CondRefOf (\DTRT))
                                    {
                                        Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
                                        {
                                            If ((\DTRT == Zero))
                                            {
                                                ADBG ("DTBT NHI S0W return 3")
                                                Return (0x03)
                                            }
                                            Else
                                            {
                                                ADBG ("DTBT NHI S0W return 4")
                                                Return (0x04)
                                            }
                                        }

                                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                                        {
                                        }

                                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                                        {
                                            If (!(CondRefOf (\RPS0) && CondRefOf (\RPT0)))
                                            {
                                                Return (Zero)
                                            }

                                            If ((CondRefOf (\DSCE) && CondRefOf (\DTMB)))
                                            {
                                                If ((\DSCE == One))
                                                {
                                                    \DTMB (0x48, Zero, \RPS0, \RPT0)
                                                    If (CondRefOf (\_SB.PC00.RP05.WAKG))
                                                    {
                                                        If ((\_SB.PC00.RP05.WAKG != Zero))
                                                        {
                                                            \_SB.SHPO (\_SB.PC00.RP05.WAKG, Zero)
                                                        }
                                                    }
                                                }
                                            }
                                        }

                                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                        {
                                            Return (Zero)
                                        }
                                    }
                                }
                            }
                            Else
                            {
                                Device (NHI5)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    If (CondRefOf (\DTRT))
                                    {
                                        Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
                                        {
                                            If ((\DTRT == Zero))
                                            {
                                                ADBG ("DTBT NHI S0W return 3")
                                                Return (0x03)
                                            }
                                            Else
                                            {
                                                ADBG ("DTBT NHI S0W return 4")
                                                Return (0x04)
                                            }
                                        }

                                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                                        {
                                        }

                                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                                        {
                                            If (!(CondRefOf (\RPS1) && CondRefOf (\RPT1)))
                                            {
                                                Return (Zero)
                                            }

                                            If ((CondRefOf (\DSCE) && CondRefOf (\DTMB)))
                                            {
                                                If ((\DSCE == One))
                                                {
                                                    \DTMB (0x48, Zero, \RPS1, \RPT1)
                                                    If (CondRefOf (\_SB.PC00.RP05.WAKG))
                                                    {
                                                        If ((\_SB.PC00.RP05.WAKG != Zero))
                                                        {
                                                            \_SB.SHPO (\_SB.PC00.RP05.WAKG, Zero)
                                                        }
                                                    }
                                                }
                                            }
                                        }

                                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                        {
                                            Return (Zero)
                                        }
                                    }
                                }
                            }
                        }
                    }

                    Device (TBP1)
                    {
                        Name (_ADR, 0x00010000)  // _ADR: Address
                        Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
                        {
                            If ((\DTRT == Zero))
                            {
                                ADBG ("DTBT DS1 S0W return 3")
                                Return (0x03)
                            }
                            Else
                            {
                                ADBG ("DTBT DS1 S0W return 4")
                                Return (0x04)
                            }
                        }

                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                        {
                        }

                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                        {
                        }

                        If ((\_SB.PC00.RP05.TUID <= One))
                        {
                            Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                            {
                                If ((\_SB.PC00.RP05.TUID == Zero))
                                {
                                    Return (Package (0x02)
                                    {
                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                        Package (0x02)
                                        {
                                            Package (0x02)
                                            {
                                                "usb4-host-interface", 
                                                \_SB.PC00.RP05.PXSX.TBDH.NHI4, 
                                            }, 

                                            Package (0x02)
                                            {
                                                "usb4-port-number", 
                                                Zero
                                            }
                                        }
                                    })
                                }
                                Else
                                {
                                    Return (Package (0x02)
                                    {
                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                        Package (0x02)
                                        {
                                            Package (0x02)
                                            {
                                                "usb4-host-interface", 
                                                \_SB.PC00.RP05.PXSX.TBDH.NHI5, 
                                            }, 

                                            Package (0x02)
                                            {
                                                "usb4-port-number", 
                                                Zero
                                            }
                                        }
                                    })
                                }
                            }
                        }
                    }

                    Device (TBP3)
                    {
                        Name (_ADR, 0x00030000)  // _ADR: Address
                        Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
                        {
                            If ((\DTRT == Zero))
                            {
                                ADBG ("DTBT DS3 S0W return 3")
                                Return (0x03)
                            }
                            Else
                            {
                                ADBG ("DTBT DS3 S0W return 4")
                                Return (0x04)
                            }
                        }

                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                        {
                        }

                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                        {
                        }

                        If ((\_SB.PC00.RP05.TUID <= One))
                        {
                            Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                            {
                                If ((\_SB.PC00.RP05.TUID == Zero))
                                {
                                    Return (Package (0x02)
                                    {
                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                        Package (0x02)
                                        {
                                            Package (0x02)
                                            {
                                                "usb4-host-interface", 
                                                \_SB.PC00.RP05.PXSX.TBDH.NHI4, 
                                            }, 

                                            Package (0x02)
                                            {
                                                "usb4-port-number", 
                                                One
                                            }
                                        }
                                    })
                                }
                                Else
                                {
                                    Return (Package (0x02)
                                    {
                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                        Package (0x02)
                                        {
                                            Package (0x02)
                                            {
                                                "usb4-host-interface", 
                                                \_SB.PC00.RP05.PXSX.TBDH.NHI5, 
                                            }, 

                                            Package (0x02)
                                            {
                                                "usb4-port-number", 
                                                One
                                            }
                                        }
                                    })
                                }
                            }
                        }
                    }
                }
            }
        }

        If (((DTFS == One) && ((RPS0 == 0x09) || (RPS1 == 0x09))))
        {
            Scope (\_SB.PC00.RP09.PXSX)
            {
                Name (TURP, 0x09)
                Device (TBDU)
                {
                    Name (_ADR, 0x00020000)  // _ADR: Address
                    Device (XHCI)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                        {
                            ADBG ("DTBT XHCI S0W")
                            Return (0x04)
                        }

                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                        {
                            ADBG ("DTBT XHCI PS0")
                        }

                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                        {
                            ADBG ("DTBT XHCI PS3")
                        }

                        Device (RHUB)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                            {
                                ADBG ("DTBT XHCI RHUB S0W return 4")
                                Return (0x04)
                            }

                            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                            {
                                ADBG ("DTBT XHCI RHUB PS0")
                            }

                            Method (_PS2, 0, Serialized)  // _PS2: Power State 2
                            {
                                ADBG ("DTBT XHCI RHUB PS2")
                            }

                            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                            {
                                ADBG ("DTBT XHCI RHUB PS3")
                            }

                            Method (SLMS, 1, Serialized)
                            {
                                Local0 = (TURP << 0x02)
                                Local0 |= One
                                If ((((TP1D >> One) == Local0) && (Arg0 == TP1T)))
                                {
                                    Return ((TP1D & One))
                                }
                                ElseIf ((((TP2D >> One) == Local0) && (Arg0 == TP2T)))
                                {
                                    Return ((TP2D & One))
                                }
                                ElseIf ((((TP3D >> One) == Local0) && (Arg0 == TP3T)))
                                {
                                    Return ((TP3D & One))
                                }
                                ElseIf ((((TP4D >> One) == Local0) && (Arg0 == TP4T)))
                                {
                                    Return ((TP4D & One))
                                }
                                ElseIf ((((TP5D >> One) == Local0) && (Arg0 == TP5T)))
                                {
                                    Return ((TP5D & One))
                                }
                                ElseIf ((((TP6D >> One) == Local0) && (Arg0 == TP6T)))
                                {
                                    Return ((TP6D & One))
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }

                            Method (FPCP, 2, Serialized)
                            {
                                Local0 = (TURP << 0x02)
                                Local0 |= One
                                If ((((TP1D >> One) == Local0) && (Arg0 == TP1T)))
                                {
                                    Return (\_SB.UBTC.RUCC (One, Arg1))
                                }
                                ElseIf ((((TP2D >> One) == Local0) && (Arg0 == TP2T)))
                                {
                                    Return (\_SB.UBTC.RUCC (0x02, Arg1))
                                }
                                ElseIf ((((TP3D >> One) == Local0) && (Arg0 == TP3T)))
                                {
                                    Return (\_SB.UBTC.RUCC (0x03, Arg1))
                                }
                                ElseIf ((((TP4D >> One) == Local0) && (Arg0 == TP4T)))
                                {
                                    Return (\_SB.UBTC.RUCC (0x04, Arg1))
                                }
                                ElseIf ((((TP5D >> One) == Local0) && (Arg0 == TP5T)))
                                {
                                    Return (\_SB.UBTC.RUCC (0x05, Arg1))
                                }
                                ElseIf ((((TP6D >> One) == Local0) && (Arg0 == TP6T)))
                                {
                                    Return (\_SB.UBTC.RUCC (0x06, Arg1))
                                }
                                ElseIf ((Arg1 == One))
                                {
                                    Return (TUPC (Zero, Zero))
                                }
                                Else
                                {
                                    Return (TPLD (Zero, Zero))
                                }
                            }

                            Method (FPSP, 1, Serialized)
                            {
                                Local0 = (TURP << 0x02)
                                Local0 |= One
                                If ((((TP1D >> One) == Local0) && (Arg0 == TP1T)))
                                {
                                    Return (One)
                                }
                                ElseIf ((((TP2D >> One) == Local0) && (Arg0 == TP2T)))
                                {
                                    Return (One)
                                }
                                ElseIf ((((TP3D >> One) == Local0) && (Arg0 == TP3T)))
                                {
                                    Return (One)
                                }
                                ElseIf ((((TP4D >> One) == Local0) && (Arg0 == TP4T)))
                                {
                                    Return (One)
                                }
                                ElseIf ((((TP5D >> One) == Local0) && (Arg0 == TP5T)))
                                {
                                    Return (One)
                                }
                                ElseIf ((((TP6D >> One) == Local0) && (Arg0 == TP6T)))
                                {
                                    Return (One)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }

                            Method (TPLD, 2, Serialized)
                            {
                                Name (PCKG, Package (0x01)
                                {
                                    Buffer (0x10){}
                                })
                                CreateField (DerefOf (PCKG [Zero]), Zero, 0x07, REV)
                                REV = One
                                CreateField (DerefOf (PCKG [Zero]), 0x40, One, VISI)
                                VISI = Arg0
                                CreateField (DerefOf (PCKG [Zero]), 0x57, 0x08, GPOS)
                                GPOS = Arg1
                                CreateField (DerefOf (PCKG [Zero]), 0x4A, 0x04, SHAP)
                                SHAP = One
                                CreateField (DerefOf (PCKG [Zero]), 0x20, 0x10, WID)
                                WID = 0x08
                                CreateField (DerefOf (PCKG [Zero]), 0x30, 0x10, HGT)
                                HGT = 0x03
                                Return (PCKG) /* \_SB_.PC00.RP09.PXSX.TBDU.XHCI.RHUB.TPLD.PCKG */
                            }

                            Method (TUPC, 2, Serialized)
                            {
                                Name (PCKG, Package (0x04)
                                {
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                })
                                PCKG [Zero] = Arg0
                                PCKG [One] = Arg1
                                Return (PCKG) /* \_SB_.PC00.RP09.PXSX.TBDU.XHCI.RHUB.TUPC.PCKG */
                            }

                            If ((FPSP (One) == One))
                            {
                                Device (HS01)
                                {
                                    Name (_ADR, One)  // _ADR: Address
                                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                    {
                                        If ((SLMS (One) == Zero))
                                        {
                                            Return (FPCP (One, One))
                                        }
                                        Else
                                        {
                                            Return (TUPC (Zero, Zero))
                                        }
                                    }

                                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                    {
                                        If ((SLMS (One) == Zero))
                                        {
                                            Return (FPCP (One, 0x02))
                                        }
                                        Else
                                        {
                                            Return (TPLD (Zero, Zero))
                                        }
                                    }
                                }
                            }

                            If ((FPSP (0x02) == One))
                            {
                                Device (HS02)
                                {
                                    Name (_ADR, 0x02)  // _ADR: Address
                                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                    {
                                        If ((SLMS (0x02) == Zero))
                                        {
                                            Return (FPCP (0x02, One))
                                        }
                                        Else
                                        {
                                            Return (TUPC (Zero, Zero))
                                        }
                                    }

                                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                    {
                                        If ((SLMS (0x02) == Zero))
                                        {
                                            Return (FPCP (0x02, 0x02))
                                        }
                                        Else
                                        {
                                            Return (TPLD (Zero, Zero))
                                        }
                                    }
                                }
                            }

                            If ((FPSP (One) == One))
                            {
                                Device (SS01)
                                {
                                    Name (_ADR, 0x03)  // _ADR: Address
                                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                    {
                                        Return (FPCP (One, One))
                                    }

                                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                    {
                                        Return (FPCP (One, 0x02))
                                    }

                                    If (CondRefOf (\_SB.PC00.RP09.TUID))
                                    {
                                        ADBG (Concatenate ("DTBT SS01 TUID = ", ToHexString (\_SB.PC00.RP09.TUID)))
                                        If ((\_SB.PC00.RP09.TUID <= One))
                                        {
                                            Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                                            {
                                                ADBG ("DTBT SS01 DSD")
                                                If ((\_SB.PC00.RP09.TUID == Zero))
                                                {
                                                    Return (Package (0x02)
                                                    {
                                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                        Package (0x02)
                                                        {
                                                            Package (0x02)
                                                            {
                                                                "usb4-host-interface", 
                                                                \_SB.PC00.RP09.PXSX.TBDH.NHI4, 
                                                            }, 

                                                            Package (0x02)
                                                            {
                                                                "usb4-port-number", 
                                                                Zero
                                                            }
                                                        }
                                                    })
                                                }
                                                Else
                                                {
                                                    Return (Package (0x02)
                                                    {
                                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                        Package (0x02)
                                                        {
                                                            Package (0x02)
                                                            {
                                                                "usb4-host-interface", 
                                                                \_SB.PC00.RP09.PXSX.TBDH.NHI5, 
                                                            }, 

                                                            Package (0x02)
                                                            {
                                                                "usb4-port-number", 
                                                                Zero
                                                            }
                                                        }
                                                    })
                                                }
                                            }
                                        }
                                    }
                                }
                            }

                            If ((FPSP (0x02) == One))
                            {
                                Device (SS02)
                                {
                                    Name (_ADR, 0x04)  // _ADR: Address
                                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                    {
                                        Return (FPCP (0x02, One))
                                    }

                                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                    {
                                        Return (FPCP (0x02, 0x02))
                                    }

                                    If (CondRefOf (\_SB.PC00.RP09.TUID))
                                    {
                                        ADBG (Concatenate ("DTBT SS02 TUID = ", ToHexString (\_SB.PC00.RP09.TUID)))
                                        If ((\_SB.PC00.RP09.TUID <= One))
                                        {
                                            Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                                            {
                                                ADBG ("DTBT SS02 DSD")
                                                If ((\_SB.PC00.RP09.TUID == Zero))
                                                {
                                                    Return (Package (0x02)
                                                    {
                                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                        Package (0x02)
                                                        {
                                                            Package (0x02)
                                                            {
                                                                "usb4-host-interface", 
                                                                \_SB.PC00.RP09.PXSX.TBDH.NHI4, 
                                                            }, 

                                                            Package (0x02)
                                                            {
                                                                "usb4-port-number", 
                                                                One
                                                            }
                                                        }
                                                    })
                                                }
                                                Else
                                                {
                                                    Return (Package (0x02)
                                                    {
                                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                        Package (0x02)
                                                        {
                                                            Package (0x02)
                                                            {
                                                                "usb4-host-interface", 
                                                                \_SB.PC00.RP09.PXSX.TBDH.NHI5, 
                                                            }, 

                                                            Package (0x02)
                                                            {
                                                                "usb4-port-number", 
                                                                One
                                                            }
                                                        }
                                                    })
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }
                    }
                }

                If ((CondRefOf (\_SB.PC00.RP09.TUID) && CondRefOf (\DTRT)))
                {
                    Device (TBDH)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        If ((\_SB.PC00.RP09.TUID <= One))
                        {
                            If ((\_SB.PC00.RP09.TUID == Zero))
                            {
                                Device (NHI4)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    If (CondRefOf (\DTRT))
                                    {
                                        Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
                                        {
                                            If ((\DTRT == Zero))
                                            {
                                                ADBG ("DTBT NHI S0W return 3")
                                                Return (0x03)
                                            }
                                            Else
                                            {
                                                ADBG ("DTBT NHI S0W return 4")
                                                Return (0x04)
                                            }
                                        }

                                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                                        {
                                        }

                                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                                        {
                                            If (!(CondRefOf (\RPS0) && CondRefOf (\RPT0)))
                                            {
                                                Return (Zero)
                                            }

                                            If ((CondRefOf (\DSCE) && CondRefOf (\DTMB)))
                                            {
                                                If ((\DSCE == One))
                                                {
                                                    \DTMB (0x48, Zero, \RPS0, \RPT0)
                                                    If (CondRefOf (\_SB.PC00.RP09.WAKG))
                                                    {
                                                        If ((\_SB.PC00.RP09.WAKG != Zero))
                                                        {
                                                            \_SB.SHPO (\_SB.PC00.RP09.WAKG, Zero)
                                                        }
                                                    }
                                                }
                                            }
                                        }

                                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                        {
                                            Return (Zero)
                                        }
                                    }
                                }
                            }
                            Else
                            {
                                Device (NHI5)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    If (CondRefOf (\DTRT))
                                    {
                                        Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
                                        {
                                            If ((\DTRT == Zero))
                                            {
                                                ADBG ("DTBT NHI S0W return 3")
                                                Return (0x03)
                                            }
                                            Else
                                            {
                                                ADBG ("DTBT NHI S0W return 4")
                                                Return (0x04)
                                            }
                                        }

                                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                                        {
                                        }

                                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                                        {
                                            If (!(CondRefOf (\RPS1) && CondRefOf (\RPT1)))
                                            {
                                                Return (Zero)
                                            }

                                            If ((CondRefOf (\DSCE) && CondRefOf (\DTMB)))
                                            {
                                                If ((\DSCE == One))
                                                {
                                                    \DTMB (0x48, Zero, \RPS1, \RPT1)
                                                    If (CondRefOf (\_SB.PC00.RP09.WAKG))
                                                    {
                                                        If ((\_SB.PC00.RP09.WAKG != Zero))
                                                        {
                                                            \_SB.SHPO (\_SB.PC00.RP09.WAKG, Zero)
                                                        }
                                                    }
                                                }
                                            }
                                        }

                                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                        {
                                            Return (Zero)
                                        }
                                    }
                                }
                            }
                        }
                    }

                    Device (TBP1)
                    {
                        Name (_ADR, 0x00010000)  // _ADR: Address
                        Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
                        {
                            If ((\DTRT == Zero))
                            {
                                ADBG ("DTBT DS1 S0W return 3")
                                Return (0x03)
                            }
                            Else
                            {
                                ADBG ("DTBT DS1 S0W return 4")
                                Return (0x04)
                            }
                        }

                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                        {
                        }

                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                        {
                        }

                        If ((\_SB.PC00.RP09.TUID <= One))
                        {
                            Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                            {
                                If ((\_SB.PC00.RP09.TUID == Zero))
                                {
                                    Return (Package (0x02)
                                    {
                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                        Package (0x02)
                                        {
                                            Package (0x02)
                                            {
                                                "usb4-host-interface", 
                                                \_SB.PC00.RP09.PXSX.TBDH.NHI4, 
                                            }, 

                                            Package (0x02)
                                            {
                                                "usb4-port-number", 
                                                Zero
                                            }
                                        }
                                    })
                                }
                                Else
                                {
                                    Return (Package (0x02)
                                    {
                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                        Package (0x02)
                                        {
                                            Package (0x02)
                                            {
                                                "usb4-host-interface", 
                                                \_SB.PC00.RP09.PXSX.TBDH.NHI5, 
                                            }, 

                                            Package (0x02)
                                            {
                                                "usb4-port-number", 
                                                Zero
                                            }
                                        }
                                    })
                                }
                            }
                        }
                    }

                    Device (TBP3)
                    {
                        Name (_ADR, 0x00030000)  // _ADR: Address
                        Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
                        {
                            If ((\DTRT == Zero))
                            {
                                ADBG ("DTBT DS3 S0W return 3")
                                Return (0x03)
                            }
                            Else
                            {
                                ADBG ("DTBT DS3 S0W return 4")
                                Return (0x04)
                            }
                        }

                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                        {
                        }

                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                        {
                        }

                        If ((\_SB.PC00.RP09.TUID <= One))
                        {
                            Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                            {
                                If ((\_SB.PC00.RP09.TUID == Zero))
                                {
                                    Return (Package (0x02)
                                    {
                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                        Package (0x02)
                                        {
                                            Package (0x02)
                                            {
                                                "usb4-host-interface", 
                                                \_SB.PC00.RP09.PXSX.TBDH.NHI4, 
                                            }, 

                                            Package (0x02)
                                            {
                                                "usb4-port-number", 
                                                One
                                            }
                                        }
                                    })
                                }
                                Else
                                {
                                    Return (Package (0x02)
                                    {
                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                        Package (0x02)
                                        {
                                            Package (0x02)
                                            {
                                                "usb4-host-interface", 
                                                \_SB.PC00.RP09.PXSX.TBDH.NHI5, 
                                            }, 

                                            Package (0x02)
                                            {
                                                "usb4-port-number", 
                                                One
                                            }
                                        }
                                    })
                                }
                            }
                        }
                    }
                }
            }
        }

        If (((DTFS == One) && ((RPS0 == 0x0D) || (RPS1 == 0x0D))))
        {
            Scope (\_SB.PC00.RP13.PXSX)
            {
                Name (TURP, 0x0D)
                Device (TBDU)
                {
                    Name (_ADR, 0x00020000)  // _ADR: Address
                    Device (XHCI)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                        {
                            ADBG ("DTBT XHCI S0W")
                            Return (0x04)
                        }

                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                        {
                            ADBG ("DTBT XHCI PS0")
                        }

                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                        {
                            ADBG ("DTBT XHCI PS3")
                        }

                        Device (RHUB)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                            {
                                ADBG ("DTBT XHCI RHUB S0W return 4")
                                Return (0x04)
                            }

                            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                            {
                                ADBG ("DTBT XHCI RHUB PS0")
                            }

                            Method (_PS2, 0, Serialized)  // _PS2: Power State 2
                            {
                                ADBG ("DTBT XHCI RHUB PS2")
                            }

                            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                            {
                                ADBG ("DTBT XHCI RHUB PS3")
                            }

                            Method (SLMS, 1, Serialized)
                            {
                                Local0 = (TURP << 0x02)
                                Local0 |= One
                                If ((((TP1D >> One) == Local0) && (Arg0 == TP1T)))
                                {
                                    Return ((TP1D & One))
                                }
                                ElseIf ((((TP2D >> One) == Local0) && (Arg0 == TP2T)))
                                {
                                    Return ((TP2D & One))
                                }
                                ElseIf ((((TP3D >> One) == Local0) && (Arg0 == TP3T)))
                                {
                                    Return ((TP3D & One))
                                }
                                ElseIf ((((TP4D >> One) == Local0) && (Arg0 == TP4T)))
                                {
                                    Return ((TP4D & One))
                                }
                                ElseIf ((((TP5D >> One) == Local0) && (Arg0 == TP5T)))
                                {
                                    Return ((TP5D & One))
                                }
                                ElseIf ((((TP6D >> One) == Local0) && (Arg0 == TP6T)))
                                {
                                    Return ((TP6D & One))
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }

                            Method (FPCP, 2, Serialized)
                            {
                                Local0 = (TURP << 0x02)
                                Local0 |= One
                                If ((((TP1D >> One) == Local0) && (Arg0 == TP1T)))
                                {
                                    Return (\_SB.UBTC.RUCC (One, Arg1))
                                }
                                ElseIf ((((TP2D >> One) == Local0) && (Arg0 == TP2T)))
                                {
                                    Return (\_SB.UBTC.RUCC (0x02, Arg1))
                                }
                                ElseIf ((((TP3D >> One) == Local0) && (Arg0 == TP3T)))
                                {
                                    Return (\_SB.UBTC.RUCC (0x03, Arg1))
                                }
                                ElseIf ((((TP4D >> One) == Local0) && (Arg0 == TP4T)))
                                {
                                    Return (\_SB.UBTC.RUCC (0x04, Arg1))
                                }
                                ElseIf ((((TP5D >> One) == Local0) && (Arg0 == TP5T)))
                                {
                                    Return (\_SB.UBTC.RUCC (0x05, Arg1))
                                }
                                ElseIf ((((TP6D >> One) == Local0) && (Arg0 == TP6T)))
                                {
                                    Return (\_SB.UBTC.RUCC (0x06, Arg1))
                                }
                                ElseIf ((Arg1 == One))
                                {
                                    Return (TUPC (Zero, Zero))
                                }
                                Else
                                {
                                    Return (TPLD (Zero, Zero))
                                }
                            }

                            Method (FPSP, 1, Serialized)
                            {
                                Local0 = (TURP << 0x02)
                                Local0 |= One
                                If ((((TP1D >> One) == Local0) && (Arg0 == TP1T)))
                                {
                                    Return (One)
                                }
                                ElseIf ((((TP2D >> One) == Local0) && (Arg0 == TP2T)))
                                {
                                    Return (One)
                                }
                                ElseIf ((((TP3D >> One) == Local0) && (Arg0 == TP3T)))
                                {
                                    Return (One)
                                }
                                ElseIf ((((TP4D >> One) == Local0) && (Arg0 == TP4T)))
                                {
                                    Return (One)
                                }
                                ElseIf ((((TP5D >> One) == Local0) && (Arg0 == TP5T)))
                                {
                                    Return (One)
                                }
                                ElseIf ((((TP6D >> One) == Local0) && (Arg0 == TP6T)))
                                {
                                    Return (One)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }

                            Method (TPLD, 2, Serialized)
                            {
                                Name (PCKG, Package (0x01)
                                {
                                    Buffer (0x10){}
                                })
                                CreateField (DerefOf (PCKG [Zero]), Zero, 0x07, REV)
                                REV = One
                                CreateField (DerefOf (PCKG [Zero]), 0x40, One, VISI)
                                VISI = Arg0
                                CreateField (DerefOf (PCKG [Zero]), 0x57, 0x08, GPOS)
                                GPOS = Arg1
                                CreateField (DerefOf (PCKG [Zero]), 0x4A, 0x04, SHAP)
                                SHAP = One
                                CreateField (DerefOf (PCKG [Zero]), 0x20, 0x10, WID)
                                WID = 0x08
                                CreateField (DerefOf (PCKG [Zero]), 0x30, 0x10, HGT)
                                HGT = 0x03
                                Return (PCKG) /* \_SB_.PC00.RP13.PXSX.TBDU.XHCI.RHUB.TPLD.PCKG */
                            }

                            Method (TUPC, 2, Serialized)
                            {
                                Name (PCKG, Package (0x04)
                                {
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                })
                                PCKG [Zero] = Arg0
                                PCKG [One] = Arg1
                                Return (PCKG) /* \_SB_.PC00.RP13.PXSX.TBDU.XHCI.RHUB.TUPC.PCKG */
                            }

                            If ((FPSP (One) == One))
                            {
                                Device (HS01)
                                {
                                    Name (_ADR, One)  // _ADR: Address
                                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                    {
                                        If ((SLMS (One) == Zero))
                                        {
                                            Return (FPCP (One, One))
                                        }
                                        Else
                                        {
                                            Return (TUPC (Zero, Zero))
                                        }
                                    }

                                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                    {
                                        If ((SLMS (One) == Zero))
                                        {
                                            Return (FPCP (One, 0x02))
                                        }
                                        Else
                                        {
                                            Return (TPLD (Zero, Zero))
                                        }
                                    }
                                }
                            }

                            If ((FPSP (0x02) == One))
                            {
                                Device (HS02)
                                {
                                    Name (_ADR, 0x02)  // _ADR: Address
                                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                    {
                                        If ((SLMS (0x02) == Zero))
                                        {
                                            Return (FPCP (0x02, One))
                                        }
                                        Else
                                        {
                                            Return (TUPC (Zero, Zero))
                                        }
                                    }

                                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                    {
                                        If ((SLMS (0x02) == Zero))
                                        {
                                            Return (FPCP (0x02, 0x02))
                                        }
                                        Else
                                        {
                                            Return (TPLD (Zero, Zero))
                                        }
                                    }
                                }
                            }

                            If ((FPSP (One) == One))
                            {
                                Device (SS01)
                                {
                                    Name (_ADR, 0x03)  // _ADR: Address
                                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                    {
                                        Return (FPCP (One, One))
                                    }

                                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                    {
                                        Return (FPCP (One, 0x02))
                                    }

                                    If (CondRefOf (\_SB.PC00.RP13.TUID))
                                    {
                                        ADBG (Concatenate ("DTBT SS01 TUID = ", ToHexString (\_SB.PC00.RP13.TUID)))
                                        If ((\_SB.PC00.RP13.TUID <= One))
                                        {
                                            Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                                            {
                                                ADBG ("DTBT SS01 DSD")
                                                If ((\_SB.PC00.RP13.TUID == Zero))
                                                {
                                                    Return (Package (0x02)
                                                    {
                                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                        Package (0x02)
                                                        {
                                                            Package (0x02)
                                                            {
                                                                "usb4-host-interface", 
                                                                \_SB.PC00.RP13.PXSX.TBDH.NHI4, 
                                                            }, 

                                                            Package (0x02)
                                                            {
                                                                "usb4-port-number", 
                                                                Zero
                                                            }
                                                        }
                                                    })
                                                }
                                                Else
                                                {
                                                    Return (Package (0x02)
                                                    {
                                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                        Package (0x02)
                                                        {
                                                            Package (0x02)
                                                            {
                                                                "usb4-host-interface", 
                                                                \_SB.PC00.RP13.PXSX.TBDH.NHI5, 
                                                            }, 

                                                            Package (0x02)
                                                            {
                                                                "usb4-port-number", 
                                                                Zero
                                                            }
                                                        }
                                                    })
                                                }
                                            }
                                        }
                                    }
                                }
                            }

                            If ((FPSP (0x02) == One))
                            {
                                Device (SS02)
                                {
                                    Name (_ADR, 0x04)  // _ADR: Address
                                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                    {
                                        Return (FPCP (0x02, One))
                                    }

                                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                    {
                                        Return (FPCP (0x02, 0x02))
                                    }

                                    If (CondRefOf (\_SB.PC00.RP13.TUID))
                                    {
                                        ADBG (Concatenate ("DTBT SS02 TUID = ", ToHexString (\_SB.PC00.RP13.TUID)))
                                        If ((\_SB.PC00.RP13.TUID <= One))
                                        {
                                            Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                                            {
                                                ADBG ("DTBT SS02 DSD")
                                                If ((\_SB.PC00.RP13.TUID == Zero))
                                                {
                                                    Return (Package (0x02)
                                                    {
                                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                        Package (0x02)
                                                        {
                                                            Package (0x02)
                                                            {
                                                                "usb4-host-interface", 
                                                                \_SB.PC00.RP13.PXSX.TBDH.NHI4, 
                                                            }, 

                                                            Package (0x02)
                                                            {
                                                                "usb4-port-number", 
                                                                One
                                                            }
                                                        }
                                                    })
                                                }
                                                Else
                                                {
                                                    Return (Package (0x02)
                                                    {
                                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                        Package (0x02)
                                                        {
                                                            Package (0x02)
                                                            {
                                                                "usb4-host-interface", 
                                                                \_SB.PC00.RP13.PXSX.TBDH.NHI5, 
                                                            }, 

                                                            Package (0x02)
                                                            {
                                                                "usb4-port-number", 
                                                                One
                                                            }
                                                        }
                                                    })
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }
                    }
                }

                If ((CondRefOf (\_SB.PC00.RP13.TUID) && CondRefOf (\DTRT)))
                {
                    Device (TBDH)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        If ((\_SB.PC00.RP13.TUID <= One))
                        {
                            If ((\_SB.PC00.RP13.TUID == Zero))
                            {
                                Device (NHI4)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    If (CondRefOf (\DTRT))
                                    {
                                        Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
                                        {
                                            If ((\DTRT == Zero))
                                            {
                                                ADBG ("DTBT NHI S0W return 3")
                                                Return (0x03)
                                            }
                                            Else
                                            {
                                                ADBG ("DTBT NHI S0W return 4")
                                                Return (0x04)
                                            }
                                        }

                                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                                        {
                                        }

                                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                                        {
                                            If (!(CondRefOf (\RPS0) && CondRefOf (\RPT0)))
                                            {
                                                Return (Zero)
                                            }

                                            If ((CondRefOf (\DSCE) && CondRefOf (\DTMB)))
                                            {
                                                If ((\DSCE == One))
                                                {
                                                    \DTMB (0x48, Zero, \RPS0, \RPT0)
                                                    If (CondRefOf (\_SB.PC00.RP13.WAKG))
                                                    {
                                                        If ((\_SB.PC00.RP13.WAKG != Zero))
                                                        {
                                                            \_SB.SHPO (\_SB.PC00.RP13.WAKG, Zero)
                                                        }
                                                    }
                                                }
                                            }
                                        }

                                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                        {
                                            Return (Zero)
                                        }
                                    }
                                }
                            }
                            Else
                            {
                                Device (NHI5)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    If (CondRefOf (\DTRT))
                                    {
                                        Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
                                        {
                                            If ((\DTRT == Zero))
                                            {
                                                ADBG ("DTBT NHI S0W return 3")
                                                Return (0x03)
                                            }
                                            Else
                                            {
                                                ADBG ("DTBT NHI S0W return 4")
                                                Return (0x04)
                                            }
                                        }

                                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                                        {
                                        }

                                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                                        {
                                            If (!(CondRefOf (\RPS1) && CondRefOf (\RPT1)))
                                            {
                                                Return (Zero)
                                            }

                                            If ((CondRefOf (\DSCE) && CondRefOf (\DTMB)))
                                            {
                                                If ((\DSCE == One))
                                                {
                                                    \DTMB (0x48, Zero, \RPS1, \RPT1)
                                                    If (CondRefOf (\_SB.PC00.RP13.WAKG))
                                                    {
                                                        If ((\_SB.PC00.RP13.WAKG != Zero))
                                                        {
                                                            \_SB.SHPO (\_SB.PC00.RP13.WAKG, Zero)
                                                        }
                                                    }
                                                }
                                            }
                                        }

                                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                        {
                                            Return (Zero)
                                        }
                                    }
                                }
                            }
                        }
                    }

                    Device (TBP1)
                    {
                        Name (_ADR, 0x00010000)  // _ADR: Address
                        Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
                        {
                            If ((\DTRT == Zero))
                            {
                                ADBG ("DTBT DS1 S0W return 3")
                                Return (0x03)
                            }
                            Else
                            {
                                ADBG ("DTBT DS1 S0W return 4")
                                Return (0x04)
                            }
                        }

                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                        {
                        }

                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                        {
                        }

                        If ((\_SB.PC00.RP13.TUID <= One))
                        {
                            Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                            {
                                If ((\_SB.PC00.RP13.TUID == Zero))
                                {
                                    Return (Package (0x02)
                                    {
                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                        Package (0x02)
                                        {
                                            Package (0x02)
                                            {
                                                "usb4-host-interface", 
                                                \_SB.PC00.RP13.PXSX.TBDH.NHI4, 
                                            }, 

                                            Package (0x02)
                                            {
                                                "usb4-port-number", 
                                                Zero
                                            }
                                        }
                                    })
                                }
                                Else
                                {
                                    Return (Package (0x02)
                                    {
                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                        Package (0x02)
                                        {
                                            Package (0x02)
                                            {
                                                "usb4-host-interface", 
                                                \_SB.PC00.RP13.PXSX.TBDH.NHI5, 
                                            }, 

                                            Package (0x02)
                                            {
                                                "usb4-port-number", 
                                                Zero
                                            }
                                        }
                                    })
                                }
                            }
                        }
                    }

                    Device (TBP3)
                    {
                        Name (_ADR, 0x00030000)  // _ADR: Address
                        Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
                        {
                            If ((\DTRT == Zero))
                            {
                                ADBG ("DTBT DS3 S0W return 3")
                                Return (0x03)
                            }
                            Else
                            {
                                ADBG ("DTBT DS3 S0W return 4")
                                Return (0x04)
                            }
                        }

                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                        {
                        }

                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                        {
                        }

                        If ((\_SB.PC00.RP13.TUID <= One))
                        {
                            Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                            {
                                If ((\_SB.PC00.RP13.TUID == Zero))
                                {
                                    Return (Package (0x02)
                                    {
                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                        Package (0x02)
                                        {
                                            Package (0x02)
                                            {
                                                "usb4-host-interface", 
                                                \_SB.PC00.RP13.PXSX.TBDH.NHI4, 
                                            }, 

                                            Package (0x02)
                                            {
                                                "usb4-port-number", 
                                                One
                                            }
                                        }
                                    })
                                }
                                Else
                                {
                                    Return (Package (0x02)
                                    {
                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                        Package (0x02)
                                        {
                                            Package (0x02)
                                            {
                                                "usb4-host-interface", 
                                                \_SB.PC00.RP13.PXSX.TBDH.NHI5, 
                                            }, 

                                            Package (0x02)
                                            {
                                                "usb4-port-number", 
                                                One
                                            }
                                        }
                                    })
                                }
                            }
                        }
                    }
                }
            }
        }

        If (((DTFS == One) && ((RPS0 == 0x11) || (RPS1 == 0x11))))
        {
            Scope (\_SB.PC00.RP17.PXSX)
            {
                Name (TURP, 0x11)
                Device (TBDU)
                {
                    Name (_ADR, 0x00020000)  // _ADR: Address
                    Device (XHCI)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                        {
                            ADBG ("DTBT XHCI S0W")
                            Return (0x04)
                        }

                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                        {
                            ADBG ("DTBT XHCI PS0")
                        }

                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                        {
                            ADBG ("DTBT XHCI PS3")
                        }

                        Device (RHUB)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                            {
                                ADBG ("DTBT XHCI RHUB S0W return 4")
                                Return (0x04)
                            }

                            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                            {
                                ADBG ("DTBT XHCI RHUB PS0")
                            }

                            Method (_PS2, 0, Serialized)  // _PS2: Power State 2
                            {
                                ADBG ("DTBT XHCI RHUB PS2")
                            }

                            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                            {
                                ADBG ("DTBT XHCI RHUB PS3")
                            }

                            Method (SLMS, 1, Serialized)
                            {
                                Local0 = (TURP << 0x02)
                                Local0 |= One
                                If ((((TP1D >> One) == Local0) && (Arg0 == TP1T)))
                                {
                                    Return ((TP1D & One))
                                }
                                ElseIf ((((TP2D >> One) == Local0) && (Arg0 == TP2T)))
                                {
                                    Return ((TP2D & One))
                                }
                                ElseIf ((((TP3D >> One) == Local0) && (Arg0 == TP3T)))
                                {
                                    Return ((TP3D & One))
                                }
                                ElseIf ((((TP4D >> One) == Local0) && (Arg0 == TP4T)))
                                {
                                    Return ((TP4D & One))
                                }
                                ElseIf ((((TP5D >> One) == Local0) && (Arg0 == TP5T)))
                                {
                                    Return ((TP5D & One))
                                }
                                ElseIf ((((TP6D >> One) == Local0) && (Arg0 == TP6T)))
                                {
                                    Return ((TP6D & One))
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }

                            Method (FPCP, 2, Serialized)
                            {
                                Local0 = (TURP << 0x02)
                                Local0 |= One
                                If ((((TP1D >> One) == Local0) && (Arg0 == TP1T)))
                                {
                                    Return (\_SB.UBTC.RUCC (One, Arg1))
                                }
                                ElseIf ((((TP2D >> One) == Local0) && (Arg0 == TP2T)))
                                {
                                    Return (\_SB.UBTC.RUCC (0x02, Arg1))
                                }
                                ElseIf ((((TP3D >> One) == Local0) && (Arg0 == TP3T)))
                                {
                                    Return (\_SB.UBTC.RUCC (0x03, Arg1))
                                }
                                ElseIf ((((TP4D >> One) == Local0) && (Arg0 == TP4T)))
                                {
                                    Return (\_SB.UBTC.RUCC (0x04, Arg1))
                                }
                                ElseIf ((((TP5D >> One) == Local0) && (Arg0 == TP5T)))
                                {
                                    Return (\_SB.UBTC.RUCC (0x05, Arg1))
                                }
                                ElseIf ((((TP6D >> One) == Local0) && (Arg0 == TP6T)))
                                {
                                    Return (\_SB.UBTC.RUCC (0x06, Arg1))
                                }
                                ElseIf ((Arg1 == One))
                                {
                                    Return (TUPC (Zero, Zero))
                                }
                                Else
                                {
                                    Return (TPLD (Zero, Zero))
                                }
                            }

                            Method (FPSP, 1, Serialized)
                            {
                                Local0 = (TURP << 0x02)
                                Local0 |= One
                                If ((((TP1D >> One) == Local0) && (Arg0 == TP1T)))
                                {
                                    Return (One)
                                }
                                ElseIf ((((TP2D >> One) == Local0) && (Arg0 == TP2T)))
                                {
                                    Return (One)
                                }
                                ElseIf ((((TP3D >> One) == Local0) && (Arg0 == TP3T)))
                                {
                                    Return (One)
                                }
                                ElseIf ((((TP4D >> One) == Local0) && (Arg0 == TP4T)))
                                {
                                    Return (One)
                                }
                                ElseIf ((((TP5D >> One) == Local0) && (Arg0 == TP5T)))
                                {
                                    Return (One)
                                }
                                ElseIf ((((TP6D >> One) == Local0) && (Arg0 == TP6T)))
                                {
                                    Return (One)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }

                            Method (TPLD, 2, Serialized)
                            {
                                Name (PCKG, Package (0x01)
                                {
                                    Buffer (0x10){}
                                })
                                CreateField (DerefOf (PCKG [Zero]), Zero, 0x07, REV)
                                REV = One
                                CreateField (DerefOf (PCKG [Zero]), 0x40, One, VISI)
                                VISI = Arg0
                                CreateField (DerefOf (PCKG [Zero]), 0x57, 0x08, GPOS)
                                GPOS = Arg1
                                CreateField (DerefOf (PCKG [Zero]), 0x4A, 0x04, SHAP)
                                SHAP = One
                                CreateField (DerefOf (PCKG [Zero]), 0x20, 0x10, WID)
                                WID = 0x08
                                CreateField (DerefOf (PCKG [Zero]), 0x30, 0x10, HGT)
                                HGT = 0x03
                                Return (PCKG) /* \_SB_.PC00.RP17.PXSX.TBDU.XHCI.RHUB.TPLD.PCKG */
                            }

                            Method (TUPC, 2, Serialized)
                            {
                                Name (PCKG, Package (0x04)
                                {
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                })
                                PCKG [Zero] = Arg0
                                PCKG [One] = Arg1
                                Return (PCKG) /* \_SB_.PC00.RP17.PXSX.TBDU.XHCI.RHUB.TUPC.PCKG */
                            }

                            If ((FPSP (One) == One))
                            {
                                Device (HS01)
                                {
                                    Name (_ADR, One)  // _ADR: Address
                                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                    {
                                        If ((SLMS (One) == Zero))
                                        {
                                            Return (FPCP (One, One))
                                        }
                                        Else
                                        {
                                            Return (TUPC (Zero, Zero))
                                        }
                                    }

                                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                    {
                                        If ((SLMS (One) == Zero))
                                        {
                                            Return (FPCP (One, 0x02))
                                        }
                                        Else
                                        {
                                            Return (TPLD (Zero, Zero))
                                        }
                                    }
                                }
                            }

                            If ((FPSP (0x02) == One))
                            {
                                Device (HS02)
                                {
                                    Name (_ADR, 0x02)  // _ADR: Address
                                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                    {
                                        If ((SLMS (0x02) == Zero))
                                        {
                                            Return (FPCP (0x02, One))
                                        }
                                        Else
                                        {
                                            Return (TUPC (Zero, Zero))
                                        }
                                    }

                                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                    {
                                        If ((SLMS (0x02) == Zero))
                                        {
                                            Return (FPCP (0x02, 0x02))
                                        }
                                        Else
                                        {
                                            Return (TPLD (Zero, Zero))
                                        }
                                    }
                                }
                            }

                            If ((FPSP (One) == One))
                            {
                                Device (SS01)
                                {
                                    Name (_ADR, 0x03)  // _ADR: Address
                                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                    {
                                        Return (FPCP (One, One))
                                    }

                                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                    {
                                        Return (FPCP (One, 0x02))
                                    }

                                    If (CondRefOf (\_SB.PC00.RP17.TUID))
                                    {
                                        ADBG (Concatenate ("DTBT SS01 TUID = ", ToHexString (\_SB.PC00.RP17.TUID)))
                                        If ((\_SB.PC00.RP17.TUID <= One))
                                        {
                                            Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                                            {
                                                ADBG ("DTBT SS01 DSD")
                                                If ((\_SB.PC00.RP17.TUID == Zero))
                                                {
                                                    Return (Package (0x02)
                                                    {
                                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                        Package (0x02)
                                                        {
                                                            Package (0x02)
                                                            {
                                                                "usb4-host-interface", 
                                                                \_SB.PC00.RP17.PXSX.TBDH.NHI4, 
                                                            }, 

                                                            Package (0x02)
                                                            {
                                                                "usb4-port-number", 
                                                                Zero
                                                            }
                                                        }
                                                    })
                                                }
                                                Else
                                                {
                                                    Return (Package (0x02)
                                                    {
                                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                        Package (0x02)
                                                        {
                                                            Package (0x02)
                                                            {
                                                                "usb4-host-interface", 
                                                                \_SB.PC00.RP17.PXSX.TBDH.NHI5, 
                                                            }, 

                                                            Package (0x02)
                                                            {
                                                                "usb4-port-number", 
                                                                Zero
                                                            }
                                                        }
                                                    })
                                                }
                                            }
                                        }
                                    }
                                }
                            }

                            If ((FPSP (0x02) == One))
                            {
                                Device (SS02)
                                {
                                    Name (_ADR, 0x04)  // _ADR: Address
                                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                    {
                                        Return (FPCP (0x02, One))
                                    }

                                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                    {
                                        Return (FPCP (0x02, 0x02))
                                    }

                                    If (CondRefOf (\_SB.PC00.RP17.TUID))
                                    {
                                        ADBG (Concatenate ("DTBT SS02 TUID = ", ToHexString (\_SB.PC00.RP17.TUID)))
                                        If ((\_SB.PC00.RP17.TUID <= One))
                                        {
                                            Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                                            {
                                                ADBG ("DTBT SS02 DSD")
                                                If ((\_SB.PC00.RP17.TUID == Zero))
                                                {
                                                    Return (Package (0x02)
                                                    {
                                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                        Package (0x02)
                                                        {
                                                            Package (0x02)
                                                            {
                                                                "usb4-host-interface", 
                                                                \_SB.PC00.RP17.PXSX.TBDH.NHI4, 
                                                            }, 

                                                            Package (0x02)
                                                            {
                                                                "usb4-port-number", 
                                                                One
                                                            }
                                                        }
                                                    })
                                                }
                                                Else
                                                {
                                                    Return (Package (0x02)
                                                    {
                                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                        Package (0x02)
                                                        {
                                                            Package (0x02)
                                                            {
                                                                "usb4-host-interface", 
                                                                \_SB.PC00.RP17.PXSX.TBDH.NHI5, 
                                                            }, 

                                                            Package (0x02)
                                                            {
                                                                "usb4-port-number", 
                                                                One
                                                            }
                                                        }
                                                    })
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }
                    }
                }

                If ((CondRefOf (\_SB.PC00.RP17.TUID) && CondRefOf (\DTRT)))
                {
                    Device (TBDH)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        If ((\_SB.PC00.RP17.TUID <= One))
                        {
                            If ((\_SB.PC00.RP17.TUID == Zero))
                            {
                                Device (NHI4)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    If (CondRefOf (\DTRT))
                                    {
                                        Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
                                        {
                                            If ((\DTRT == Zero))
                                            {
                                                ADBG ("DTBT NHI S0W return 3")
                                                Return (0x03)
                                            }
                                            Else
                                            {
                                                ADBG ("DTBT NHI S0W return 4")
                                                Return (0x04)
                                            }
                                        }

                                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                                        {
                                        }

                                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                                        {
                                            If (!(CondRefOf (\RPS0) && CondRefOf (\RPT0)))
                                            {
                                                Return (Zero)
                                            }

                                            If ((CondRefOf (\DSCE) && CondRefOf (\DTMB)))
                                            {
                                                If ((\DSCE == One))
                                                {
                                                    \DTMB (0x48, Zero, \RPS0, \RPT0)
                                                    If (CondRefOf (\_SB.PC00.RP17.WAKG))
                                                    {
                                                        If ((\_SB.PC00.RP17.WAKG != Zero))
                                                        {
                                                            \_SB.SHPO (\_SB.PC00.RP17.WAKG, Zero)
                                                        }
                                                    }
                                                }
                                            }
                                        }

                                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                        {
                                            Return (Zero)
                                        }
                                    }
                                }
                            }
                            Else
                            {
                                Device (NHI5)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    If (CondRefOf (\DTRT))
                                    {
                                        Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
                                        {
                                            If ((\DTRT == Zero))
                                            {
                                                ADBG ("DTBT NHI S0W return 3")
                                                Return (0x03)
                                            }
                                            Else
                                            {
                                                ADBG ("DTBT NHI S0W return 4")
                                                Return (0x04)
                                            }
                                        }

                                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                                        {
                                        }

                                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                                        {
                                            If (!(CondRefOf (\RPS1) && CondRefOf (\RPT1)))
                                            {
                                                Return (Zero)
                                            }

                                            If ((CondRefOf (\DSCE) && CondRefOf (\DTMB)))
                                            {
                                                If ((\DSCE == One))
                                                {
                                                    \DTMB (0x48, Zero, \RPS1, \RPT1)
                                                    If (CondRefOf (\_SB.PC00.RP17.WAKG))
                                                    {
                                                        If ((\_SB.PC00.RP17.WAKG != Zero))
                                                        {
                                                            \_SB.SHPO (\_SB.PC00.RP17.WAKG, Zero)
                                                        }
                                                    }
                                                }
                                            }
                                        }

                                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                        {
                                            Return (Zero)
                                        }
                                    }
                                }
                            }
                        }
                    }

                    Device (TBP1)
                    {
                        Name (_ADR, 0x00010000)  // _ADR: Address
                        Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
                        {
                            If ((\DTRT == Zero))
                            {
                                ADBG ("DTBT DS1 S0W return 3")
                                Return (0x03)
                            }
                            Else
                            {
                                ADBG ("DTBT DS1 S0W return 4")
                                Return (0x04)
                            }
                        }

                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                        {
                        }

                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                        {
                        }

                        If ((\_SB.PC00.RP17.TUID <= One))
                        {
                            Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                            {
                                If ((\_SB.PC00.RP17.TUID == Zero))
                                {
                                    Return (Package (0x02)
                                    {
                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                        Package (0x02)
                                        {
                                            Package (0x02)
                                            {
                                                "usb4-host-interface", 
                                                \_SB.PC00.RP17.PXSX.TBDH.NHI4, 
                                            }, 

                                            Package (0x02)
                                            {
                                                "usb4-port-number", 
                                                Zero
                                            }
                                        }
                                    })
                                }
                                Else
                                {
                                    Return (Package (0x02)
                                    {
                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                        Package (0x02)
                                        {
                                            Package (0x02)
                                            {
                                                "usb4-host-interface", 
                                                \_SB.PC00.RP17.PXSX.TBDH.NHI5, 
                                            }, 

                                            Package (0x02)
                                            {
                                                "usb4-port-number", 
                                                Zero
                                            }
                                        }
                                    })
                                }
                            }
                        }
                    }

                    Device (TBP3)
                    {
                        Name (_ADR, 0x00030000)  // _ADR: Address
                        Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
                        {
                            If ((\DTRT == Zero))
                            {
                                ADBG ("DTBT DS3 S0W return 3")
                                Return (0x03)
                            }
                            Else
                            {
                                ADBG ("DTBT DS3 S0W return 4")
                                Return (0x04)
                            }
                        }

                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                        {
                        }

                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                        {
                        }

                        If ((\_SB.PC00.RP17.TUID <= One))
                        {
                            Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                            {
                                If ((\_SB.PC00.RP17.TUID == Zero))
                                {
                                    Return (Package (0x02)
                                    {
                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                        Package (0x02)
                                        {
                                            Package (0x02)
                                            {
                                                "usb4-host-interface", 
                                                \_SB.PC00.RP17.PXSX.TBDH.NHI4, 
                                            }, 

                                            Package (0x02)
                                            {
                                                "usb4-port-number", 
                                                One
                                            }
                                        }
                                    })
                                }
                                Else
                                {
                                    Return (Package (0x02)
                                    {
                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                        Package (0x02)
                                        {
                                            Package (0x02)
                                            {
                                                "usb4-host-interface", 
                                                \_SB.PC00.RP17.PXSX.TBDH.NHI5, 
                                            }, 

                                            Package (0x02)
                                            {
                                                "usb4-port-number", 
                                                One
                                            }
                                        }
                                    })
                                }
                            }
                        }
                    }
                }
            }
        }

        If (((DTFS == One) && ((RPS0 == 0x15) || (RPS1 == 0x15))))
        {
            Scope (\_SB.PC00.RP21.PXSX)
            {
                Name (TURP, 0x15)
                Device (TBDU)
                {
                    Name (_ADR, 0x00020000)  // _ADR: Address
                    Device (XHCI)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                        {
                            ADBG ("DTBT XHCI S0W")
                            Return (0x04)
                        }

                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                        {
                            ADBG ("DTBT XHCI PS0")
                        }

                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                        {
                            ADBG ("DTBT XHCI PS3")
                        }

                        Device (RHUB)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                            {
                                ADBG ("DTBT XHCI RHUB S0W return 4")
                                Return (0x04)
                            }

                            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                            {
                                ADBG ("DTBT XHCI RHUB PS0")
                            }

                            Method (_PS2, 0, Serialized)  // _PS2: Power State 2
                            {
                                ADBG ("DTBT XHCI RHUB PS2")
                            }

                            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                            {
                                ADBG ("DTBT XHCI RHUB PS3")
                            }

                            Method (SLMS, 1, Serialized)
                            {
                                Local0 = (TURP << 0x02)
                                Local0 |= One
                                If ((((TP1D >> One) == Local0) && (Arg0 == TP1T)))
                                {
                                    Return ((TP1D & One))
                                }
                                ElseIf ((((TP2D >> One) == Local0) && (Arg0 == TP2T)))
                                {
                                    Return ((TP2D & One))
                                }
                                ElseIf ((((TP3D >> One) == Local0) && (Arg0 == TP3T)))
                                {
                                    Return ((TP3D & One))
                                }
                                ElseIf ((((TP4D >> One) == Local0) && (Arg0 == TP4T)))
                                {
                                    Return ((TP4D & One))
                                }
                                ElseIf ((((TP5D >> One) == Local0) && (Arg0 == TP5T)))
                                {
                                    Return ((TP5D & One))
                                }
                                ElseIf ((((TP6D >> One) == Local0) && (Arg0 == TP6T)))
                                {
                                    Return ((TP6D & One))
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }

                            Method (FPCP, 2, Serialized)
                            {
                                Local0 = (TURP << 0x02)
                                Local0 |= One
                                If ((((TP1D >> One) == Local0) && (Arg0 == TP1T)))
                                {
                                    Return (\_SB.UBTC.RUCC (One, Arg1))
                                }
                                ElseIf ((((TP2D >> One) == Local0) && (Arg0 == TP2T)))
                                {
                                    Return (\_SB.UBTC.RUCC (0x02, Arg1))
                                }
                                ElseIf ((((TP3D >> One) == Local0) && (Arg0 == TP3T)))
                                {
                                    Return (\_SB.UBTC.RUCC (0x03, Arg1))
                                }
                                ElseIf ((((TP4D >> One) == Local0) && (Arg0 == TP4T)))
                                {
                                    Return (\_SB.UBTC.RUCC (0x04, Arg1))
                                }
                                ElseIf ((((TP5D >> One) == Local0) && (Arg0 == TP5T)))
                                {
                                    Return (\_SB.UBTC.RUCC (0x05, Arg1))
                                }
                                ElseIf ((((TP6D >> One) == Local0) && (Arg0 == TP6T)))
                                {
                                    Return (\_SB.UBTC.RUCC (0x06, Arg1))
                                }
                                ElseIf ((Arg1 == One))
                                {
                                    Return (TUPC (Zero, Zero))
                                }
                                Else
                                {
                                    Return (TPLD (Zero, Zero))
                                }
                            }

                            Method (FPSP, 1, Serialized)
                            {
                                Local0 = (TURP << 0x02)
                                Local0 |= One
                                If ((((TP1D >> One) == Local0) && (Arg0 == TP1T)))
                                {
                                    Return (One)
                                }
                                ElseIf ((((TP2D >> One) == Local0) && (Arg0 == TP2T)))
                                {
                                    Return (One)
                                }
                                ElseIf ((((TP3D >> One) == Local0) && (Arg0 == TP3T)))
                                {
                                    Return (One)
                                }
                                ElseIf ((((TP4D >> One) == Local0) && (Arg0 == TP4T)))
                                {
                                    Return (One)
                                }
                                ElseIf ((((TP5D >> One) == Local0) && (Arg0 == TP5T)))
                                {
                                    Return (One)
                                }
                                ElseIf ((((TP6D >> One) == Local0) && (Arg0 == TP6T)))
                                {
                                    Return (One)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }

                            Method (TPLD, 2, Serialized)
                            {
                                Name (PCKG, Package (0x01)
                                {
                                    Buffer (0x10){}
                                })
                                CreateField (DerefOf (PCKG [Zero]), Zero, 0x07, REV)
                                REV = One
                                CreateField (DerefOf (PCKG [Zero]), 0x40, One, VISI)
                                VISI = Arg0
                                CreateField (DerefOf (PCKG [Zero]), 0x57, 0x08, GPOS)
                                GPOS = Arg1
                                CreateField (DerefOf (PCKG [Zero]), 0x4A, 0x04, SHAP)
                                SHAP = One
                                CreateField (DerefOf (PCKG [Zero]), 0x20, 0x10, WID)
                                WID = 0x08
                                CreateField (DerefOf (PCKG [Zero]), 0x30, 0x10, HGT)
                                HGT = 0x03
                                Return (PCKG) /* \_SB_.PC00.RP21.PXSX.TBDU.XHCI.RHUB.TPLD.PCKG */
                            }

                            Method (TUPC, 2, Serialized)
                            {
                                Name (PCKG, Package (0x04)
                                {
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                })
                                PCKG [Zero] = Arg0
                                PCKG [One] = Arg1
                                Return (PCKG) /* \_SB_.PC00.RP21.PXSX.TBDU.XHCI.RHUB.TUPC.PCKG */
                            }

                            If ((FPSP (One) == One))
                            {
                                Device (HS01)
                                {
                                    Name (_ADR, One)  // _ADR: Address
                                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                    {
                                        If ((SLMS (One) == Zero))
                                        {
                                            Return (FPCP (One, One))
                                        }
                                        Else
                                        {
                                            Return (TUPC (Zero, Zero))
                                        }
                                    }

                                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                    {
                                        If ((SLMS (One) == Zero))
                                        {
                                            Return (FPCP (One, 0x02))
                                        }
                                        Else
                                        {
                                            Return (TPLD (Zero, Zero))
                                        }
                                    }
                                }
                            }

                            If ((FPSP (0x02) == One))
                            {
                                Device (HS02)
                                {
                                    Name (_ADR, 0x02)  // _ADR: Address
                                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                    {
                                        If ((SLMS (0x02) == Zero))
                                        {
                                            Return (FPCP (0x02, One))
                                        }
                                        Else
                                        {
                                            Return (TUPC (Zero, Zero))
                                        }
                                    }

                                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                    {
                                        If ((SLMS (0x02) == Zero))
                                        {
                                            Return (FPCP (0x02, 0x02))
                                        }
                                        Else
                                        {
                                            Return (TPLD (Zero, Zero))
                                        }
                                    }
                                }
                            }

                            If ((FPSP (One) == One))
                            {
                                Device (SS01)
                                {
                                    Name (_ADR, 0x03)  // _ADR: Address
                                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                    {
                                        Return (FPCP (One, One))
                                    }

                                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                    {
                                        Return (FPCP (One, 0x02))
                                    }

                                    If (CondRefOf (\_SB.PC00.RP21.TUID))
                                    {
                                        ADBG (Concatenate ("DTBT SS01 TUID = ", ToHexString (\_SB.PC00.RP21.TUID)))
                                        If ((\_SB.PC00.RP21.TUID <= One))
                                        {
                                            Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                                            {
                                                ADBG ("DTBT SS01 DSD")
                                                If ((\_SB.PC00.RP21.TUID == Zero))
                                                {
                                                    Return (Package (0x02)
                                                    {
                                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                        Package (0x02)
                                                        {
                                                            Package (0x02)
                                                            {
                                                                "usb4-host-interface", 
                                                                \_SB.PC00.RP21.PXSX.TBDH.NHI4, 
                                                            }, 

                                                            Package (0x02)
                                                            {
                                                                "usb4-port-number", 
                                                                Zero
                                                            }
                                                        }
                                                    })
                                                }
                                                Else
                                                {
                                                    Return (Package (0x02)
                                                    {
                                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                        Package (0x02)
                                                        {
                                                            Package (0x02)
                                                            {
                                                                "usb4-host-interface", 
                                                                \_SB.PC00.RP21.PXSX.TBDH.NHI5, 
                                                            }, 

                                                            Package (0x02)
                                                            {
                                                                "usb4-port-number", 
                                                                Zero
                                                            }
                                                        }
                                                    })
                                                }
                                            }
                                        }
                                    }
                                }
                            }

                            If ((FPSP (0x02) == One))
                            {
                                Device (SS02)
                                {
                                    Name (_ADR, 0x04)  // _ADR: Address
                                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                    {
                                        Return (FPCP (0x02, One))
                                    }

                                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                    {
                                        Return (FPCP (0x02, 0x02))
                                    }

                                    If (CondRefOf (\_SB.PC00.RP21.TUID))
                                    {
                                        ADBG (Concatenate ("DTBT SS02 TUID = ", ToHexString (\_SB.PC00.RP21.TUID)))
                                        If ((\_SB.PC00.RP21.TUID <= One))
                                        {
                                            Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                                            {
                                                ADBG ("DTBT SS02 DSD")
                                                If ((\_SB.PC00.RP21.TUID == Zero))
                                                {
                                                    Return (Package (0x02)
                                                    {
                                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                        Package (0x02)
                                                        {
                                                            Package (0x02)
                                                            {
                                                                "usb4-host-interface", 
                                                                \_SB.PC00.RP21.PXSX.TBDH.NHI4, 
                                                            }, 

                                                            Package (0x02)
                                                            {
                                                                "usb4-port-number", 
                                                                One
                                                            }
                                                        }
                                                    })
                                                }
                                                Else
                                                {
                                                    Return (Package (0x02)
                                                    {
                                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                        Package (0x02)
                                                        {
                                                            Package (0x02)
                                                            {
                                                                "usb4-host-interface", 
                                                                \_SB.PC00.RP21.PXSX.TBDH.NHI5, 
                                                            }, 

                                                            Package (0x02)
                                                            {
                                                                "usb4-port-number", 
                                                                One
                                                            }
                                                        }
                                                    })
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }
                    }
                }

                If ((CondRefOf (\_SB.PC00.RP21.TUID) && CondRefOf (\DTRT)))
                {
                    Device (TBDH)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        If ((\_SB.PC00.RP21.TUID <= One))
                        {
                            If ((\_SB.PC00.RP21.TUID == Zero))
                            {
                                Device (NHI4)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    If (CondRefOf (\DTRT))
                                    {
                                        Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
                                        {
                                            If ((\DTRT == Zero))
                                            {
                                                ADBG ("DTBT NHI S0W return 3")
                                                Return (0x03)
                                            }
                                            Else
                                            {
                                                ADBG ("DTBT NHI S0W return 4")
                                                Return (0x04)
                                            }
                                        }

                                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                                        {
                                        }

                                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                                        {
                                            If (!(CondRefOf (\RPS0) && CondRefOf (\RPT0)))
                                            {
                                                Return (Zero)
                                            }

                                            If ((CondRefOf (\DSCE) && CondRefOf (\DTMB)))
                                            {
                                                If ((\DSCE == One))
                                                {
                                                    \DTMB (0x48, Zero, \RPS0, \RPT0)
                                                    If (CondRefOf (\_SB.PC00.RP21.WAKG))
                                                    {
                                                        If ((\_SB.PC00.RP21.WAKG != Zero))
                                                        {
                                                            \_SB.SHPO (\_SB.PC00.RP21.WAKG, Zero)
                                                        }
                                                    }
                                                }
                                            }
                                        }

                                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                        {
                                            Return (Zero)
                                        }
                                    }
                                }
                            }
                            Else
                            {
                                Device (NHI5)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    If (CondRefOf (\DTRT))
                                    {
                                        Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
                                        {
                                            If ((\DTRT == Zero))
                                            {
                                                ADBG ("DTBT NHI S0W return 3")
                                                Return (0x03)
                                            }
                                            Else
                                            {
                                                ADBG ("DTBT NHI S0W return 4")
                                                Return (0x04)
                                            }
                                        }

                                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                                        {
                                        }

                                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                                        {
                                            If (!(CondRefOf (\RPS1) && CondRefOf (\RPT1)))
                                            {
                                                Return (Zero)
                                            }

                                            If ((CondRefOf (\DSCE) && CondRefOf (\DTMB)))
                                            {
                                                If ((\DSCE == One))
                                                {
                                                    \DTMB (0x48, Zero, \RPS1, \RPT1)
                                                    If (CondRefOf (\_SB.PC00.RP21.WAKG))
                                                    {
                                                        If ((\_SB.PC00.RP21.WAKG != Zero))
                                                        {
                                                            \_SB.SHPO (\_SB.PC00.RP21.WAKG, Zero)
                                                        }
                                                    }
                                                }
                                            }
                                        }

                                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                        {
                                            Return (Zero)
                                        }
                                    }
                                }
                            }
                        }
                    }

                    Device (TBP1)
                    {
                        Name (_ADR, 0x00010000)  // _ADR: Address
                        Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
                        {
                            If ((\DTRT == Zero))
                            {
                                ADBG ("DTBT DS1 S0W return 3")
                                Return (0x03)
                            }
                            Else
                            {
                                ADBG ("DTBT DS1 S0W return 4")
                                Return (0x04)
                            }
                        }

                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                        {
                        }

                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                        {
                        }

                        If ((\_SB.PC00.RP21.TUID <= One))
                        {
                            Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                            {
                                If ((\_SB.PC00.RP21.TUID == Zero))
                                {
                                    Return (Package (0x02)
                                    {
                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                        Package (0x02)
                                        {
                                            Package (0x02)
                                            {
                                                "usb4-host-interface", 
                                                \_SB.PC00.RP21.PXSX.TBDH.NHI4, 
                                            }, 

                                            Package (0x02)
                                            {
                                                "usb4-port-number", 
                                                Zero
                                            }
                                        }
                                    })
                                }
                                Else
                                {
                                    Return (Package (0x02)
                                    {
                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                        Package (0x02)
                                        {
                                            Package (0x02)
                                            {
                                                "usb4-host-interface", 
                                                \_SB.PC00.RP21.PXSX.TBDH.NHI5, 
                                            }, 

                                            Package (0x02)
                                            {
                                                "usb4-port-number", 
                                                Zero
                                            }
                                        }
                                    })
                                }
                            }
                        }
                    }

                    Device (TBP3)
                    {
                        Name (_ADR, 0x00030000)  // _ADR: Address
                        Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
                        {
                            If ((\DTRT == Zero))
                            {
                                ADBG ("DTBT DS3 S0W return 3")
                                Return (0x03)
                            }
                            Else
                            {
                                ADBG ("DTBT DS3 S0W return 4")
                                Return (0x04)
                            }
                        }

                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                        {
                        }

                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                        {
                        }

                        If ((\_SB.PC00.RP21.TUID <= One))
                        {
                            Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                            {
                                If ((\_SB.PC00.RP21.TUID == Zero))
                                {
                                    Return (Package (0x02)
                                    {
                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                        Package (0x02)
                                        {
                                            Package (0x02)
                                            {
                                                "usb4-host-interface", 
                                                \_SB.PC00.RP21.PXSX.TBDH.NHI4, 
                                            }, 

                                            Package (0x02)
                                            {
                                                "usb4-port-number", 
                                                One
                                            }
                                        }
                                    })
                                }
                                Else
                                {
                                    Return (Package (0x02)
                                    {
                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                        Package (0x02)
                                        {
                                            Package (0x02)
                                            {
                                                "usb4-host-interface", 
                                                \_SB.PC00.RP21.PXSX.TBDH.NHI5, 
                                            }, 

                                            Package (0x02)
                                            {
                                                "usb4-port-number", 
                                                One
                                            }
                                        }
                                    })
                                }
                            }
                        }
                    }
                }
            }
        }

        If (((DTFS == One) && ((RPS0 == 0x19) || (RPS1 == 0x19))))
        {
            Scope (\_SB.PC00.RP25.PXSX)
            {
                Name (TURP, 0x19)
                Device (TBDU)
                {
                    Name (_ADR, 0x00020000)  // _ADR: Address
                    Device (XHCI)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                        {
                            ADBG ("DTBT XHCI S0W")
                            Return (0x04)
                        }

                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                        {
                            ADBG ("DTBT XHCI PS0")
                        }

                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                        {
                            ADBG ("DTBT XHCI PS3")
                        }

                        Device (RHUB)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                            {
                                ADBG ("DTBT XHCI RHUB S0W return 4")
                                Return (0x04)
                            }

                            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                            {
                                ADBG ("DTBT XHCI RHUB PS0")
                            }

                            Method (_PS2, 0, Serialized)  // _PS2: Power State 2
                            {
                                ADBG ("DTBT XHCI RHUB PS2")
                            }

                            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                            {
                                ADBG ("DTBT XHCI RHUB PS3")
                            }

                            Method (SLMS, 1, Serialized)
                            {
                                Local0 = (TURP << 0x02)
                                Local0 |= One
                                If ((((TP1D >> One) == Local0) && (Arg0 == TP1T)))
                                {
                                    Return ((TP1D & One))
                                }
                                ElseIf ((((TP2D >> One) == Local0) && (Arg0 == TP2T)))
                                {
                                    Return ((TP2D & One))
                                }
                                ElseIf ((((TP3D >> One) == Local0) && (Arg0 == TP3T)))
                                {
                                    Return ((TP3D & One))
                                }
                                ElseIf ((((TP4D >> One) == Local0) && (Arg0 == TP4T)))
                                {
                                    Return ((TP4D & One))
                                }
                                ElseIf ((((TP5D >> One) == Local0) && (Arg0 == TP5T)))
                                {
                                    Return ((TP5D & One))
                                }
                                ElseIf ((((TP6D >> One) == Local0) && (Arg0 == TP6T)))
                                {
                                    Return ((TP6D & One))
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }

                            Method (FPCP, 2, Serialized)
                            {
                                Local0 = (TURP << 0x02)
                                Local0 |= One
                                If ((((TP1D >> One) == Local0) && (Arg0 == TP1T)))
                                {
                                    Return (\_SB.UBTC.RUCC (One, Arg1))
                                }
                                ElseIf ((((TP2D >> One) == Local0) && (Arg0 == TP2T)))
                                {
                                    Return (\_SB.UBTC.RUCC (0x02, Arg1))
                                }
                                ElseIf ((((TP3D >> One) == Local0) && (Arg0 == TP3T)))
                                {
                                    Return (\_SB.UBTC.RUCC (0x03, Arg1))
                                }
                                ElseIf ((((TP4D >> One) == Local0) && (Arg0 == TP4T)))
                                {
                                    Return (\_SB.UBTC.RUCC (0x04, Arg1))
                                }
                                ElseIf ((((TP5D >> One) == Local0) && (Arg0 == TP5T)))
                                {
                                    Return (\_SB.UBTC.RUCC (0x05, Arg1))
                                }
                                ElseIf ((((TP6D >> One) == Local0) && (Arg0 == TP6T)))
                                {
                                    Return (\_SB.UBTC.RUCC (0x06, Arg1))
                                }
                                ElseIf ((Arg1 == One))
                                {
                                    Return (TUPC (Zero, Zero))
                                }
                                Else
                                {
                                    Return (TPLD (Zero, Zero))
                                }
                            }

                            Method (FPSP, 1, Serialized)
                            {
                                Local0 = (TURP << 0x02)
                                Local0 |= One
                                If ((((TP1D >> One) == Local0) && (Arg0 == TP1T)))
                                {
                                    Return (One)
                                }
                                ElseIf ((((TP2D >> One) == Local0) && (Arg0 == TP2T)))
                                {
                                    Return (One)
                                }
                                ElseIf ((((TP3D >> One) == Local0) && (Arg0 == TP3T)))
                                {
                                    Return (One)
                                }
                                ElseIf ((((TP4D >> One) == Local0) && (Arg0 == TP4T)))
                                {
                                    Return (One)
                                }
                                ElseIf ((((TP5D >> One) == Local0) && (Arg0 == TP5T)))
                                {
                                    Return (One)
                                }
                                ElseIf ((((TP6D >> One) == Local0) && (Arg0 == TP6T)))
                                {
                                    Return (One)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }

                            Method (TPLD, 2, Serialized)
                            {
                                Name (PCKG, Package (0x01)
                                {
                                    Buffer (0x10){}
                                })
                                CreateField (DerefOf (PCKG [Zero]), Zero, 0x07, REV)
                                REV = One
                                CreateField (DerefOf (PCKG [Zero]), 0x40, One, VISI)
                                VISI = Arg0
                                CreateField (DerefOf (PCKG [Zero]), 0x57, 0x08, GPOS)
                                GPOS = Arg1
                                CreateField (DerefOf (PCKG [Zero]), 0x4A, 0x04, SHAP)
                                SHAP = One
                                CreateField (DerefOf (PCKG [Zero]), 0x20, 0x10, WID)
                                WID = 0x08
                                CreateField (DerefOf (PCKG [Zero]), 0x30, 0x10, HGT)
                                HGT = 0x03
                                Return (PCKG) /* \_SB_.PC00.RP25.PXSX.TBDU.XHCI.RHUB.TPLD.PCKG */
                            }

                            Method (TUPC, 2, Serialized)
                            {
                                Name (PCKG, Package (0x04)
                                {
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                })
                                PCKG [Zero] = Arg0
                                PCKG [One] = Arg1
                                Return (PCKG) /* \_SB_.PC00.RP25.PXSX.TBDU.XHCI.RHUB.TUPC.PCKG */
                            }

                            If ((FPSP (One) == One))
                            {
                                Device (HS01)
                                {
                                    Name (_ADR, One)  // _ADR: Address
                                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                    {
                                        If ((SLMS (One) == Zero))
                                        {
                                            Return (FPCP (One, One))
                                        }
                                        Else
                                        {
                                            Return (TUPC (Zero, Zero))
                                        }
                                    }

                                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                    {
                                        If ((SLMS (One) == Zero))
                                        {
                                            Return (FPCP (One, 0x02))
                                        }
                                        Else
                                        {
                                            Return (TPLD (Zero, Zero))
                                        }
                                    }
                                }
                            }

                            If ((FPSP (0x02) == One))
                            {
                                Device (HS02)
                                {
                                    Name (_ADR, 0x02)  // _ADR: Address
                                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                    {
                                        If ((SLMS (0x02) == Zero))
                                        {
                                            Return (FPCP (0x02, One))
                                        }
                                        Else
                                        {
                                            Return (TUPC (Zero, Zero))
                                        }
                                    }

                                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                    {
                                        If ((SLMS (0x02) == Zero))
                                        {
                                            Return (FPCP (0x02, 0x02))
                                        }
                                        Else
                                        {
                                            Return (TPLD (Zero, Zero))
                                        }
                                    }
                                }
                            }

                            If ((FPSP (One) == One))
                            {
                                Device (SS01)
                                {
                                    Name (_ADR, 0x03)  // _ADR: Address
                                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                    {
                                        Return (FPCP (One, One))
                                    }

                                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                    {
                                        Return (FPCP (One, 0x02))
                                    }

                                    If (CondRefOf (\_SB.PC00.RP25.TUID))
                                    {
                                        ADBG (Concatenate ("DTBT SS01 TUID = ", ToHexString (\_SB.PC00.RP25.TUID)))
                                        If ((\_SB.PC00.RP25.TUID <= One))
                                        {
                                            Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                                            {
                                                ADBG ("DTBT SS01 DSD")
                                                If ((\_SB.PC00.RP25.TUID == Zero))
                                                {
                                                    Return (Package (0x02)
                                                    {
                                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                        Package (0x02)
                                                        {
                                                            Package (0x02)
                                                            {
                                                                "usb4-host-interface", 
                                                                \_SB.PC00.RP25.PXSX.TBDH.NHI4, 
                                                            }, 

                                                            Package (0x02)
                                                            {
                                                                "usb4-port-number", 
                                                                Zero
                                                            }
                                                        }
                                                    })
                                                }
                                                Else
                                                {
                                                    Return (Package (0x02)
                                                    {
                                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                        Package (0x02)
                                                        {
                                                            Package (0x02)
                                                            {
                                                                "usb4-host-interface", 
                                                                \_SB.PC00.RP25.PXSX.TBDH.NHI5, 
                                                            }, 

                                                            Package (0x02)
                                                            {
                                                                "usb4-port-number", 
                                                                Zero
                                                            }
                                                        }
                                                    })
                                                }
                                            }
                                        }
                                    }
                                }
                            }

                            If ((FPSP (0x02) == One))
                            {
                                Device (SS02)
                                {
                                    Name (_ADR, 0x04)  // _ADR: Address
                                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                    {
                                        Return (FPCP (0x02, One))
                                    }

                                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                    {
                                        Return (FPCP (0x02, 0x02))
                                    }

                                    If (CondRefOf (\_SB.PC00.RP25.TUID))
                                    {
                                        ADBG (Concatenate ("DTBT SS02 TUID = ", ToHexString (\_SB.PC00.RP25.TUID)))
                                        If ((\_SB.PC00.RP25.TUID <= One))
                                        {
                                            Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                                            {
                                                ADBG ("DTBT SS02 DSD")
                                                If ((\_SB.PC00.RP25.TUID == Zero))
                                                {
                                                    Return (Package (0x02)
                                                    {
                                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                        Package (0x02)
                                                        {
                                                            Package (0x02)
                                                            {
                                                                "usb4-host-interface", 
                                                                \_SB.PC00.RP25.PXSX.TBDH.NHI4, 
                                                            }, 

                                                            Package (0x02)
                                                            {
                                                                "usb4-port-number", 
                                                                One
                                                            }
                                                        }
                                                    })
                                                }
                                                Else
                                                {
                                                    Return (Package (0x02)
                                                    {
                                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                                        Package (0x02)
                                                        {
                                                            Package (0x02)
                                                            {
                                                                "usb4-host-interface", 
                                                                \_SB.PC00.RP25.PXSX.TBDH.NHI5, 
                                                            }, 

                                                            Package (0x02)
                                                            {
                                                                "usb4-port-number", 
                                                                One
                                                            }
                                                        }
                                                    })
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }
                    }
                }

                If ((CondRefOf (\_SB.PC00.RP25.TUID) && CondRefOf (\DTRT)))
                {
                    Device (TBDH)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        If ((\_SB.PC00.RP25.TUID <= One))
                        {
                            If ((\_SB.PC00.RP25.TUID == Zero))
                            {
                                Device (NHI4)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    If (CondRefOf (\DTRT))
                                    {
                                        Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
                                        {
                                            If ((\DTRT == Zero))
                                            {
                                                ADBG ("DTBT NHI S0W return 3")
                                                Return (0x03)
                                            }
                                            Else
                                            {
                                                ADBG ("DTBT NHI S0W return 4")
                                                Return (0x04)
                                            }
                                        }

                                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                                        {
                                        }

                                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                                        {
                                            If (!(CondRefOf (\RPS0) && CondRefOf (\RPT0)))
                                            {
                                                Return (Zero)
                                            }

                                            If ((CondRefOf (\DSCE) && CondRefOf (\DTMB)))
                                            {
                                                If ((\DSCE == One))
                                                {
                                                    \DTMB (0x48, Zero, \RPS0, \RPT0)
                                                    If (CondRefOf (\_SB.PC00.RP25.WAKG))
                                                    {
                                                        If ((\_SB.PC00.RP25.WAKG != Zero))
                                                        {
                                                            \_SB.SHPO (\_SB.PC00.RP25.WAKG, Zero)
                                                        }
                                                    }
                                                }
                                            }
                                        }

                                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                        {
                                            Return (Zero)
                                        }
                                    }
                                }
                            }
                            Else
                            {
                                Device (NHI5)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    If (CondRefOf (\DTRT))
                                    {
                                        Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
                                        {
                                            If ((\DTRT == Zero))
                                            {
                                                ADBG ("DTBT NHI S0W return 3")
                                                Return (0x03)
                                            }
                                            Else
                                            {
                                                ADBG ("DTBT NHI S0W return 4")
                                                Return (0x04)
                                            }
                                        }

                                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                                        {
                                        }

                                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                                        {
                                            If (!(CondRefOf (\RPS1) && CondRefOf (\RPT1)))
                                            {
                                                Return (Zero)
                                            }

                                            If ((CondRefOf (\DSCE) && CondRefOf (\DTMB)))
                                            {
                                                If ((\DSCE == One))
                                                {
                                                    \DTMB (0x48, Zero, \RPS1, \RPT1)
                                                    If (CondRefOf (\_SB.PC00.RP25.WAKG))
                                                    {
                                                        If ((\_SB.PC00.RP25.WAKG != Zero))
                                                        {
                                                            \_SB.SHPO (\_SB.PC00.RP25.WAKG, Zero)
                                                        }
                                                    }
                                                }
                                            }
                                        }

                                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                        {
                                            Return (Zero)
                                        }
                                    }
                                }
                            }
                        }
                    }

                    Device (TBP1)
                    {
                        Name (_ADR, 0x00010000)  // _ADR: Address
                        Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
                        {
                            If ((\DTRT == Zero))
                            {
                                ADBG ("DTBT DS1 S0W return 3")
                                Return (0x03)
                            }
                            Else
                            {
                                ADBG ("DTBT DS1 S0W return 4")
                                Return (0x04)
                            }
                        }

                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                        {
                        }

                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                        {
                        }

                        If ((\_SB.PC00.RP25.TUID <= One))
                        {
                            Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                            {
                                If ((\_SB.PC00.RP25.TUID == Zero))
                                {
                                    Return (Package (0x02)
                                    {
                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                        Package (0x02)
                                        {
                                            Package (0x02)
                                            {
                                                "usb4-host-interface", 
                                                \_SB.PC00.RP25.PXSX.TBDH.NHI4, 
                                            }, 

                                            Package (0x02)
                                            {
                                                "usb4-port-number", 
                                                Zero
                                            }
                                        }
                                    })
                                }
                                Else
                                {
                                    Return (Package (0x02)
                                    {
                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                        Package (0x02)
                                        {
                                            Package (0x02)
                                            {
                                                "usb4-host-interface", 
                                                \_SB.PC00.RP25.PXSX.TBDH.NHI5, 
                                            }, 

                                            Package (0x02)
                                            {
                                                "usb4-port-number", 
                                                Zero
                                            }
                                        }
                                    })
                                }
                            }
                        }
                    }

                    Device (TBP3)
                    {
                        Name (_ADR, 0x00030000)  // _ADR: Address
                        Method (_S0W, 0, Serialized)  // _S0W: S0 Device Wake State
                        {
                            If ((\DTRT == Zero))
                            {
                                ADBG ("DTBT DS3 S0W return 3")
                                Return (0x03)
                            }
                            Else
                            {
                                ADBG ("DTBT DS3 S0W return 4")
                                Return (0x04)
                            }
                        }

                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                        {
                        }

                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                        {
                        }

                        If ((\_SB.PC00.RP25.TUID <= One))
                        {
                            Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
                            {
                                If ((\_SB.PC00.RP25.TUID == Zero))
                                {
                                    Return (Package (0x02)
                                    {
                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                        Package (0x02)
                                        {
                                            Package (0x02)
                                            {
                                                "usb4-host-interface", 
                                                \_SB.PC00.RP25.PXSX.TBDH.NHI4, 
                                            }, 

                                            Package (0x02)
                                            {
                                                "usb4-port-number", 
                                                One
                                            }
                                        }
                                    })
                                }
                                Else
                                {
                                    Return (Package (0x02)
                                    {
                                        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                                        Package (0x02)
                                        {
                                            Package (0x02)
                                            {
                                                "usb4-host-interface", 
                                                \_SB.PC00.RP25.PXSX.TBDH.NHI5, 
                                            }, 

                                            Package (0x02)
                                            {
                                                "usb4-port-number", 
                                                One
                                            }
                                        }
                                    })
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

