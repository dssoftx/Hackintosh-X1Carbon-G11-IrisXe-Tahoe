/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20260408 (64-bit version)
 * Copyright (c) 2000 - 2026 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/daniel/Desktop/X1C1360pTahoe/hw/acpi/oem/SSDT4.aml
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000060E (1550)
 *     Revision         0x02
 *     Checksum         0xC0
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "Tpm2Tabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200717 (538969879)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "Tpm2Tabl", 0x00001000)
{
    Scope (\_SB)
    {
        Device (TPM)
        {
            Name (_HID, "NTC0702")  // _HID: Hardware ID
            Noop
            Name (_CID, "MSFT0101" /* TPM 2.0 Security Device */)  // _CID: Compatible ID
            Name (_STR, Unicode ("TPM 2.0 Device"))  // _STR: Description String
            OperationRegion (SMIP, SystemIO, 0xB2, One)
            Field (SMIP, ByteAcc, NoLock, Preserve)
            {
                IOPN,   8
            }

            OperationRegion (TPMR, SystemMemory, 0xFED40000, 0x5000)
            Field (TPMR, AnyAcc, NoLock, Preserve)
            {
                ACC0,   8, 
                Offset (0x08), 
                INTE,   32, 
                INTV,   8, 
                Offset (0x10), 
                INTS,   32, 
                INTF,   32, 
                STS0,   32, 
                Offset (0x24), 
                FIFO,   32, 
                Offset (0x30), 
                TID0,   32
            }

            OperationRegion (TNVS, SystemMemory, 0x5A9A4000, 0x2F)
            Field (TNVS, AnyAcc, NoLock, Preserve)
            {
                PPIN,   8, 
                PPIP,   32, 
                PPRP,   32, 
                PPRQ,   32, 
                PPRM,   32, 
                LPPR,   32, 
                FRET,   32, 
                MCIN,   8, 
                MCIP,   32, 
                MORD,   32, 
                MRET,   32, 
                UCRQ,   32, 
                IRQN,   32, 
                SFRB,   8
            }

            Name (RESS, Buffer (0x3B)
            {
                /* 0000 */  0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0xD4, 0xFE,  // ........
                /* 0008 */  0x00, 0x50, 0x00, 0x00, 0x89, 0x2A, 0x00, 0x0D,  // .P...*..
                /* 0010 */  0x0A, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00,  // ........
                /* 0018 */  0x00, 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                /* 0020 */  0x00, 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00,  // ........
                /* 0028 */  0x00, 0x07, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00,  // ........
                /* 0030 */  0x00, 0x09, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00,  // ........
                /* 0038 */  0x00, 0x79, 0x00                                 // .y.
            })
            Name (RESL, Buffer (0x4F)
            {
                /* 0000 */  0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0xD4, 0xFE,  // ........
                /* 0008 */  0x00, 0x50, 0x00, 0x00, 0x89, 0x3E, 0x00, 0x0D,  // .P...>..
                /* 0010 */  0x0F, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00,  // ........
                /* 0018 */  0x00, 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                /* 0020 */  0x00, 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00,  // ........
                /* 0028 */  0x00, 0x07, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00,  // ........
                /* 0030 */  0x00, 0x09, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00,  // ........
                /* 0038 */  0x00, 0x0B, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00,  // ........
                /* 0040 */  0x00, 0x0D, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00,  // ........
                /* 0048 */  0x00, 0x0F, 0x00, 0x00, 0x00, 0x79, 0x00         // .....y.
            })
            Name (RES0, Buffer (0x17)
            {
                /* 0000 */  0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0xD4, 0xFE,  // ........
                /* 0008 */  0x00, 0x50, 0x00, 0x00, 0x89, 0x06, 0x00, 0x0D,  // .P......
                /* 0010 */  0x01, 0x0C, 0x00, 0x00, 0x00, 0x79, 0x00         // .....y.
            })
            Name (RES1, Buffer (0x0E)
            {
                /* 0000 */  0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0xD4, 0xFE,  // ........
                /* 0008 */  0x00, 0x50, 0x00, 0x00, 0x79, 0x00               // .P..y.
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                If ((IRQN == Zero))
                {
                    Return (RES1) /* \_SB_.TPM_.RES1 */
                }
                Else
                {
                    CreateDWordField (RES0, 0x11, LIRQ)
                    LIRQ = IRQN /* \_SB_.TPM_.IRQN */
                    Return (RES0) /* \_SB_.TPM_.RES0 */
                }
            }

            Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
            {
                If ((IRQN != Zero))
                {
                    CreateDWordField (Arg0, 0x11, IRQ0)
                    CreateDWordField (RES0, 0x11, LIRQ)
                    LIRQ = IRQ0 /* \_SB_.TPM_._SRS.IRQ0 */
                    IRQN = IRQ0 /* \_SB_.TPM_._SRS.IRQ0 */
                    CreateBitField (Arg0, 0x79, ITRG)
                    CreateBitField (RES0, 0x79, LTRG)
                    LTRG = ITRG /* \_SB_.TPM_._SRS.ITRG */
                    CreateBitField (Arg0, 0x7A, ILVL)
                    CreateBitField (RES0, 0x7A, LLVL)
                    LLVL = ILVL /* \_SB_.TPM_._SRS.ILVL */
                    If ((((TID0 & 0x0F) == Zero) || ((TID0 & 0x0F
                        ) == 0x0F)))
                    {
                        If ((IRQ0 < 0x10))
                        {
                            INTV = (IRQ0 & 0x0F)
                        }

                        If ((ITRG == One))
                        {
                            INTE |= 0x10
                        }
                        Else
                        {
                            INTE &= 0xFFFFFFEF
                        }

                        If ((ILVL == Zero))
                        {
                            INTE |= 0x08
                        }
                        Else
                        {
                            INTE &= 0xFFFFFFF7
                        }
                    }
                }
            }

            Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
            {
                If ((IRQN == Zero))
                {
                    Return (RES1) /* \_SB_.TPM_.RES1 */
                }
                ElseIf ((SFRB == Zero))
                {
                    Return (RESL) /* \_SB_.TPM_.RESL */
                }
                Else
                {
                    Return (RESS) /* \_SB_.TPM_.RESS */
                }
            }

            Method (PTS, 1, Serialized)
            {
                If (((Arg0 < 0x06) && (Arg0 > 0x03)))
                {
                    If (!(MORD & 0x10))
                    {
                        MCIP = 0x02
                        IOPN = MCIN /* \_SB_.TPM_.MCIN */
                    }
                }

                Return (Zero)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((ACC0 == 0xFF))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (HINF, 1, Serialized)
            {
                Switch (ToInteger (Arg0))
                {
                    Case (Zero)
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }
                    Case (One)
                    {
                        Name (TPMV, Package (0x02)
                        {
                            One, 
                            Package (0x02)
                            {
                                0x02, 
                                Zero
                            }
                        })
                        If ((_STA () == Zero))
                        {
                            Return (Package (0x01)
                            {
                                Zero
                            })
                        }

                        Return (TPMV) /* \_SB_.TPM_.HINF.TPMV */
                    }
                    Default
                    {
                        BreakPoint
                    }

                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }

            Name (TPM2, Package (0x02)
            {
                Zero, 
                Zero
            })
            Name (TPM3, Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })
            Method (TPPI, 2, Serialized)
            {
                Switch (ToInteger (Arg0))
                {
                    Case (Zero)
                    {
                        Return (Buffer (0x02)
                        {
                             0xFF, 0x01                                       // ..
                        })
                    }
                    Case (One)
                    {
                        Return ("1.3")
                    }
                    Case (0x02)
                    {
                        PPRQ = DerefOf (Arg1 [Zero])
                        PPRM = Zero
                        PPIP = 0x02
                        IOPN = PPIN /* \_SB_.TPM_.PPIN */
                        Return (FRET) /* \_SB_.TPM_.FRET */
                    }
                    Case (0x03)
                    {
                        TPM2 [One] = PPRQ /* \_SB_.TPM_.PPRQ */
                        Return (TPM2) /* \_SB_.TPM_.TPM2 */
                    }
                    Case (0x04)
                    {
                        Return (0x02)
                    }
                    Case (0x05)
                    {
                        PPIP = 0x05
                        IOPN = PPIN /* \_SB_.TPM_.PPIN */
                        TPM3 [One] = LPPR /* \_SB_.TPM_.LPPR */
                        TPM3 [0x02] = PPRP /* \_SB_.TPM_.PPRP */
                        Return (TPM3) /* \_SB_.TPM_.TPM3 */
                    }
                    Case (0x06)
                    {
                        Return (0x03)
                    }
                    Case (0x07)
                    {
                        PPIP = 0x07
                        PPRQ = DerefOf (Arg1 [Zero])
                        PPRM = Zero
                        If ((PPRQ == 0x17))
                        {
                            PPRM = DerefOf (Arg1 [One])
                        }

                        IOPN = PPIN /* \_SB_.TPM_.PPIN */
                        Return (FRET) /* \_SB_.TPM_.FRET */
                    }
                    Case (0x08)
                    {
                        PPIP = 0x08
                        UCRQ = DerefOf (Arg1 [Zero])
                        IOPN = PPIN /* \_SB_.TPM_.PPIN */
                        Return (FRET) /* \_SB_.TPM_.FRET */
                    }
                    Default
                    {
                        BreakPoint
                    }

                }

                Return (One)
            }

            Method (TMCI, 2, Serialized)
            {
                Switch (ToInteger (Arg0))
                {
                    Case (Zero)
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }
                    Case (One)
                    {
                        MORD = DerefOf (Arg1 [Zero])
                        MCIP = One
                        IOPN = MCIN /* \_SB_.TPM_.MCIN */
                        Return (MRET) /* \_SB_.TPM_.MRET */
                    }
                    Default
                    {
                        BreakPoint
                    }

                }

                Return (One)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("cf8e16a5-c1e8-4e25-b712-4f54a96702c8") /* TPM Hardware Information */))
                {
                    Return (HINF (Arg2))
                }

                If ((Arg0 == ToUUID ("3dddfaa6-361b-4eb4-a424-8d10089d1653") /* Physical Presence Interface */))
                {
                    Return (TPPI (Arg2, Arg3))
                }

                If ((Arg0 == ToUUID ("376054ed-cc13-4675-901c-4756d7f2d45d") /* TPM Memory Clear */))
                {
                    Return (TMCI (Arg2, Arg3))
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }
    }
}

