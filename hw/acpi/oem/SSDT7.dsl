/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20260408 (64-bit version)
 * Copyright (c) 2000 - 2026 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/daniel/Desktop/X1C1360pTahoe/hw/acpi/oem/SSDT7.aml
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000127B (4731)
 *     Revision         0x02
 *     Checksum         0x9D
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "ProjSsdt"
 *     OEM Revision     0x00000010 (16)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200717 (538969879)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "ProjSsdt", 0x00000010)
{
    External (_SB_.PC00.LPCB.EC__.DOCD, UnknownObj)
    External (_SB_.PC00.SAT0, DeviceObj)
    External (_SB_.PC00.SAT0.PRT0, DeviceObj)
    External (_SB_.PC00.SAT0.PRT1, DeviceObj)
    External (_SB_.PC00.SAT0.PRT2, DeviceObj)
    External (_SB_.PC00.SAT0.PRT3, DeviceObj)
    External (_SB_.PC00.SAT0.PRT4, DeviceObj)
    External (_SB_.PC00.SAT0.PRT5, DeviceObj)
    External (_SB_.PC00.XHCI, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS01, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS02, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS03, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS04, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS05, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS06, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS07, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS08, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS09, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS10, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.SS01, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.SS02, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.SS03, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.SS04, DeviceObj)
    External (DPP0, UnknownObj)
    External (DPP1, UnknownObj)
    External (DPP2, UnknownObj)
    External (DPP3, UnknownObj)
    External (DPP4, UnknownObj)
    External (DVS0, UnknownObj)
    External (DVS1, UnknownObj)
    External (DVS2, UnknownObj)
    External (DVS3, UnknownObj)
    External (PLD3, BuffObj)
    External (PLDC, BuffObj)
    External (PLDI, BuffObj)
    External (PLDL, BuffObj)
    External (PLDR, BuffObj)
    External (PLU1, BuffObj)
    External (UCPD, MethodObj)    // 2 Arguments
    External (UPC1, PkgObj)
    External (UPC3, PkgObj)
    External (UPCI, PkgObj)
    External (UPCL, PkgObj)
    External (UPCR, PkgObj)
    External (WIN8, UnknownObj)

    Scope (\_SB.PC00.XHCI.RHUB.HS01)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            CopyObject (UCPD (One, One), UPCP) /* \_SB_.PC00.XHCI.RHUB.HS01._UPC.UPCP */
            Return (UPCP) /* \_SB_.PC00.XHCI.RHUB.HS01._UPC.UPCP */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Buffer (0x10){})
            PLDP = UCPD (One, 0x02)
            Return (PLDP) /* \_SB_.PC00.XHCI.RHUB.HS01._PLD.PLDP */
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.HS02)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            CopyObject (\UPCI, UPCP) /* \_SB_.PC00.XHCI.RHUB.HS02._UPC.UPCP */
            Return (UPCP) /* \_SB_.PC00.XHCI.RHUB.HS02._UPC.UPCP */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Buffer (0x10){})
            PLDP = \PLDI /* External reference */
            Return (PLDP) /* \_SB_.PC00.XHCI.RHUB.HS02._PLD.PLDP */
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.HS03)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            CopyObject (UCPD (0x02, One), UPCP) /* \_SB_.PC00.XHCI.RHUB.HS03._UPC.UPCP */
            Return (UPCP) /* \_SB_.PC00.XHCI.RHUB.HS03._UPC.UPCP */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Buffer (0x10){})
            PLDP = UCPD (0x02, 0x02)
            Return (PLDP) /* \_SB_.PC00.XHCI.RHUB.HS03._PLD.PLDP */
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.HS04)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            CopyObject (\UPCI, UPCP) /* \_SB_.PC00.XHCI.RHUB.HS04._UPC.UPCP */
            Return (UPCP) /* \_SB_.PC00.XHCI.RHUB.HS04._UPC.UPCP */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Buffer (0x10){})
            PLDP = \PLDI /* External reference */
            Return (PLDP) /* \_SB_.PC00.XHCI.RHUB.HS04._PLD.PLDP */
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.HS05)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            CopyObject (\UPCI, UPCP) /* \_SB_.PC00.XHCI.RHUB.HS05._UPC.UPCP */
            Return (UPCP) /* \_SB_.PC00.XHCI.RHUB.HS05._UPC.UPCP */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Buffer (0x10){})
            PLDP = \PLDI /* External reference */
            Return (PLDP) /* \_SB_.PC00.XHCI.RHUB.HS05._PLD.PLDP */
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.HS06)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            CopyObject (\UPCI, UPCP) /* \_SB_.PC00.XHCI.RHUB.HS06._UPC.UPCP */
            Return (UPCP) /* \_SB_.PC00.XHCI.RHUB.HS06._UPC.UPCP */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Buffer (0x10){})
            PLDP = \PLDI /* External reference */
            Return (PLDP) /* \_SB_.PC00.XHCI.RHUB.HS06._PLD.PLDP */
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.HS07)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            CopyObject (\UPCR, UPCP) /* \_SB_.PC00.XHCI.RHUB.HS07._UPC.UPCP */
            Return (UPCP) /* \_SB_.PC00.XHCI.RHUB.HS07._UPC.UPCP */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Buffer (0x10){})
            PLDP = \PLDR /* External reference */
            Return (PLDP) /* \_SB_.PC00.XHCI.RHUB.HS07._PLD.PLDP */
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.HS08)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            CopyObject (\UPCI, UPCP) /* \_SB_.PC00.XHCI.RHUB.HS08._UPC.UPCP */
            Return (UPCP) /* \_SB_.PC00.XHCI.RHUB.HS08._UPC.UPCP */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Buffer (0x10){})
            PLDP = \PLDI /* External reference */
            Return (PLDP) /* \_SB_.PC00.XHCI.RHUB.HS08._PLD.PLDP */
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.HS09)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            CopyObject (\UPCL, UPCP) /* \_SB_.PC00.XHCI.RHUB.HS09._UPC.UPCP */
            Return (UPCP) /* \_SB_.PC00.XHCI.RHUB.HS09._UPC.UPCP */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Buffer (0x10){})
            PLDP = \PLDL /* External reference */
            Return (PLDP) /* \_SB_.PC00.XHCI.RHUB.HS09._PLD.PLDP */
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.HS10)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            CopyObject (\UPCI, UPCP) /* \_SB_.PC00.XHCI.RHUB.HS10._UPC.UPCP */
            Return (UPCP) /* \_SB_.PC00.XHCI.RHUB.HS10._UPC.UPCP */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Buffer (0x10){})
            PLDP = \PLDI /* External reference */
            Return (PLDP) /* \_SB_.PC00.XHCI.RHUB.HS10._PLD.PLDP */
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.SS01)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            CopyObject (\UPCL, UPCP) /* \_SB_.PC00.XHCI.RHUB.SS01._UPC.UPCP */
            Return (UPCP) /* \_SB_.PC00.XHCI.RHUB.SS01._UPC.UPCP */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Buffer (0x10){})
            PLDP = \PLDL /* External reference */
            Return (PLDP) /* \_SB_.PC00.XHCI.RHUB.SS01._PLD.PLDP */
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.SS02)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            CopyObject (\UPCR, UPCP) /* \_SB_.PC00.XHCI.RHUB.SS02._UPC.UPCP */
            Return (UPCP) /* \_SB_.PC00.XHCI.RHUB.SS02._UPC.UPCP */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Buffer (0x10){})
            PLDP = \PLDR /* External reference */
            Return (PLDP) /* \_SB_.PC00.XHCI.RHUB.SS02._PLD.PLDP */
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.SS03)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            CopyObject (\UPCI, UPCP) /* \_SB_.PC00.XHCI.RHUB.SS03._UPC.UPCP */
            Return (UPCP) /* \_SB_.PC00.XHCI.RHUB.SS03._UPC.UPCP */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Buffer (0x10){})
            PLDP = \PLDI /* External reference */
            Return (PLDP) /* \_SB_.PC00.XHCI.RHUB.SS03._PLD.PLDP */
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.SS04)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            CopyObject (\UPCI, UPCP) /* \_SB_.PC00.XHCI.RHUB.SS04._UPC.UPCP */
            Return (UPCP) /* \_SB_.PC00.XHCI.RHUB.SS04._UPC.UPCP */
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Buffer (0x10){})
            PLDP = \PLDI /* External reference */
            Return (PLDP) /* \_SB_.PC00.XHCI.RHUB.SS04._PLD.PLDP */
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.HS08)
    {
        Device (WCAM)
        {
            Name (_ADR, 0x08)  // _ADR: Address
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (\WIN8)
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
            {
                Return (\UPCI) /* External reference */
            }

            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                Return (\PLDC) /* External reference */
            }
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.HS08)
    {
        Device (ICAM)
        {
            Name (_ADR, 0x0A)  // _ADR: Address
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (\WIN8)
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
            {
                Return (\UPCI) /* External reference */
            }

            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                Return (\PLDC) /* External reference */
            }
        }
    }

    Scope (\_SB.PC00.SAT0)
    {
        Scope (PRT0)
        {
            Name (DIP0, Zero)
            Name (FDEV, Zero)
            Name (FDRP, Zero)
            Name (HDTF, Buffer (0x0E)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5               // ......
            })
            Name (HETF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x09,  // ........
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                     // .....
            })
            Name (ERTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,  // ......_.
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                     // .....
            })
            Name (HPTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,  // ........
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                     // .....
            })
            Name (HQTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,  // ........
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x09, 0x00,  // ........
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                           // ....
            })
            Name (HXTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,  // ......_.
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x03, 0x00,  // ........
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                           // ....
            })
            Name (DDTF, Buffer (0x0E)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3               // ......
            })
            CreateByteField (DDTF, One, DTAT)
            CreateByteField (DDTF, 0x08, DTFT)
            Name (DGTF, Buffer (0x15)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x10, 0x03,  // ........
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                     // .....
            })
            CreateByteField (DGTF, One, GTAT)
            CreateByteField (DGTF, 0x08, GTFT)
            Method (_SDD, 1, NotSerialized)  // _SDD: Set Device Data
            {
                DIP0 = Zero
                If ((SizeOf (Arg0) == 0x0200))
                {
                    CreateWordField (Arg0, 0x9C, M078)
                    If ((\DPP0 && (M078 & 0x08)))
                    {
                        DIP0 = One
                    }

                    CreateByteField (Arg0, 0x9D, BFDS)
                    ToInteger (BFDS, FDEV) /* \_SB_.PC00.SAT0.PRT0.FDEV */
                    CreateByteField (Arg0, 0x9A, BFRP)
                    ToInteger (BFRP, FDRP) /* \_SB_.PC00.SAT0.PRT0.FDRP */
                }
            }

            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                If (DIP0)
                {
                    If ((((DVS0 == One) && ((FDEV & One) == One)) && 
                        ((FDRP & 0x80) == 0x80)))
                    {
                        Return (HQTF) /* \_SB_.PC00.SAT0.PRT0.HQTF */
                    }
                    Else
                    {
                        Return (HPTF) /* \_SB_.PC00.SAT0.PRT0.HPTF */
                    }
                }
                ElseIf ((((DVS0 == One) && ((FDEV & One) == 
                    One)) && ((FDRP & 0x80) == 0x80)))
                {
                    Return (HETF) /* \_SB_.PC00.SAT0.PRT0.HETF */
                }
                Else
                {
                    Return (HDTF) /* \_SB_.PC00.SAT0.PRT0.HDTF */
                }
            }
        }

        Scope (PRT1)
        {
            Name (DIP0, Zero)
            Name (FDEV, Zero)
            Name (FDRP, Zero)
            Name (HDTF, Buffer (0x0E)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5               // ......
            })
            Name (HETF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x09,  // ........
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                     // .....
            })
            Name (ERTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,  // ......_.
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                     // .....
            })
            Name (HPTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,  // ........
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                     // .....
            })
            Name (HQTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,  // ........
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x09, 0x00,  // ........
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                           // ....
            })
            Name (HXTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,  // ......_.
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x03, 0x00,  // ........
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                           // ....
            })
            Name (DDTF, Buffer (0x0E)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3               // ......
            })
            CreateByteField (DDTF, One, DTAT)
            CreateByteField (DDTF, 0x08, DTFT)
            Name (DGTF, Buffer (0x15)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x10, 0x03,  // ........
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                     // .....
            })
            CreateByteField (DGTF, One, GTAT)
            CreateByteField (DGTF, 0x08, GTFT)
            Method (_SDD, 1, NotSerialized)  // _SDD: Set Device Data
            {
                DIP0 = Zero
                If ((SizeOf (Arg0) == 0x0200))
                {
                    CreateWordField (Arg0, 0x9C, M078)
                    If ((\DPP1 && (M078 & 0x08)))
                    {
                        DIP0 = One
                    }

                    CreateByteField (Arg0, 0x9D, BFDS)
                    ToInteger (BFDS, FDEV) /* \_SB_.PC00.SAT0.PRT1.FDEV */
                    CreateByteField (Arg0, 0x9A, BFRP)
                    ToInteger (BFRP, FDRP) /* \_SB_.PC00.SAT0.PRT1.FDRP */
                }
            }

            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                If (DIP0)
                {
                    If ((((DVS1 == One) && ((FDEV & One) == One)) && 
                        ((FDRP & 0x80) == 0x80)))
                    {
                        Return (HQTF) /* \_SB_.PC00.SAT0.PRT1.HQTF */
                    }
                    Else
                    {
                        Return (HPTF) /* \_SB_.PC00.SAT0.PRT1.HPTF */
                    }
                }
                ElseIf ((((DVS1 == One) && ((FDEV & One) == 
                    One)) && ((FDRP & 0x80) == 0x80)))
                {
                    Return (HETF) /* \_SB_.PC00.SAT0.PRT1.HETF */
                }
                Else
                {
                    Return (HDTF) /* \_SB_.PC00.SAT0.PRT1.HDTF */
                }
            }
        }

        Scope (PRT2)
        {
            Name (DIP0, Zero)
            Name (FDEV, Zero)
            Name (FDRP, Zero)
            Name (HDTF, Buffer (0x0E)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5               // ......
            })
            Name (HETF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x09,  // ........
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                     // .....
            })
            Name (ERTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,  // ......_.
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                     // .....
            })
            Name (HPTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,  // ........
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                     // .....
            })
            Name (HQTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,  // ........
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x09, 0x00,  // ........
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                           // ....
            })
            Name (HXTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,  // ......_.
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x03, 0x00,  // ........
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                           // ....
            })
            Name (DDTF, Buffer (0x0E)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3               // ......
            })
            CreateByteField (DDTF, One, DTAT)
            CreateByteField (DDTF, 0x08, DTFT)
            Name (DGTF, Buffer (0x15)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x10, 0x03,  // ........
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                     // .....
            })
            CreateByteField (DGTF, One, GTAT)
            CreateByteField (DGTF, 0x08, GTFT)
            Method (_SDD, 1, NotSerialized)  // _SDD: Set Device Data
            {
                DIP0 = Zero
                If ((SizeOf (Arg0) == 0x0200))
                {
                    CreateWordField (Arg0, 0x9C, M078)
                    If ((\DPP2 && (M078 & 0x08)))
                    {
                        DIP0 = One
                    }

                    CreateByteField (Arg0, 0x9D, BFDS)
                    ToInteger (BFDS, FDEV) /* \_SB_.PC00.SAT0.PRT2.FDEV */
                    CreateByteField (Arg0, 0x9A, BFRP)
                    ToInteger (BFRP, FDRP) /* \_SB_.PC00.SAT0.PRT2.FDRP */
                }
            }

            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                If (DIP0)
                {
                    If ((((DVS2 == One) && ((FDEV & One) == One)) && 
                        ((FDRP & 0x80) == 0x80)))
                    {
                        Return (HQTF) /* \_SB_.PC00.SAT0.PRT2.HQTF */
                    }
                    Else
                    {
                        Return (HPTF) /* \_SB_.PC00.SAT0.PRT2.HPTF */
                    }
                }
                ElseIf ((((DVS2 == One) && ((FDEV & One) == 
                    One)) && ((FDRP & 0x80) == 0x80)))
                {
                    Return (HETF) /* \_SB_.PC00.SAT0.PRT2.HETF */
                }
                Else
                {
                    Return (HDTF) /* \_SB_.PC00.SAT0.PRT2.HDTF */
                }
            }
        }

        Scope (PRT3)
        {
            Name (DIP0, Zero)
            Name (FDEV, Zero)
            Name (FDRP, Zero)
            Name (HDTF, Buffer (0x0E)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5               // ......
            })
            Name (HETF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x09,  // ........
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                     // .....
            })
            Name (ERTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,  // ......_.
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                     // .....
            })
            Name (HPTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,  // ........
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                     // .....
            })
            Name (HQTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,  // ........
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x09, 0x00,  // ........
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                           // ....
            })
            Name (HXTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,  // ......_.
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x03, 0x00,  // ........
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                           // ....
            })
            Name (DDTF, Buffer (0x0E)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3               // ......
            })
            CreateByteField (DDTF, One, DTAT)
            CreateByteField (DDTF, 0x08, DTFT)
            Name (DGTF, Buffer (0x15)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x10, 0x03,  // ........
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                     // .....
            })
            CreateByteField (DGTF, One, GTAT)
            CreateByteField (DGTF, 0x08, GTFT)
            Method (_SDD, 1, NotSerialized)  // _SDD: Set Device Data
            {
                DIP0 = Zero
                If ((SizeOf (Arg0) == 0x0200))
                {
                    CreateWordField (Arg0, 0x9C, M078)
                    If ((\DPP3 && (M078 & 0x08)))
                    {
                        DIP0 = One
                    }

                    CreateByteField (Arg0, 0x9D, BFDS)
                    ToInteger (BFDS, FDEV) /* \_SB_.PC00.SAT0.PRT3.FDEV */
                    CreateByteField (Arg0, 0x9A, BFRP)
                    ToInteger (BFRP, FDRP) /* \_SB_.PC00.SAT0.PRT3.FDRP */
                }
            }

            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                If (DIP0)
                {
                    If ((((DVS3 == One) && ((FDEV & One) == One)) && 
                        ((FDRP & 0x80) == 0x80)))
                    {
                        Return (HQTF) /* \_SB_.PC00.SAT0.PRT3.HQTF */
                    }
                    Else
                    {
                        Return (HPTF) /* \_SB_.PC00.SAT0.PRT3.HPTF */
                    }
                }
                ElseIf ((((DVS3 == One) && ((FDEV & One) == 
                    One)) && ((FDRP & 0x80) == 0x80)))
                {
                    Return (HETF) /* \_SB_.PC00.SAT0.PRT3.HETF */
                }
                Else
                {
                    Return (HDTF) /* \_SB_.PC00.SAT0.PRT3.HDTF */
                }
            }
        }

        Scope (PRT4)
        {
            Name (DIP0, Zero)
            Name (HDTF, Buffer (0x0E)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5               // ......
            })
            Name (HETF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x09,  // ........
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                     // .....
            })
            Name (ERTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,  // ......_.
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                     // .....
            })
            Name (HPTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,  // ........
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                     // .....
            })
            Name (HQTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,  // ........
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x09, 0x00,  // ........
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                           // ....
            })
            Name (HXTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,  // ......_.
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x03, 0x00,  // ........
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                           // ....
            })
            Name (DDTF, Buffer (0x0E)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3               // ......
            })
            CreateByteField (DDTF, One, DTAT)
            CreateByteField (DDTF, 0x08, DTFT)
            Name (DGTF, Buffer (0x15)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x10, 0x03,  // ........
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                     // .....
            })
            CreateByteField (DGTF, One, GTAT)
            CreateByteField (DGTF, 0x08, GTFT)
            Method (_SDD, 1, NotSerialized)  // _SDD: Set Device Data
            {
                DIP0 = Zero
                If ((SizeOf (Arg0) == 0x0200))
                {
                    CreateWordField (Arg0, 0x9C, M078)
                    If ((\DPP4 && (M078 & 0x08)))
                    {
                        DIP0 = One
                    }
                }
            }

            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                If (DIP0)
                {
                    Return (HPTF) /* \_SB_.PC00.SAT0.PRT4.HPTF */
                }

                Return (HDTF) /* \_SB_.PC00.SAT0.PRT4.HDTF */
            }
        }
    }

    Scope (\_SB.PC00.SAT0)
    {
        Scope (PRT0)
        {
            Name (PORT, Zero)
            Name (PBAR, 0x0118)
            Name (PWRG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
        }

        Scope (PRT1)
        {
            Name (PORT, One)
            Name (PBAR, 0x0198)
            Name (PWRG, Package (0x04)
            {
                0x02, 
                Zero, 
                Zero, 
                Zero
            })
        }

        Scope (PRT2)
        {
            Name (PORT, 0x02)
            Name (PBAR, 0x0218)
            Name (PWRG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                One
            })
        }
    }
}

