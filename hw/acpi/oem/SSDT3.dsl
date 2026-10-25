/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20260408 (64-bit version)
 * Copyright (c) 2000 - 2026 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/daniel/Desktop/X1C1360pTahoe/hw/acpi/oem/SSDT3.aml
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000043D8 (17368)
 *     Revision         0x02
 *     Checksum         0xA6
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "DptfTabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200717 (538969879)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "DptfTabl", 0x00001000)
{
    External (_SB_.AAC0, FieldUnitObj)
    External (_SB_.ACRT, FieldUnitObj)
    External (_SB_.APSV, FieldUnitObj)
    External (_SB_.CBMI, FieldUnitObj)
    External (_SB_.CFGD, FieldUnitObj)
    External (_SB_.CLVL, FieldUnitObj)
    External (_SB_.CPID, UnknownObj)
    External (_SB_.CPPC, FieldUnitObj)
    External (_SB_.CTC0, FieldUnitObj)
    External (_SB_.CTC1, FieldUnitObj)
    External (_SB_.CTC2, FieldUnitObj)
    External (_SB_.FAN0.CRNF, MethodObj)    // 0 Arguments
    External (_SB_.FAN0.SRPM, MethodObj)    // 1 Arguments
    External (_SB_.OSCP, IntObj)
    External (_SB_.PAGD, DeviceObj)
    External (_SB_.PAGD._PUR, PkgObj)
    External (_SB_.PAGD._STA, MethodObj)    // 0 Arguments
    External (_SB_.PC00, DeviceObj)
    External (_SB_.PC00.LPCB.EC__, DeviceObj)
    External (_SB_.PC00.LPCB.EC__.HKEY.DHKC, IntObj)
    External (_SB_.PC00.LPCB.EC__.HKEY.DYTC, MethodObj)    // 1 Arguments
    External (_SB_.PC00.LPCB.EC__.HKEY.OEMV, IntObj)
    External (_SB_.PC00.LPCB.EC__.TSL1, IntObj)
    External (_SB_.PC00.MC__.MHBR, FieldUnitObj)
    External (_SB_.PC00.TCPU, DeviceObj)
    External (_SB_.PL10, FieldUnitObj)
    External (_SB_.PL11, FieldUnitObj)
    External (_SB_.PL12, FieldUnitObj)
    External (_SB_.PL20, FieldUnitObj)
    External (_SB_.PL21, FieldUnitObj)
    External (_SB_.PL22, FieldUnitObj)
    External (_SB_.PLW0, FieldUnitObj)
    External (_SB_.PLW1, FieldUnitObj)
    External (_SB_.PLW2, FieldUnitObj)
    External (_SB_.PR00, ProcessorObj)
    External (_SB_.PR00._PSS, MethodObj)    // 0 Arguments
    External (_SB_.PR00._TPC, IntObj)
    External (_SB_.PR00._TSD, MethodObj)    // 0 Arguments
    External (_SB_.PR00._TSS, MethodObj)    // 0 Arguments
    External (_SB_.PR00.LPSS, PkgObj)
    External (_SB_.PR00.TPSS, PkgObj)
    External (_SB_.PR00.TSMC, PkgObj)
    External (_SB_.PR00.TSMF, PkgObj)
    External (_SB_.PR01, ProcessorObj)
    External (_SB_.PR02, ProcessorObj)
    External (_SB_.PR03, ProcessorObj)
    External (_SB_.PR04, ProcessorObj)
    External (_SB_.PR05, ProcessorObj)
    External (_SB_.PR06, ProcessorObj)
    External (_SB_.PR07, ProcessorObj)
    External (_SB_.PR08, ProcessorObj)
    External (_SB_.PR09, ProcessorObj)
    External (_SB_.PR10, ProcessorObj)
    External (_SB_.PR11, ProcessorObj)
    External (_SB_.PR12, ProcessorObj)
    External (_SB_.PR13, ProcessorObj)
    External (_SB_.PR14, ProcessorObj)
    External (_SB_.PR15, ProcessorObj)
    External (_SB_.PR16, ProcessorObj)
    External (_SB_.PR17, ProcessorObj)
    External (_SB_.PR18, ProcessorObj)
    External (_SB_.PR19, ProcessorObj)
    External (_SB_.PR20, ProcessorObj)
    External (_SB_.PR21, ProcessorObj)
    External (_SB_.PR22, ProcessorObj)
    External (_SB_.PR23, ProcessorObj)
    External (_SB_.PR24, ProcessorObj)
    External (_SB_.PR25, ProcessorObj)
    External (_SB_.PR26, ProcessorObj)
    External (_SB_.PR27, ProcessorObj)
    External (_SB_.PR28, ProcessorObj)
    External (_SB_.PR29, ProcessorObj)
    External (_SB_.PR30, ProcessorObj)
    External (_SB_.PR31, ProcessorObj)
    External (_SB_.SLPB, DeviceObj)
    External (_SB_.TAR0, FieldUnitObj)
    External (_SB_.TAR1, FieldUnitObj)
    External (_SB_.TAR2, FieldUnitObj)
    External (_TZ_.TC2K, MethodObj)    // 1 Arguments
    External (_TZ_.THM0, ThermalZoneObj)
    External (_TZ_.THM0._TMP, MethodObj)    // 0 Arguments
    External (ACTT, IntObj)
    External (ATPC, IntObj)
    External (BATR, IntObj)
    External (CHGE, IntObj)
    External (CRTT, IntObj)
    External (DCFE, IntObj)
    External (DPCP, IntObj)
    External (DPTF, IntObj)
    External (ECON, IntObj)
    External (FND1, IntObj)
    External (FND2, IntObj)
    External (FND3, IntObj)
    External (GTST, MethodObj)    // 1 Arguments
    External (H8DR, IntObj)
    External (HIDW, MethodObj)    // 4 Arguments
    External (HIWC, MethodObj)    // 1 Arguments
    External (IN34, IntObj)
    External (MPID, IntObj)
    External (ODV0, IntObj)
    External (ODV1, IntObj)
    External (ODV2, IntObj)
    External (ODV3, IntObj)
    External (ODV4, IntObj)
    External (ODV5, IntObj)
    External (PCHE, FieldUnitObj)
    External (PF00, IntObj)
    External (PLID, IntObj)
    External (PNHM, IntObj)
    External (PPPR, IntObj)
    External (PPSZ, IntObj)
    External (PSVT, IntObj)
    External (PTPC, IntObj)
    External (PWRE, IntObj)
    External (PWRS, IntObj)
    External (RBEC, MethodObj)    // 1 Arguments
    External (S1AT, IntObj)
    External (S1CT, IntObj)
    External (S1DE, IntObj)
    External (S1HT, IntObj)
    External (S1PT, IntObj)
    External (S1S3, IntObj)
    External (S2AT, IntObj)
    External (S2CT, IntObj)
    External (S2DE, IntObj)
    External (S2HT, IntObj)
    External (S2PT, IntObj)
    External (S2S3, IntObj)
    External (S3DE, IntObj)
    External (S4DE, IntObj)
    External (S5DE, IntObj)
    External (S6DE, IntObj)
    External (S6P2, IntObj)
    External (SADE, IntObj)
    External (SSP1, IntObj)
    External (SSP2, IntObj)
    External (SSP3, IntObj)
    External (SSP4, IntObj)
    External (SSP5, IntObj)
    External (STDV, IntObj)
    External (TCNT, IntObj)
    External (TSOD, IntObj)

    Scope (\_SB)
    {
        Device (IETM)
        {
            Method (GCID, 0, Serialized)
            {
                Switch ((\_SB.CPID & 0x0FFF0FF0))
                {
                    Case (0x000B0670)
                    {
                        Return (Zero)
                    }
                    Case (0x000B06A0)
                    {
                        Return (Zero)
                    }
                    Case (0x000B06F0)
                    {
                        Return (Zero)
                    }
                    Default
                    {
                        Return (One)
                    }

                }
            }

            Method (GHID, 1, Serialized)
            {
                Local0 = \_SB.IETM.GCID ()
                If ((Zero == Local0))
                {
                    If ((Arg0 == "IETM"))
                    {
                        Return ("INTC10A0")
                    }

                    If ((Arg0 == "SEN1"))
                    {
                        Return ("INTC10A1")
                    }

                    If ((Arg0 == "SEN2"))
                    {
                        Return ("INTC10A1")
                    }

                    If ((Arg0 == "SEN3"))
                    {
                        Return ("INTC10A1")
                    }

                    If ((Arg0 == "SEN4"))
                    {
                        Return ("INTC10A1")
                    }

                    If ((Arg0 == "SEN5"))
                    {
                        Return ("INTC10A1")
                    }

                    If ((Arg0 == "TPCH"))
                    {
                        Return ("INTC10A3")
                    }

                    If ((Arg0 == "TFN1"))
                    {
                        Return ("INTC10A2")
                    }

                    If ((Arg0 == "TFN2"))
                    {
                        Return ("INTC10A2")
                    }

                    If ((Arg0 == "TFN3"))
                    {
                        Return ("INTC10A2")
                    }

                    If ((Arg0 == "TPWR"))
                    {
                        Return ("INTC10A4")
                    }

                    If ((Arg0 == "BAT1"))
                    {
                        Return ("INTC10A5")
                    }

                    If ((Arg0 == "CHRG"))
                    {
                        Return ("INTC10A1")
                    }

                    Return ("XXXX9999")
                }
                Else
                {
                    If ((Arg0 == "IETM"))
                    {
                        Return ("INTC1041")
                    }

                    If ((Arg0 == "SEN1"))
                    {
                        Return ("INTC1046")
                    }

                    If ((Arg0 == "SEN2"))
                    {
                        Return ("INTC1046")
                    }

                    If ((Arg0 == "SEN3"))
                    {
                        Return ("INTC1046")
                    }

                    If ((Arg0 == "SEN4"))
                    {
                        Return ("INTC1046")
                    }

                    If ((Arg0 == "SEN5"))
                    {
                        Return ("INTC1046")
                    }

                    If ((Arg0 == "TPCH"))
                    {
                        Return ("INTC1049")
                    }

                    If ((Arg0 == "TFN1"))
                    {
                        Return ("INTC1048")
                    }

                    If ((Arg0 == "TFN2"))
                    {
                        Return ("INTC1048")
                    }

                    If ((Arg0 == "TFN3"))
                    {
                        Return ("INTC1048")
                    }

                    If ((Arg0 == "TPWR"))
                    {
                        Return ("INTC1060")
                    }

                    If ((Arg0 == "BAT1"))
                    {
                        Return ("INTC1061")
                    }

                    If ((Arg0 == "CHRG"))
                    {
                        Return ("INTC1046")
                    }

                    Return ("XXXX9999")
                }
            }

            Name (_UID, "IETM")  // _UID: Unique ID
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                Return (\_SB.IETM.GHID (_UID))
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (CondRefOf (HIWC))
                {
                    If (HIWC (Arg0))
                    {
                        If (CondRefOf (HIDW))
                        {
                            Return (HIDW (Arg0, Arg1, Arg2, Arg3))
                        }
                    }
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((\DPTF == One) && (\IN34 == One)))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (PTRP, Zero)
            Name (PSEM, Zero)
            Name (ATRP, Zero)
            Name (ASEM, Zero)
            Name (YTRP, Zero)
            Name (YSEM, Zero)
            Name (DPTE, Zero)
            Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
            {
                CreateDWordField (Arg3, Zero, STS1)
                CreateDWordField (Arg3, 0x04, CAP1)
                If ((CAP1 & One))
                {
                    If ((DPTE == Zero))
                    {
                        DPTE = One
                        \_SB.PC00.LPCB.EC.HKEY.DYTC (0x01FF)
                        \_SB.PC00.LPCB.EC.HKEY.DYTC (0x800F0001)
                        If (\H8DR)
                        {
                            Local0 = \_SB.PC00.LPCB.EC.TSL1 /* External reference */
                        }
                        Else
                        {
                            Local0 = (\RBEC (0x89) & 0x7F)
                        }

                        If ((Local0 & 0x77))
                        {
                            \_SB.PC00.LPCB.EC.HKEY.DYTC (0x001F4001)
                        }
                        Else
                        {
                            \_SB.PC00.LPCB.EC.HKEY.DYTC (0x000F4001)
                        }

                        If (\_SB.PC00.LPCB.EC.HKEY.DHKC){}
                    }
                }
                ElseIf ((DPTE == One))
                {
                    DPTE = Zero
                    \_SB.PC00.LPCB.EC.HKEY.DYTC (0x01FF)
                    If (\_SB.PC00.LPCB.EC.HKEY.DHKC){}
                }

                If ((Arg1 != One))
                {
                    STS1 &= 0xFFFFFF00
                    STS1 |= 0x0A
                    Return (Arg3)
                }

                If ((Arg2 != 0x02))
                {
                    STS1 &= 0xFFFFFF00
                    STS1 |= 0x02
                    Return (Arg3)
                }

                If (CondRefOf (\_SB.APSV))
                {
                    If ((PSEM == Zero))
                    {
                        PSEM = One
                        PTRP = \_SB.APSV /* External reference */
                    }
                }

                If (CondRefOf (\_SB.AAC0))
                {
                    If ((ASEM == Zero))
                    {
                        ASEM = One
                        ATRP = \_SB.AAC0 /* External reference */
                    }
                }

                If (CondRefOf (\_SB.ACRT))
                {
                    If ((YSEM == Zero))
                    {
                        YSEM = One
                        YTRP = \_SB.ACRT /* External reference */
                    }
                }

                If ((Arg0 == ToUUID ("b23ba85d-c8b7-3542-88de-8de2ffcfd698") /* Unknown UUID */))
                {
                    If (~(STS1 & One))
                    {
                        If ((CAP1 & One))
                        {
                            If ((CAP1 & 0x02))
                            {
                                \_SB.AAC0 = 0x6E
                            }
                            Else
                            {
                                \_SB.AAC0 = ATRP /* \_SB_.IETM.ATRP */
                            }

                            If ((CAP1 & 0x04))
                            {
                                \_SB.APSV = 0x6E
                            }
                            Else
                            {
                                \_SB.APSV = PTRP /* \_SB_.IETM.PTRP */
                            }

                            If ((CAP1 & 0x08))
                            {
                                \_SB.ACRT = 0xD2
                            }
                            Else
                            {
                                \_SB.ACRT = YTRP /* \_SB_.IETM.YTRP */
                            }

                            Notify (\_TZ.THM0, 0x81) // Information Change
                        }
                        Else
                        {
                            \_SB.ACRT = YTRP /* \_SB_.IETM.YTRP */
                            \_SB.APSV = PTRP /* \_SB_.IETM.PTRP */
                            \_SB.AAC0 = ATRP /* \_SB_.IETM.ATRP */
                        }

                        Notify (\_TZ.THM0, 0x81) // Information Change
                    }

                    Return (Arg3)
                }

                Return (Arg3)
            }

            Method (DCFG, 0, NotSerialized)
            {
                Return (\DCFE) /* External reference */
            }

            Name (ODVX, Package (0x15)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Method (ODVP, 0, Serialized)
            {
                ODVX [Zero] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [Zero])
                ODVX [One] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [One])
                ODVX [0x02] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [0x02])
                ODVX [0x03] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [0x03])
                ODVX [0x04] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [0x04])
                ODVX [0x05] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [0x05])
                ODVX [0x06] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [0x06])
                ODVX [0x07] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [0x07])
                ODVX [0x08] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [0x08])
                ODVX [0x09] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [0x09])
                ODVX [0x0A] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [0x0A])
                ODVX [0x0B] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [0x0B])
                ODVX [0x0C] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [0x0C])
                ODVX [0x0D] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [0x0D])
                ODVX [0x0E] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [0x0E])
                ODVX [0x0F] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [0x0F])
                ODVX [0x10] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [0x10])
                ODVX [0x11] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [0x11])
                ODVX [0x12] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [0x12])
                ODVX [0x13] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [0x13])
                ODVX [0x14] = DerefOf (\_SB.PC00.LPCB.EC.HKEY.OEMV [0x14])
                Return (ODVX) /* \_SB_.IETM.ODVX */
            }
        }
    }

    Scope (\_SB.PC00.LPCB.EC)
    {
        Device (SEN1)
        {
            Name (_UID, "SEN1")  // _UID: Unique ID
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                Return (\_SB.IETM.GHID (_UID))
            }

            Name (_STR, Unicode ("Sensor 1 FAN Remote S8"))  // _STR: Description String
            Name (PTYP, 0x03)
            Name (CTYP, Zero)
            Name (PFLG, Zero)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((\S1DE == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                Local0 = \GTST (0x08)
                Local1 = \_TZ.TC2K (Local0)
                \_SB.FAN0.SRPM (Local0)
                \_SB.FAN0.CRNF ()
                Return (Local1)
            }

            Name (PATC, Zero)
            Name (GTSH, 0x14)
            Name (LSTM, Zero)
            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                LSTM = Arg0
                Notify (\_SB.PC00.LPCB.EC.SEN1, 0x91) // Device-Specific
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Name (S1AC, 0x3C)
            Name (S1A1, 0x32)
            Name (S1A2, 0x28)
            Name (S1PV, 0x41)
            Name (S1CC, 0x50)
            Name (S1C3, 0x46)
            Name (S1HP, 0x4B)
            Name (SSP1, 0x32)
            Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
            {
                Return (SSP1) /* \_SB_.PC00.LPCB.EC__.SEN1.SSP1 */
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.IETM.CTOK (S1PV))
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.IETM.CTOK (S1CC))
            }

            Method (_CR3, 0, Serialized)  // _CR3: Warm/Standby Temperature
            {
                Return (\_SB.IETM.CTOK (S1C3))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.IETM.CTOK (S1HP))
            }
        }
    }

    Scope (\_SB.PC00.LPCB.EC)
    {
        Device (SEN2)
        {
            Name (_UID, "SEN2")  // _UID: Unique ID
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                Return (\_SB.IETM.GHID (_UID))
            }

            Name (_STR, Unicode ("Sensor 2 Charger Remote SA"))  // _STR: Description String
            Name (PTYP, 0x03)
            Name (CTYP, Zero)
            Name (PFLG, Zero)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((\S2DE == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                Local0 = \GTST (0x0A)
                Local1 = \_TZ.TC2K (Local0)
                Return (Local1)
            }

            Name (PATC, Zero)
            Name (GTSH, 0x14)
            Name (LSTM, Zero)
            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                LSTM = Arg0
                Notify (\_SB.PC00.LPCB.EC.SEN2, 0x91) // Device-Specific
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Name (S2AC, 0x3C)
            Name (S2A1, 0x32)
            Name (S2A2, 0x28)
            Name (S2PV, 0x41)
            Name (S2CC, 0x50)
            Name (S2C3, 0x46)
            Name (S2HP, 0x4B)
            Name (SSP2, 0x32)
            Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
            {
                Return (SSP2) /* \_SB_.PC00.LPCB.EC__.SEN2.SSP2 */
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.IETM.CTOK (S2PV))
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.IETM.CTOK (S2CC))
            }

            Method (_CR3, 0, Serialized)  // _CR3: Warm/Standby Temperature
            {
                Return (\_SB.IETM.CTOK (S2C3))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.IETM.CTOK (S2HP))
            }
        }
    }

    Scope (\_SB.PC00.LPCB.EC)
    {
        Device (SEN3)
        {
            Name (_UID, "SEN3")  // _UID: Unique ID
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                Return (\_SB.IETM.GHID (_UID))
            }

            Name (_STR, Unicode ("Sensor 3 CPU DCDC"))  // _STR: Description String
            Name (PTYP, 0x03)
            Name (CTYP, Zero)
            Name (PFLG, Zero)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((\S3DE == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                Local0 = \GTST (0x02)
                Local1 = \_TZ.TC2K (Local0)
                Return (Local1)
            }

            Name (PATC, Zero)
            Name (GTSH, 0x14)
            Name (LSTM, Zero)
            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                LSTM = Arg0
                Notify (\_SB.PC00.LPCB.EC.SEN3, 0x91) // Device-Specific
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Name (S3AC, 0x3C)
            Name (S3A1, 0x32)
            Name (S3A2, 0x28)
            Name (S3PV, 0x41)
            Name (S3CC, 0x50)
            Name (S3C3, 0x46)
            Name (S3HP, 0x4B)
            Name (SSP3, 0x32)
            Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
            {
                Return (SSP3) /* \_SB_.PC00.LPCB.EC__.SEN3.SSP3 */
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.IETM.CTOK (S3PV))
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.IETM.CTOK (S3CC))
            }

            Method (_CR3, 0, Serialized)  // _CR3: Warm/Standby Temperature
            {
                Return (\_SB.IETM.CTOK (S3C3))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.IETM.CTOK (S3HP))
            }
        }
    }

    Scope (\_SB.PC00.LPCB.EC)
    {
        Device (SEN5)
        {
            Name (_UID, "SEN5")  // _UID: Unique ID
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                Return (\_SB.IETM.GHID (_UID))
            }

            Name (_STR, Unicode ("Sensor 5 MEMORY Remote SC"))  // _STR: Description String
            Name (PTYP, 0x03)
            Name (CTYP, Zero)
            Name (PFLG, Zero)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((\S5DE == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                Local0 = \GTST (0x0C)
                Local1 = \_TZ.TC2K (Local0)
                Return (Local1)
            }

            Name (PATC, Zero)
            Name (GTSH, 0x14)
            Name (LSTM, Zero)
            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                LSTM = Arg0
                Notify (\_SB.PC00.LPCB.EC.SEN5, 0x91) // Device-Specific
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Name (S5AC, 0x3C)
            Name (S5A1, 0x32)
            Name (S5A2, 0x28)
            Name (S5PV, 0x41)
            Name (S5CC, 0x50)
            Name (S5C3, 0x46)
            Name (S5HP, 0x4B)
            Name (SSP5, 0x32)
            Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
            {
                Return (SSP5) /* \_SB_.PC00.LPCB.EC__.SEN5.SSP5 */
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.IETM.CTOK (S5PV))
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.IETM.CTOK (S5CC))
            }

            Method (_CR3, 0, Serialized)  // _CR3: Warm/Standby Temperature
            {
                Return (\_SB.IETM.CTOK (S5C3))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.IETM.CTOK (S5HP))
            }
        }
    }

    Scope (\_SB.IETM)
    {
        Name (TRT0, Package (0x01)
        {
            Package (0x08)
            {
                \_SB.PC00.TCPU, , 
                \_SB.PC00.TCPU, , 
                0x12, 
                0x32, 
                Zero, 
                Zero, 
                Zero, 
                Zero
            }
        })
        Method (_TRT, 0, NotSerialized)  // _TRT: Thermal Relationship Table
        {
            Return (TRT0) /* \_SB_.IETM.TRT0 */
        }
    }

    Scope (\_SB.IETM)
    {
        Name (PTTL, 0x14)
        Name (PSVT, Package (0x06)
        {
            0x02, 
            Package (0x0C)
            {
                \_SB.PC00.TCPU, , 
                \_SB.PC00.TCPU, , 
                0x02, 
                0x05, 
                0x0E94, 
                Zero, 
                0x00010000, 
                "MIN", 
                0x7D, 
                0x0A, 
                0x0190, 
                Zero
            }, 

            Package (0x0C)
            {
                \_SB.PC00.TCPU, , 
                \_SB.PC00.LPCB.EC.SEN1, , 
                One, 
                0x0A, 
                0x0E8A, 
                0x0E, 
                0x00010000, 
                "MIN", 
                0x01F4, 
                0x0A, 
                0x14, 
                Zero
            }, 

            Package (0x0C)
            {
                \_SB.PC00.TCPU, , 
                \_SB.PC00.LPCB.EC.SEN2, , 
                One, 
                0x0A, 
                0x0E8A, 
                0x0E, 
                0x00010000, 
                "MIN", 
                0x01F4, 
                0x0A, 
                0x14, 
                Zero
            }, 

            Package (0x0C)
            {
                \_SB.PC00.TCPU, , 
                \_SB.PC00.LPCB.EC.SEN3, , 
                One, 
                0x0A, 
                0x0E8A, 
                0x0E, 
                0x00010000, 
                "MIN", 
                0x01F4, 
                0x0A, 
                0x14, 
                Zero
            }, 

            Package (0x0C)
            {
                \_SB.PC00.TCPU, , 
                \_SB.PC00.LPCB.EC.SEN5, , 
                One, 
                0x0A, 
                0x0E8A, 
                0x0E, 
                0x00010000, 
                "MIN", 
                0x01F4, 
                0x0A, 
                0x14, 
                Zero
            }
        })
    }

    Scope (\_SB.IETM)
    {
        Method (KTOC, 1, Serialized)
        {
            If ((Arg0 > 0x0AAC))
            {
                Return (((Arg0 - 0x0AAC) / 0x0A))
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (CTOK, 1, Serialized)
        {
            Return (((Arg0 * 0x0A) + 0x0AAC))
        }

        Method (C10K, 1, Serialized)
        {
            Name (TMP1, Buffer (0x10)
            {
                 0x00                                             // .
            })
            CreateByteField (TMP1, Zero, TMPL)
            CreateByteField (TMP1, One, TMPH)
            Local0 = (Arg0 + 0x0AAC)
            TMPL = (Local0 & 0xFF)
            TMPH = ((Local0 & 0xFF00) >> 0x08)
            ToInteger (TMP1, Local1)
            Return (Local1)
        }

        Method (K10C, 1, Serialized)
        {
            If ((Arg0 > 0x0AAC))
            {
                Return ((Arg0 - 0x0AAC))
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (\_SB.PC00.TCPU)
    {
        Name (PFLG, Zero)
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If ((\SADE == One))
            {
                Return (0x0F)
            }
            Else
            {
                Return (Zero)
            }
        }

        OperationRegion (CPWR, SystemMemory, ((\_SB.PC00.MC.MHBR << 0x0F) + 0x5000), 0x1000)
        Field (CPWR, ByteAcc, NoLock, Preserve)
        {
            Offset (0x930), 
            PTDP,   15, 
            Offset (0x932), 
            PMIN,   15, 
            Offset (0x934), 
            PMAX,   15, 
            Offset (0x936), 
            TMAX,   7, 
            Offset (0x938), 
            PWRU,   4, 
            Offset (0x939), 
            EGYU,   5, 
            Offset (0x93A), 
            TIMU,   4, 
            Offset (0x958), 
            Offset (0x95C), 
            LPMS,   1, 
            CTNL,   2, 
            Offset (0x978), 
            PCTP,   8, 
            Offset (0x998), 
            RP0C,   8, 
            RP1C,   8, 
            RPNC,   8, 
            Offset (0xF3C), 
            TRAT,   8, 
            Offset (0xF40), 
            PTD1,   15, 
            Offset (0xF42), 
            TRA1,   8, 
            Offset (0xF44), 
            PMX1,   15, 
            Offset (0xF46), 
            PMN1,   15, 
            Offset (0xF48), 
            PTD2,   15, 
            Offset (0xF4A), 
            TRA2,   8, 
            Offset (0xF4C), 
            PMX2,   15, 
            Offset (0xF4E), 
            PMN2,   15, 
            Offset (0xF50), 
            CTCL,   2, 
                ,   29, 
            CLCK,   1, 
            MNTR,   8
        }

        Name (XPCC, Zero)
        Method (PPCC, 0, Serialized)
        {
            If (((XPCC == Zero) && CondRefOf (\_SB.CBMI)))
            {
                Switch (ToInteger (\_SB.CBMI))
                {
                    Case (Zero)
                    {
                        If (((\_SB.CLVL >= One) && (\_SB.CLVL <= 0x03)))
                        {
                            CPL0 ()
                            XPCC = One
                        }
                    }
                    Case (One)
                    {
                        If (((\_SB.CLVL == 0x02) || (\_SB.CLVL == 0x03)))
                        {
                            CPL1 ()
                            XPCC = One
                        }
                    }
                    Case (0x02)
                    {
                        If ((\_SB.CLVL == 0x03))
                        {
                            CPL2 ()
                            XPCC = One
                        }
                    }

                }
            }

            Return (NPCC) /* \_SB_.PC00.TCPU.NPCC */
        }

        Name (NPCC, Package (0x03)
        {
            0x02, 
            Package (0x06)
            {
                Zero, 
                0x88B8, 
                0xAFC8, 
                0x6D60, 
                0x7D00, 
                0x03E8
            }, 

            Package (0x06)
            {
                One, 
                0xDBBA, 
                0xDBBA, 
                Zero, 
                Zero, 
                0x03E8
            }
        })
        Method (CPNU, 2, Serialized)
        {
            Name (CNVT, Zero)
            Name (PPUU, Zero)
            Name (RMDR, Zero)
            If ((PWRU == Zero))
            {
                PPUU = One
            }
            Else
            {
                PPUU = (PWRU-- << 0x02)
            }

            Divide (Arg0, PPUU, RMDR, CNVT) /* \_SB_.PC00.TCPU.CPNU.CNVT */
            If ((Arg1 == Zero))
            {
                Return (CNVT) /* \_SB_.PC00.TCPU.CPNU.CNVT */
            }
            Else
            {
                CNVT *= 0x03E8
                RMDR *= 0x03E8
                RMDR /= PPUU
                CNVT += RMDR /* \_SB_.PC00.TCPU.CPNU.RMDR */
                Return (CNVT) /* \_SB_.PC00.TCPU.CPNU.CNVT */
            }
        }

        Method (CPL0, 0, NotSerialized)
        {
            \_SB.PC00.TCPU.NPCC [Zero] = 0x02
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [Zero] = Zero
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [One] = 0x7D
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x02] = CPNU (\_SB.PL10, One)
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x03] = (\_SB.PLW0 * 0x03E8)
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x04] = ((\_SB.PLW0 * 0x03E8
                ) + 0x0FA0)
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x05] = PPSZ /* External reference */
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [Zero] = One
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [One] = CPNU (\_SB.PL20, One)
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x02] = CPNU (\_SB.PL20, One)
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x03] = Zero
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x04] = Zero
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x05] = PPSZ /* External reference */
        }

        Method (CPL1, 0, NotSerialized)
        {
            \_SB.PC00.TCPU.NPCC [Zero] = 0x02
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [Zero] = Zero
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [One] = 0x7D
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x02] = CPNU (\_SB.PL11, One)
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x03] = (\_SB.PLW1 * 0x03E8)
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x04] = ((\_SB.PLW1 * 0x03E8
                ) + 0x0FA0)
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x05] = PPSZ /* External reference */
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [Zero] = One
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [One] = CPNU (\_SB.PL21, One)
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x02] = CPNU (\_SB.PL21, One)
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x03] = Zero
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x04] = Zero
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x05] = PPSZ /* External reference */
        }

        Method (CPL2, 0, NotSerialized)
        {
            \_SB.PC00.TCPU.NPCC [Zero] = 0x02
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [Zero] = Zero
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [One] = 0x7D
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x02] = CPNU (\_SB.PL12, One)
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x03] = (\_SB.PLW2 * 0x03E8)
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x04] = ((\_SB.PLW2 * 0x03E8
                ) + 0x0FA0)
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x05] = PPSZ /* External reference */
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [Zero] = One
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [One] = CPNU (\_SB.PL22, One)
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x02] = CPNU (\_SB.PL22, One)
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x03] = Zero
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x04] = Zero
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x05] = PPSZ /* External reference */
        }

        Name (LSTM, Zero)
        Name (_PPC, Zero)  // _PPC: Performance Present Capabilities
        Method (SPPC, 1, Serialized)
        {
            If (CondRefOf (\_SB.CPPC))
            {
                \_SB.CPPC = Arg0
            }

            If ((ToInteger (\TCNT) > Zero))
            {
                Notify (\_SB.PR00, 0x80) // Status Change
            }

            If ((ToInteger (\TCNT) > One))
            {
                Notify (\_SB.PR01, 0x80) // Status Change
            }

            If ((ToInteger (\TCNT) > 0x02))
            {
                Notify (\_SB.PR02, 0x80) // Status Change
            }

            If ((ToInteger (\TCNT) > 0x03))
            {
                Notify (\_SB.PR03, 0x80) // Status Change
            }

            If ((ToInteger (\TCNT) > 0x04))
            {
                Notify (\_SB.PR04, 0x80) // Status Change
            }

            If ((ToInteger (\TCNT) > 0x05))
            {
                Notify (\_SB.PR05, 0x80) // Status Change
            }

            If ((ToInteger (\TCNT) > 0x06))
            {
                Notify (\_SB.PR06, 0x80) // Status Change
            }

            If ((ToInteger (\TCNT) > 0x07))
            {
                Notify (\_SB.PR07, 0x80) // Status Change
            }

            If ((ToInteger (\TCNT) > 0x08))
            {
                Notify (\_SB.PR08, 0x80) // Status Change
            }

            If ((ToInteger (\TCNT) > 0x09))
            {
                Notify (\_SB.PR09, 0x80) // Status Change
            }

            If ((ToInteger (\TCNT) > 0x0A))
            {
                Notify (\_SB.PR10, 0x80) // Status Change
            }

            If ((ToInteger (\TCNT) > 0x0B))
            {
                Notify (\_SB.PR11, 0x80) // Status Change
            }

            If ((ToInteger (\TCNT) > 0x0C))
            {
                Notify (\_SB.PR12, 0x80) // Status Change
            }

            If ((ToInteger (\TCNT) > 0x0D))
            {
                Notify (\_SB.PR13, 0x80) // Status Change
            }

            If ((ToInteger (\TCNT) > 0x0E))
            {
                Notify (\_SB.PR14, 0x80) // Status Change
            }

            If ((ToInteger (\TCNT) > 0x0F))
            {
                Notify (\_SB.PR15, 0x80) // Status Change
            }

            If ((ToInteger (\TCNT) > 0x10))
            {
                Notify (\_SB.PR16, 0x80) // Status Change
            }

            If ((ToInteger (\TCNT) > 0x11))
            {
                Notify (\_SB.PR17, 0x80) // Status Change
            }

            If ((ToInteger (\TCNT) > 0x12))
            {
                Notify (\_SB.PR18, 0x80) // Status Change
            }

            If ((ToInteger (\TCNT) > 0x13))
            {
                Notify (\_SB.PR19, 0x80) // Status Change
            }

            If ((ToInteger (\TCNT) > 0x14))
            {
                Notify (\_SB.PR20, 0x80) // Status Change
            }

            If ((ToInteger (\TCNT) > 0x15))
            {
                Notify (\_SB.PR21, 0x80) // Status Change
            }

            If ((ToInteger (\TCNT) > 0x16))
            {
                Notify (\_SB.PR22, 0x80) // Status Change
            }

            If ((ToInteger (\TCNT) > 0x17))
            {
                Notify (\_SB.PR23, 0x80) // Status Change
            }

            If ((ToInteger (\TCNT) > 0x18))
            {
                Notify (\_SB.PR24, 0x80) // Status Change
            }

            If ((ToInteger (\TCNT) > 0x19))
            {
                Notify (\_SB.PR25, 0x80) // Status Change
            }

            If ((ToInteger (\TCNT) > 0x1A))
            {
                Notify (\_SB.PR26, 0x80) // Status Change
            }

            If ((ToInteger (\TCNT) > 0x1B))
            {
                Notify (\_SB.PR27, 0x80) // Status Change
            }

            If ((ToInteger (\TCNT) > 0x1C))
            {
                Notify (\_SB.PR28, 0x80) // Status Change
            }

            If ((ToInteger (\TCNT) > 0x1D))
            {
                Notify (\_SB.PR29, 0x80) // Status Change
            }

            If ((ToInteger (\TCNT) > 0x1E))
            {
                Notify (\_SB.PR30, 0x80) // Status Change
            }

            If ((ToInteger (\TCNT) > 0x1F))
            {
                Notify (\_SB.PR31, 0x80) // Status Change
            }
        }

        Method (SPUR, 1, NotSerialized)
        {
            If ((Arg0 <= \TCNT))
            {
                If ((\_SB.PAGD._STA () == 0x0F))
                {
                    \_SB.PAGD._PUR [One] = Arg0
                    Notify (\_SB.PAGD, 0x80) // Status Change
                }
            }
        }

        Method (PCCC, 0, Serialized)
        {
            PCCX [Zero] = One
            Switch (ToInteger (CPNU (PTDP, Zero)))
            {
                Case (0x39)
                {
                    DerefOf (PCCX [One]) [Zero] = 0xA7F8
                    DerefOf (PCCX [One]) [One] = 0x00017318
                }
                Case (0x2F)
                {
                    DerefOf (PCCX [One]) [Zero] = 0x9858
                    DerefOf (PCCX [One]) [One] = 0x00014C08
                }
                Case (0x25)
                {
                    DerefOf (PCCX [One]) [Zero] = 0x7148
                    DerefOf (PCCX [One]) [One] = 0xD6D8
                }
                Case (0x19)
                {
                    DerefOf (PCCX [One]) [Zero] = 0x3E80
                    DerefOf (PCCX [One]) [One] = 0x7D00
                }
                Case (0x0F)
                {
                    DerefOf (PCCX [One]) [Zero] = 0x36B0
                    DerefOf (PCCX [One]) [One] = 0x7D00
                }
                Case (0x0B)
                {
                    DerefOf (PCCX [One]) [Zero] = 0x36B0
                    DerefOf (PCCX [One]) [One] = 0x61A8
                }
                Default
                {
                    DerefOf (PCCX [One]) [Zero] = 0xFF
                    DerefOf (PCCX [One]) [One] = 0xFF
                }

            }

            Return (PCCX) /* \_SB_.PC00.TCPU.PCCX */
        }

        Name (PCCX, Package (0x02)
        {
            0x80000000, 
            Package (0x02)
            {
                0x80000000, 
                0x80000000
            }
        })
        Name (KEFF, Package (0x1E)
        {
            Package (0x02)
            {
                0x01BC, 
                Zero
            }, 

            Package (0x02)
            {
                0x01CF, 
                0x27
            }, 

            Package (0x02)
            {
                0x01E1, 
                0x4B
            }, 

            Package (0x02)
            {
                0x01F3, 
                0x6C
            }, 

            Package (0x02)
            {
                0x0206, 
                0x8B
            }, 

            Package (0x02)
            {
                0x0218, 
                0xA8
            }, 

            Package (0x02)
            {
                0x022A, 
                0xC3
            }, 

            Package (0x02)
            {
                0x023D, 
                0xDD
            }, 

            Package (0x02)
            {
                0x024F, 
                0xF4
            }, 

            Package (0x02)
            {
                0x0261, 
                0x010B
            }, 

            Package (0x02)
            {
                0x0274, 
                0x011F
            }, 

            Package (0x02)
            {
                0x032C, 
                0x01BD
            }, 

            Package (0x02)
            {
                0x03D7, 
                0x0227
            }, 

            Package (0x02)
            {
                0x048B, 
                0x026D
            }, 

            Package (0x02)
            {
                0x053E, 
                0x02A1
            }, 

            Package (0x02)
            {
                0x05F7, 
                0x02C6
            }, 

            Package (0x02)
            {
                0x06A8, 
                0x02E6
            }, 

            Package (0x02)
            {
                0x075D, 
                0x02FF
            }, 

            Package (0x02)
            {
                0x0818, 
                0x0311
            }, 

            Package (0x02)
            {
                0x08CF, 
                0x0322
            }, 

            Package (0x02)
            {
                0x179C, 
                0x0381
            }, 

            Package (0x02)
            {
                0x2DDC, 
                0x039C
            }, 

            Package (0x02)
            {
                0x44A8, 
                0x039E
            }, 

            Package (0x02)
            {
                0x5C35, 
                0x0397
            }, 

            Package (0x02)
            {
                0x747D, 
                0x038D
            }, 

            Package (0x02)
            {
                0x8D7F, 
                0x0382
            }, 

            Package (0x02)
            {
                0xA768, 
                0x0376
            }, 

            Package (0x02)
            {
                0xC23B, 
                0x0369
            }, 

            Package (0x02)
            {
                0xDE26, 
                0x035A
            }, 

            Package (0x02)
            {
                0xFB7C, 
                0x034A
            }
        })
        Name (CEUP, Package (0x06)
        {
            0x80000000, 
            0x80000000, 
            0x80000000, 
            0x80000000, 
            0x80000000, 
            0x80000000
        })
        Method (_TMP, 0, Serialized)  // _TMP: Temperature
        {
            Return (\_TZ.THM0._TMP ())
        }

        Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
        {
            LSTM = Arg0
            Notify (\_SB.PC00.TCPU, 0x91) // Device-Specific
        }

        Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
        {
            Return (0x0ADE)
        }

        Name (PTYP, Zero)
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            If (CondRefOf (\_SB.PR00._PSS))
            {
                Return (\_SB.PR00._PSS ())
            }
            Else
            {
                Return (Package (0x02)
                {
                    Package (0x06)
                    {
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x06)
                    {
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }
                })
            }
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            If (CondRefOf (\_SB.PR00._TSS))
            {
                Return (\_SB.PR00._TSS ())
            }
            Else
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        One, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }
                })
            }
        }

        Method (_TPC, 0, NotSerialized)  // _TPC: Throttling Present Capabilities
        {
            If (CondRefOf (\_SB.PR00._TPC))
            {
                Return (\_SB.PR00._TPC) /* External reference */
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            If ((CondRefOf (\PF00) && (\PF00 != 0x80000000)))
            {
                If ((\PF00 & 0x04))
                {
                    Return (Package (0x02)
                    {
                        Buffer (0x11)
                        {
                            /* 0000 */  0x82, 0x0C, 0x00, 0x7F, 0x00, 0x00, 0x00, 0x00,  // ........
                            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x79,  // .......y
                            /* 0010 */  0x00                                             // .
                        }, 

                        Buffer (0x11)
                        {
                            /* 0000 */  0x82, 0x0C, 0x00, 0x7F, 0x00, 0x00, 0x00, 0x00,  // ........
                            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x79,  // .......y
                            /* 0010 */  0x00                                             // .
                        }
                    })
                }
                Else
                {
                    Return (Package (0x02)
                    {
                        Buffer (0x11)
                        {
                            /* 0000 */  0x82, 0x0C, 0x00, 0x01, 0x05, 0x00, 0x00, 0x10,  // ........
                            /* 0008 */  0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x79,  // .......y
                            /* 0010 */  0x00                                             // .
                        }, 

                        Buffer (0x11)
                        {
                            /* 0000 */  0x82, 0x0C, 0x00, 0x01, 0x05, 0x00, 0x00, 0x10,  // ........
                            /* 0008 */  0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x79,  // .......y
                            /* 0010 */  0x00                                             // .
                        }
                    })
                }
            }
            Else
            {
                Return (Package (0x02)
                {
                    Buffer (0x11)
                    {
                        /* 0000 */  0x82, 0x0C, 0x00, 0x7F, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x79,  // .......y
                        /* 0010 */  0x00                                             // .
                    }, 

                    Buffer (0x11)
                    {
                        /* 0000 */  0x82, 0x0C, 0x00, 0x7F, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x79,  // .......y
                        /* 0010 */  0x00                                             // .
                    }
                })
            }
        }

        Method (_TSD, 0, NotSerialized)  // _TSD: Throttling State Dependencies
        {
            If (CondRefOf (\_SB.PR00._TSD))
            {
                Return (\_SB.PR00._TSD ())
            }
            Else
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFC, 
                        Zero
                    }
                })
            }
        }

        Method (_TDL, 0, NotSerialized)  // _TDL: T-State Depth Limit
        {
            If ((CondRefOf (\_SB.PR00._TSS) && CondRefOf (\_SB.CFGD)))
            {
                If ((\_SB.CFGD & 0x2000))
                {
                    Return ((SizeOf (\_SB.PR00.TSMF) - One))
                }
                Else
                {
                    Return ((SizeOf (\_SB.PR00.TSMC) - One))
                }
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (_PDL, 0, NotSerialized)  // _PDL: P-state Depth Limit
        {
            If (CondRefOf (\_SB.PR00._PSS))
            {
                If ((\_SB.OSCP & 0x0400))
                {
                    Return ((SizeOf (\_SB.PR00.TPSS) - One))
                }
                Else
                {
                    Return ((SizeOf (\_SB.PR00.LPSS) - One))
                }
            }
            Else
            {
                Return (Zero)
            }
        }

        Name (TJMX, 0x6E)
        Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
        {
            Return (Zero)
        }

        Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
        {
            Return (\_SB.IETM.CTOK (TJMX))
        }

        Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
        {
            Return (\_SB.IETM.CTOK (TJMX))
        }

        Method (_CR3, 0, Serialized)  // _CR3: Warm/Standby Temperature
        {
            Return (\_SB.IETM.CTOK (TJMX))
        }

        Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
        {
            Return (\_SB.IETM.CTOK (TJMX))
        }
    }

    Scope (\_SB.IETM)
    {
        Name (CTSP, Package (0x01)
        {
            ToUUID ("e145970a-e4c1-4d73-900e-c9c5a69dd067") /* Unknown UUID */
        })
    }

    Scope (\_SB.PC00.TCPU)
    {
        Method (TDPL, 0, Serialized)
        {
            Name (AAAA, Zero)
            Name (BBBB, Zero)
            Name (CCCC, Zero)
            Local0 = CTNL /* \_SB_.PC00.TCPU.CTNL */
            If (((Local0 == One) || (Local0 == 0x02)))
            {
                Local0 = \_SB.CLVL /* External reference */
            }
            Else
            {
                Return (Package (0x01)
                {
                    Zero
                })
            }

            If ((CLCK == One))
            {
                Local0 = One
            }

            AAAA = CPNU (\_SB.PL10, One)
            BBBB = CPNU (\_SB.PL11, One)
            CCCC = CPNU (\_SB.PL12, One)
            Name (TMP1, Package (0x01)
            {
                Package (0x05)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                }
            })
            Name (TMP2, Package (0x02)
            {
                Package (0x05)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                }, 

                Package (0x05)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                }
            })
            Name (TMP3, Package (0x03)
            {
                Package (0x05)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                }, 

                Package (0x05)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                }, 

                Package (0x05)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                }
            })
            If ((Local0 == 0x03))
            {
                If ((AAAA > BBBB))
                {
                    If ((AAAA > CCCC))
                    {
                        If ((BBBB > CCCC))
                        {
                            Local3 = Zero
                            LEV0 = Zero
                            Local4 = One
                            LEV1 = One
                            Local5 = 0x02
                            LEV2 = 0x02
                        }
                        Else
                        {
                            Local3 = Zero
                            LEV0 = Zero
                            Local5 = One
                            LEV1 = 0x02
                            Local4 = 0x02
                            LEV2 = One
                        }
                    }
                    Else
                    {
                        Local5 = Zero
                        LEV0 = 0x02
                        Local3 = One
                        LEV1 = Zero
                        Local4 = 0x02
                        LEV2 = One
                    }
                }
                ElseIf ((BBBB > CCCC))
                {
                    If ((AAAA > CCCC))
                    {
                        Local4 = Zero
                        LEV0 = One
                        Local3 = One
                        LEV1 = Zero
                        Local5 = 0x02
                        LEV2 = 0x02
                    }
                    Else
                    {
                        Local4 = Zero
                        LEV0 = One
                        Local5 = One
                        LEV1 = 0x02
                        Local3 = 0x02
                        LEV2 = Zero
                    }
                }
                Else
                {
                    Local5 = Zero
                    LEV0 = 0x02
                    Local4 = One
                    LEV1 = One
                    Local3 = 0x02
                    LEV2 = Zero
                }

                Local1 = (\_SB.TAR0 + One)
                Local2 = (Local1 * 0x64)
                DerefOf (TMP3 [Local3]) [Zero] = AAAA /* \_SB_.PC00.TCPU.TDPL.AAAA */
                DerefOf (TMP3 [Local3]) [One] = Local2
                DerefOf (TMP3 [Local3]) [0x02] = \_SB.CTC0 /* External reference */
                DerefOf (TMP3 [Local3]) [0x03] = Local1
                DerefOf (TMP3 [Local3]) [0x04] = Zero
                Local1 = (\_SB.TAR1 + One)
                Local2 = (Local1 * 0x64)
                DerefOf (TMP3 [Local4]) [Zero] = BBBB /* \_SB_.PC00.TCPU.TDPL.BBBB */
                DerefOf (TMP3 [Local4]) [One] = Local2
                DerefOf (TMP3 [Local4]) [0x02] = \_SB.CTC1 /* External reference */
                DerefOf (TMP3 [Local4]) [0x03] = Local1
                DerefOf (TMP3 [Local4]) [0x04] = Zero
                Local1 = (\_SB.TAR2 + One)
                Local2 = (Local1 * 0x64)
                DerefOf (TMP3 [Local5]) [Zero] = CCCC /* \_SB_.PC00.TCPU.TDPL.CCCC */
                DerefOf (TMP3 [Local5]) [One] = Local2
                DerefOf (TMP3 [Local5]) [0x02] = \_SB.CTC2 /* External reference */
                DerefOf (TMP3 [Local5]) [0x03] = Local1
                DerefOf (TMP3 [Local5]) [0x04] = Zero
                Return (TMP3) /* \_SB_.PC00.TCPU.TDPL.TMP3 */
            }

            If ((Local0 == 0x02))
            {
                If ((AAAA > BBBB))
                {
                    Local3 = Zero
                    Local4 = One
                    LEV0 = Zero
                    LEV1 = One
                    LEV2 = Zero
                }
                Else
                {
                    Local4 = Zero
                    Local3 = One
                    LEV0 = One
                    LEV1 = Zero
                    LEV2 = Zero
                }

                Local1 = (\_SB.TAR0 + One)
                Local2 = (Local1 * 0x64)
                DerefOf (TMP2 [Local3]) [Zero] = AAAA /* \_SB_.PC00.TCPU.TDPL.AAAA */
                DerefOf (TMP2 [Local3]) [One] = Local2
                DerefOf (TMP2 [Local3]) [0x02] = \_SB.CTC0 /* External reference */
                DerefOf (TMP2 [Local3]) [0x03] = Local1
                DerefOf (TMP2 [Local3]) [0x04] = Zero
                Local1 = (\_SB.TAR1 + One)
                Local2 = (Local1 * 0x64)
                DerefOf (TMP2 [Local4]) [Zero] = BBBB /* \_SB_.PC00.TCPU.TDPL.BBBB */
                DerefOf (TMP2 [Local4]) [One] = Local2
                DerefOf (TMP2 [Local4]) [0x02] = \_SB.CTC1 /* External reference */
                DerefOf (TMP2 [Local4]) [0x03] = Local1
                DerefOf (TMP2 [Local4]) [0x04] = Zero
                Return (TMP2) /* \_SB_.PC00.TCPU.TDPL.TMP2 */
            }

            If ((Local0 == One))
            {
                Switch (ToInteger (\_SB.CBMI))
                {
                    Case (Zero)
                    {
                        Local1 = (\_SB.TAR0 + One)
                        Local2 = (Local1 * 0x64)
                        DerefOf (TMP1 [Zero]) [Zero] = AAAA /* \_SB_.PC00.TCPU.TDPL.AAAA */
                        DerefOf (TMP1 [Zero]) [One] = Local2
                        DerefOf (TMP1 [Zero]) [0x02] = \_SB.CTC0 /* External reference */
                        DerefOf (TMP1 [Zero]) [0x03] = Local1
                        DerefOf (TMP1 [Zero]) [0x04] = Zero
                        LEV0 = Zero
                        LEV1 = Zero
                        LEV2 = Zero
                    }
                    Case (One)
                    {
                        Local1 = (\_SB.TAR1 + One)
                        Local2 = (Local1 * 0x64)
                        DerefOf (TMP1 [Zero]) [Zero] = BBBB /* \_SB_.PC00.TCPU.TDPL.BBBB */
                        DerefOf (TMP1 [Zero]) [One] = Local2
                        DerefOf (TMP1 [Zero]) [0x02] = \_SB.CTC1 /* External reference */
                        DerefOf (TMP1 [Zero]) [0x03] = Local1
                        DerefOf (TMP1 [Zero]) [0x04] = Zero
                        LEV0 = One
                        LEV1 = One
                        LEV2 = One
                    }
                    Case (0x02)
                    {
                        Local1 = (\_SB.TAR2 + One)
                        Local2 = (Local1 * 0x64)
                        DerefOf (TMP1 [Zero]) [Zero] = CCCC /* \_SB_.PC00.TCPU.TDPL.CCCC */
                        DerefOf (TMP1 [Zero]) [One] = Local2
                        DerefOf (TMP1 [Zero]) [0x02] = \_SB.CTC2 /* External reference */
                        DerefOf (TMP1 [Zero]) [0x03] = Local1
                        DerefOf (TMP1 [Zero]) [0x04] = Zero
                        LEV0 = 0x02
                        LEV1 = 0x02
                        LEV2 = 0x02
                    }

                }

                Return (TMP1) /* \_SB_.PC00.TCPU.TDPL.TMP1 */
            }

            Return (Zero)
        }

        Name (MAXT, Zero)
        Method (TDPC, 0, NotSerialized)
        {
            Return (MAXT) /* \_SB_.PC00.TCPU.MAXT */
        }

        Name (LEV0, Zero)
        Name (LEV1, Zero)
        Name (LEV2, Zero)
        Method (STDP, 1, Serialized)
        {
            If ((Arg0 >= \_SB.CLVL))
            {
                Return (Zero)
            }

            Switch (ToInteger (Arg0))
            {
                Case (Zero)
                {
                    Local0 = LEV0 /* \_SB_.PC00.TCPU.LEV0 */
                }
                Case (One)
                {
                    Local0 = LEV1 /* \_SB_.PC00.TCPU.LEV1 */
                }
                Case (0x02)
                {
                    Local0 = LEV2 /* \_SB_.PC00.TCPU.LEV2 */
                }

            }

            Switch (ToInteger (Local0))
            {
                Case (Zero)
                {
                    CPL0 ()
                }
                Case (One)
                {
                    CPL1 ()
                }
                Case (0x02)
                {
                    CPL2 ()
                }

            }

            Notify (\_SB.PC00.TCPU, 0x83) // Device-Specific Change
        }
    }

    Scope (\_SB.IETM)
    {
        Name (DP2P, Package (0x01)
        {
            ToUUID ("9e04115a-ae87-4d1c-9500-0f3e340bfe75") /* Unknown UUID */
        })
        Name (DPSP, Package (0x01)
        {
            ToUUID ("42a441d6-ae6a-462b-a84b-4a8ce79027d3") /* Unknown UUID */
        })
        Name (DASP, Package (0x01)
        {
            ToUUID ("3a95c389-e4b8-4629-a526-c52c88626bae") /* Unknown UUID */
        })
        Name (DA2P, Package (0x01)
        {
            ToUUID ("0e56fab6-bdfc-4e8c-8246-40ecfd4d74ea") /* Unknown UUID */
        })
        Name (DCSP, Package (0x01)
        {
            ToUUID ("97c68ae7-15fa-499c-b8c9-5da81d606e0a") /* Unknown UUID */
        })
        Name (RFIP, Package (0x01)
        {
            ToUUID ("c4ce1849-243a-49f3-b8d5-f97002f38e6a") /* Unknown UUID */
        })
        Name (POBP, Package (0x01)
        {
            ToUUID ("f5a35014-c209-46a4-993a-eb56de7530a1") /* Unknown UUID */
        })
        Name (DAPP, Package (0x01)
        {
            ToUUID ("63be270f-1c11-48fd-a6f7-3af253ff3e2d") /* Unknown UUID */
        })
        Name (DVSP, Package (0x01)
        {
            ToUUID ("6ed722a7-9240-48a5-b479-31eef723d7cf") /* Unknown UUID */
        })
        Name (DPID, Package (0x01)
        {
            ToUUID ("42496e14-bc1b-46e8-a798-ca915464426f") /* Unknown UUID */
        })
    }

    Scope (\_SB.IETM)
    {
        Method (GDDV, 0, Serialized)
        {
            If ((\MPID == Zero))
            {
                Return (Package (0x01)
                {
                    Buffer (0x07CD)
                    {
                        /* 0000 */  0xE5, 0x1F, 0x94, 0x00, 0x00, 0x00, 0x00, 0x02,  // ........
                        /* 0008 */  0x00, 0x00, 0x00, 0x40, 0x67, 0x64, 0x64, 0x76,  // ...@gddv
                        /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0028 */  0x00, 0x00, 0x00, 0x00, 0x4F, 0x45, 0x4D, 0x20,  // ....OEM 
                        /* 0030 */  0x45, 0x78, 0x70, 0x6F, 0x72, 0x74, 0x65, 0x64,  // Exported
                        /* 0038 */  0x20, 0x44, 0x61, 0x74, 0x61, 0x56, 0x61, 0x75,  //  DataVau
                        /* 0040 */  0x6C, 0x74, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // lt......
                        /* 0048 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0050 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0058 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0060 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0068 */  0x00, 0x00, 0x00, 0x00, 0x49, 0xA1, 0x31, 0xDE,  // ....I.1.
                        /* 0070 */  0xF2, 0x59, 0x11, 0x35, 0x93, 0xEA, 0x66, 0x85,  // .Y.5..f.
                        /* 0078 */  0xFD, 0x87, 0x8A, 0xF9, 0xCD, 0xCA, 0x83, 0xEE,  // ........
                        /* 0080 */  0x64, 0xF7, 0xD4, 0xBB, 0x47, 0xC1, 0x74, 0x44,  // d...G.tD
                        /* 0088 */  0xA9, 0x89, 0x92, 0xEC, 0x39, 0x07, 0x00, 0x00,  // ....9...
                        /* 0090 */  0x52, 0x45, 0x50, 0x4F, 0x5D, 0x00, 0x00, 0x00,  // REPO]...
                        /* 0098 */  0x01, 0x7F, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,  // ..r.....
                        /* 00A0 */  0x00, 0x00, 0x72, 0x87, 0xCD, 0xFF, 0x6D, 0x24,  // ..r...m$
                        /* 00A8 */  0x47, 0xDB, 0x3D, 0x24, 0x92, 0xB4, 0x16, 0x6F,  // G.=$...o
                        /* 00B0 */  0x45, 0xD8, 0xC3, 0xF5, 0x66, 0x14, 0x9F, 0x22,  // E...f.."
                        /* 00B8 */  0xD7, 0xF7, 0xDE, 0x67, 0x90, 0x9A, 0xA2, 0x0D,  // ...g....
                        /* 00C0 */  0x39, 0x25, 0xAD, 0xC3, 0x1A, 0xAD, 0x52, 0x0B,  // 9%....R.
                        /* 00C8 */  0x75, 0x38, 0xE1, 0xA4, 0x14, 0x43, 0xA1, 0x8C,  // u8...C..
                        /* 00D0 */  0x3E, 0x41, 0x46, 0x6B, 0x7A, 0x9B, 0xC3, 0x36,  // >AFkz..6
                        /* 00D8 */  0x83, 0xD7, 0xBC, 0xF3, 0x3D, 0xB5, 0xA1, 0x4F,  // ....=..O
                        /* 00E0 */  0xBD, 0x70, 0x2E, 0x0D, 0x21, 0xF1, 0x16, 0xA6,  // .p..!...
                        /* 00E8 */  0xAF, 0xD7, 0x22, 0x6E, 0x85, 0xCF, 0xFC, 0x25,  // .."n...%
                        /* 00F0 */  0x7B, 0x4D, 0xCC, 0x1A, 0xB6, 0x0E, 0xE7, 0xCB,  // {M......
                        /* 00F8 */  0xE8, 0x41, 0x58, 0xB9, 0x05, 0x0C, 0x85, 0x2F,  // .AX..../
                        /* 0100 */  0x5C, 0xDB, 0x10, 0x68, 0x2F, 0x22, 0xBE, 0xF7,  // \..h/"..
                        /* 0108 */  0x42, 0x07, 0xEA, 0x9D, 0x57, 0x6C, 0x6D, 0xB4,  // B...Wlm.
                        /* 0110 */  0xA6, 0x65, 0xD7, 0x40, 0xA7, 0x74, 0x55, 0x27,  // .e.@.tU'
                        /* 0118 */  0x3E, 0x87, 0x80, 0xFE, 0xBC, 0x27, 0xAF, 0x67,  // >....'.g
                        /* 0120 */  0x6F, 0xFF, 0xCD, 0xB3, 0xD2, 0x87, 0xF3, 0x77,  // o......w
                        /* 0128 */  0x1C, 0xFE, 0x26, 0xF6, 0x3A, 0xF5, 0x37, 0x1C,  // ..&.:.7.
                        /* 0130 */  0x89, 0x11, 0x27, 0x2A, 0x95, 0x72, 0x32, 0xC3,  // ..'*.r2.
                        /* 0138 */  0x1F, 0xE0, 0x9A, 0x64, 0xF5, 0xDC, 0xF7, 0xEA,  // ...d....
                        /* 0140 */  0x5C, 0x5D, 0x32, 0xDE, 0xF2, 0x5A, 0xD2, 0x2F,  // \]2..Z./
                        /* 0148 */  0xC7, 0x3E, 0x94, 0x24, 0x76, 0x50, 0x3D, 0xE6,  // .>.$vP=.
                        /* 0150 */  0x90, 0xDA, 0xAB, 0x31, 0x3B, 0xD7, 0xEB, 0x98,  // ...1;...
                        /* 0158 */  0xBE, 0x4A, 0x92, 0xFA, 0x89, 0x4B, 0xA1, 0xD5,  // .J...K..
                        /* 0160 */  0x0A, 0x3D, 0xB9, 0x3E, 0xA4, 0xF3, 0x33, 0xCB,  // .=.>..3.
                        /* 0168 */  0x8B, 0xCA, 0x6A, 0xE8, 0xBD, 0x18, 0xCB, 0xCB,  // ..j.....
                        /* 0170 */  0x04, 0x10, 0x3E, 0xDB, 0x7D, 0x62, 0x5A, 0x07,  // ..>.}bZ.
                        /* 0178 */  0xBE, 0x67, 0xBA, 0x16, 0xC1, 0x4A, 0x9C, 0x5D,  // .g...J.]
                        /* 0180 */  0xF3, 0xE5, 0xE6, 0x15, 0x21, 0xFD, 0x02, 0x42,  // ....!..B
                        /* 0188 */  0x7B, 0xE3, 0xB8, 0x6A, 0x74, 0x08, 0x58, 0x32,  // {..jt.X2
                        /* 0190 */  0xD1, 0x44, 0x82, 0x29, 0xE6, 0x33, 0xAB, 0x00,  // .D.).3..
                        /* 0198 */  0x06, 0xC7, 0x2D, 0x4C, 0x3A, 0xB2, 0x97, 0x89,  // ..-L:...
                        /* 01A0 */  0x28, 0x41, 0x3B, 0xDC, 0x67, 0xE7, 0xA3, 0xC3,  // (A;.g...
                        /* 01A8 */  0xB4, 0x6B, 0xB9, 0xF7, 0x08, 0x7C, 0x8B, 0x33,  // .k...|.3
                        /* 01B0 */  0x17, 0x62, 0xF6, 0x45, 0x3B, 0xDC, 0xD5, 0xA3,  // .b.E;...
                        /* 01B8 */  0x37, 0xE7, 0xFF, 0x61, 0x7C, 0x6C, 0x0B, 0x2E,  // 7..a|l..
                        /* 01C0 */  0x5F, 0x28, 0xC8, 0xF1, 0xB4, 0xFD, 0xB7, 0x82,  // _(......
                        /* 01C8 */  0xB1, 0x66, 0xCF, 0x4B, 0x46, 0x36, 0xFD, 0x3C,  // .f.KF6.<
                        /* 01D0 */  0x51, 0xCF, 0x83, 0x50, 0x61, 0x0C, 0x29, 0x49,  // Q..Pa.)I
                        /* 01D8 */  0x13, 0xDC, 0x02, 0x1A, 0x5B, 0x21, 0xA5, 0x34,  // ....[!.4
                        /* 01E0 */  0xA9, 0xE9, 0xA1, 0xC7, 0xD3, 0xB8, 0x75, 0x91,  // ......u.
                        /* 01E8 */  0x55, 0x0C, 0x2E, 0x43, 0xA7, 0xAF, 0xCF, 0x6A,  // U..C...j
                        /* 01F0 */  0xC5, 0xAE, 0x6B, 0x91, 0x23, 0x08, 0x4C, 0xB9,  // ..k.#.L.
                        /* 01F8 */  0x7F, 0xE6, 0xCD, 0xD9, 0x51, 0x32, 0xD0, 0x62,  // ....Q2.b
                        /* 0200 */  0xA2, 0x4A, 0x1E, 0xCE, 0xDA, 0x80, 0x2E, 0x03,  // .J......
                        /* 0208 */  0xE8, 0x4D, 0x35, 0xBD, 0x69, 0xB4, 0x5E, 0x8A,  // .M5.i.^.
                        /* 0210 */  0x05, 0xF2, 0x44, 0xED, 0xE8, 0x01, 0x57, 0xC6,  // ..D...W.
                        /* 0218 */  0x08, 0x1B, 0x7D, 0x28, 0x58, 0x54, 0x10, 0xFB,  // ..}(XT..
                        /* 0220 */  0x76, 0x05, 0x79, 0x37, 0xB2, 0xBE, 0xC2, 0x66,  // v.y7...f
                        /* 0228 */  0x08, 0x17, 0x95, 0x9F, 0x27, 0x05, 0xE3, 0x69,  // ....'..i
                        /* 0230 */  0xAE, 0xA1, 0x12, 0x96, 0xF9, 0x7E, 0xF9, 0x96,  // .....~..
                        /* 0238 */  0x8A, 0xBB, 0xF9, 0xBB, 0x6B, 0xAF, 0x06, 0x2A,  // ....k..*
                        /* 0240 */  0x52, 0x0E, 0x15, 0xC1, 0xE1, 0x7C, 0xFC, 0x37,  // R....|.7
                        /* 0248 */  0xD1, 0xFD, 0x25, 0xF4, 0xBF, 0x76, 0xC5, 0x76,  // ..%..v.v
                        /* 0250 */  0x73, 0x5C, 0x47, 0x8D, 0xB1, 0x41, 0x20, 0xAA,  // s\G..A .
                        /* 0258 */  0xCA, 0x09, 0xDE, 0x4B, 0xDE, 0xA2, 0x99, 0xF9,  // ...K....
                        /* 0260 */  0x39, 0x2F, 0xE5, 0x09, 0xFD, 0x10, 0x58, 0x73,  // 9/....Xs
                        /* 0268 */  0x2D, 0xD6, 0xFF, 0xEB, 0xD7, 0xD4, 0x69, 0x5A,  // -.....iZ
                        /* 0270 */  0xB8, 0x73, 0x89, 0x8F, 0x10, 0x94, 0xC2, 0x09,  // .s......
                        /* 0278 */  0xE6, 0x89, 0x63, 0x13, 0x59, 0x13, 0x99, 0xCF,  // ..c.Y...
                        /* 0280 */  0x80, 0xCC, 0x8A, 0x3B, 0x46, 0x83, 0x36, 0x41,  // ...;F.6A
                        /* 0288 */  0xBF, 0x20, 0xE3, 0x31, 0xC0, 0x75, 0x26, 0x1D,  // . .1.u&.
                        /* 0290 */  0x41, 0x1E, 0x2B, 0xF2, 0x2C, 0xA0, 0xE5, 0x41,  // A.+.,..A
                        /* 0298 */  0x97, 0x8B, 0x01, 0x51, 0x08, 0xE7, 0x6F, 0x1C,  // ...Q..o.
                        /* 02A0 */  0x6E, 0xC4, 0xD1, 0x67, 0x55, 0x75, 0x93, 0x1F,  // n..gUu..
                        /* 02A8 */  0x5F, 0xB3, 0x86, 0xC8, 0x2E, 0x24, 0x05, 0x51,  // _....$.Q
                        /* 02B0 */  0x6B, 0xDD, 0xDD, 0xBB, 0xD9, 0xE4, 0xA0, 0xEE,  // k.......
                        /* 02B8 */  0xD0, 0x4B, 0x6F, 0x94, 0xC1, 0x56, 0xD9, 0xBA,  // .Ko..V..
                        /* 02C0 */  0x22, 0x58, 0x43, 0x8D, 0x93, 0x48, 0x4D, 0x4F,  // "XC..HMO
                        /* 02C8 */  0xF8, 0x0B, 0x65, 0x97, 0xD0, 0x37, 0xBD, 0x8E,  // ..e..7..
                        /* 02D0 */  0x16, 0xCA, 0x21, 0x44, 0x97, 0xC7, 0xBF, 0xB1,  // ..!D....
                        /* 02D8 */  0xEA, 0x7C, 0x95, 0x99, 0x5F, 0xEC, 0x9A, 0xA3,  // .|.._...
                        /* 02E0 */  0x1D, 0x17, 0x59, 0x8F, 0x4B, 0x02, 0xF5, 0xCA,  // ..Y.K...
                        /* 02E8 */  0x9B, 0x13, 0x4C, 0xB3, 0x99, 0x53, 0xE0, 0x3E,  // ..L..S.>
                        /* 02F0 */  0xF2, 0x1C, 0x21, 0x34, 0x76, 0x61, 0xCE, 0xC0,  // ..!4va..
                        /* 02F8 */  0x4B, 0xD7, 0xC4, 0x5B, 0xCF, 0xA1, 0x9B, 0x76,  // K..[...v
                        /* 0300 */  0xA2, 0xE9, 0xCC, 0x11, 0xB2, 0x3E, 0x25, 0x05,  // .....>%.
                        /* 0308 */  0x70, 0xE8, 0xC5, 0x27, 0xDA, 0xFA, 0x3B, 0x74,  // p..'..;t
                        /* 0310 */  0x86, 0x8F, 0xD0, 0xBA, 0xD3, 0x2D, 0x87, 0x1C,  // .....-..
                        /* 0318 */  0xDF, 0x79, 0xCE, 0x6C, 0xC4, 0xC1, 0x43, 0x02,  // .y.l..C.
                        /* 0320 */  0xE8, 0xB9, 0x0E, 0x0A, 0xC3, 0x42, 0x1A, 0xB1,  // .....B..
                        /* 0328 */  0x97, 0xD2, 0x30, 0xE1, 0x2C, 0xA5, 0x75, 0xAD,  // ..0.,.u.
                        /* 0330 */  0xEF, 0x9F, 0xD4, 0xFA, 0x1A, 0xFE, 0xC8, 0x92,  // ........
                        /* 0338 */  0x90, 0x12, 0xC5, 0xF1, 0x87, 0xBD, 0x76, 0x7D,  // ......v}
                        /* 0340 */  0x67, 0x1F, 0xCF, 0xCF, 0x9B, 0xFA, 0xF1, 0xE8,  // g.......
                        /* 0348 */  0x51, 0xFD, 0x5C, 0x01, 0x42, 0x1B, 0xDF, 0x87,  // Q.\.B...
                        /* 0350 */  0x5A, 0xE0, 0x24, 0xD1, 0x72, 0xBF, 0xA0, 0xCA,  // Z.$.r...
                        /* 0358 */  0x4C, 0x7C, 0xDA, 0x8A, 0xDC, 0xC1, 0xDD, 0x4B,  // L|.....K
                        /* 0360 */  0xD7, 0x6A, 0xA9, 0x7B, 0x35, 0xF3, 0xAE, 0xCE,  // .j.{5...
                        /* 0368 */  0xB5, 0x4F, 0x14, 0x10, 0xA6, 0xF5, 0xD7, 0xC8,  // .O......
                        /* 0370 */  0x71, 0x1D, 0x3E, 0x08, 0x0B, 0xC3, 0x53, 0x28,  // q.>...S(
                        /* 0378 */  0x91, 0x49, 0xD3, 0x30, 0xFD, 0x3C, 0xBE, 0x46,  // .I.0.<.F
                        /* 0380 */  0xD3, 0xDE, 0xFC, 0x48, 0x45, 0x06, 0x3F, 0xAB,  // ...HE.?.
                        /* 0388 */  0xA2, 0xAD, 0x3B, 0x6C, 0xC4, 0x90, 0xDF, 0xA0,  // ..;l....
                        /* 0390 */  0xE2, 0x13, 0x85, 0xBA, 0xAC, 0xAB, 0x4C, 0x44,  // ......LD
                        /* 0398 */  0xB1, 0xE3, 0x50, 0x9D, 0xFE, 0x79, 0xC9, 0xDD,  // ..P..y..
                        /* 03A0 */  0x1D, 0x60, 0x00, 0x81, 0x2A, 0x51, 0x20, 0x36,  // .`..*Q 6
                        /* 03A8 */  0x5A, 0x48, 0x0E, 0x0A, 0xF9, 0x31, 0xAA, 0x9C,  // ZH...1..
                        /* 03B0 */  0x24, 0x48, 0x98, 0x67, 0x29, 0x59, 0xA6, 0x90,  // $H.g)Y..
                        /* 03B8 */  0x1A, 0x99, 0xAB, 0x9E, 0xE1, 0x66, 0x6E, 0xB9,  // .....fn.
                        /* 03C0 */  0xDF, 0xBE, 0xB2, 0xD0, 0xA1, 0xE2, 0x73, 0x35,  // ......s5
                        /* 03C8 */  0xBF, 0xD7, 0xD7, 0xEA, 0xC4, 0x64, 0xE9, 0xDD,  // .....d..
                        /* 03D0 */  0xE9, 0x18, 0x1A, 0x18, 0x52, 0x16, 0xB9, 0xFD,  // ....R...
                        /* 03D8 */  0x44, 0x6B, 0xAE, 0xE4, 0x39, 0xFB, 0x0D, 0x9D,  // Dk..9...
                        /* 03E0 */  0xD7, 0x0D, 0x7E, 0xDD, 0x55, 0xF3, 0x94, 0x65,  // ..~.U..e
                        /* 03E8 */  0xD9, 0x36, 0xBA, 0xCD, 0xD3, 0x2E, 0x86, 0x37,  // .6.....7
                        /* 03F0 */  0xAA, 0xAC, 0x28, 0xA6, 0x7B, 0x8C, 0xF2, 0x49,  // ..(.{..I
                        /* 03F8 */  0x6B, 0x00, 0xDB, 0xED, 0x9F, 0xB1, 0xF1, 0x86,  // k.......
                        /* 0400 */  0xAD, 0x7C, 0xB6, 0xDF, 0x6D, 0x6C, 0x02, 0xA1,  // .|..ml..
                        /* 0408 */  0x6D, 0x20, 0xD8, 0x2A, 0x06, 0xBA, 0xA0, 0x99,  // m .*....
                        /* 0410 */  0xFF, 0xBB, 0x4B, 0xF7, 0x00, 0x73, 0xF0, 0x8F,  // ..K..s..
                        /* 0418 */  0x7F, 0x46, 0x64, 0x52, 0x90, 0x88, 0xAD, 0x43,  // .FdR...C
                        /* 0420 */  0xE3, 0x4B, 0x51, 0xEC, 0xB2, 0x7E, 0x1B, 0x09,  // .KQ..~..
                        /* 0428 */  0xFA, 0x5B, 0x9A, 0xDC, 0xD1, 0x73, 0xA3, 0x15,  // .[...s..
                        /* 0430 */  0xDF, 0xD1, 0xB0, 0x74, 0xE7, 0xCB, 0x1D, 0xB5,  // ...t....
                        /* 0438 */  0xF7, 0x02, 0x9A, 0xB1, 0x1D, 0x0E, 0x95, 0x2E,  // ........
                        /* 0440 */  0x19, 0x05, 0x08, 0xF1, 0x9F, 0x2B, 0x6A, 0x6C,  // .....+jl
                        /* 0448 */  0xE7, 0x56, 0x6B, 0x5E, 0x8F, 0x6A, 0xCE, 0x3D,  // .Vk^.j.=
                        /* 0450 */  0x28, 0x18, 0x5C, 0x8D, 0xF6, 0xBA, 0x7C, 0xE5,  // (.\...|.
                        /* 0458 */  0x72, 0x7C, 0xF2, 0x15, 0x67, 0x04, 0x44, 0x40,  // r|..g.D@
                        /* 0460 */  0xF8, 0xB9, 0x9D, 0x0F, 0x66, 0xCC, 0xA1, 0x9C,  // ....f...
                        /* 0468 */  0x1F, 0x7A, 0xC3, 0xCB, 0x34, 0x58, 0x7C, 0x83,  // .z..4X|.
                        /* 0470 */  0x64, 0xC8, 0xA7, 0xC4, 0x26, 0x35, 0x15, 0x90,  // d...&5..
                        /* 0478 */  0x75, 0xA7, 0x51, 0xEB, 0x4A, 0xBD, 0x2F, 0x70,  // u.Q.J./p
                        /* 0480 */  0x23, 0x62, 0xCD, 0x62, 0xAF, 0x12, 0x62, 0xA1,  // #b.b..b.
                        /* 0488 */  0x58, 0xE1, 0xB9, 0x48, 0x87, 0xC3, 0xC2, 0xF7,  // X..H....
                        /* 0490 */  0x59, 0x97, 0x79, 0x01, 0x51, 0x93, 0xBC, 0x4C,  // Y.y.Q..L
                        /* 0498 */  0xC8, 0x20, 0xC2, 0x37, 0x93, 0xD8, 0x22, 0x5D,  // . .7.."]
                        /* 04A0 */  0x2C, 0xF0, 0xE6, 0x46, 0xFA, 0x9A, 0x4B, 0xA6,  // ,..F..K.
                        /* 04A8 */  0x84, 0xE4, 0x97, 0xB5, 0xDA, 0x21, 0xD2, 0x81,  // .....!..
                        /* 04B0 */  0x44, 0x4D, 0x07, 0x1A, 0xF2, 0x05, 0x86, 0x29,  // DM.....)
                        /* 04B8 */  0xEE, 0x66, 0xF6, 0xF0, 0x28, 0x4E, 0x66, 0x58,  // .f..(NfX
                        /* 04C0 */  0x2C, 0x44, 0xA2, 0x7B, 0x06, 0xEA, 0xD2, 0xBB,  // ,D.{....
                        /* 04C8 */  0x16, 0xF1, 0x5E, 0x44, 0x2C, 0xA7, 0x97, 0xA3,  // ..^D,...
                        /* 04D0 */  0xB8, 0x92, 0xBF, 0xFD, 0xCA, 0xEE, 0x20, 0xD4,  // ...... .
                        /* 04D8 */  0xAA, 0x85, 0x1F, 0x7A, 0x0E, 0x5B, 0x41, 0x92,  // ...z.[A.
                        /* 04E0 */  0x5E, 0xA0, 0x14, 0x44, 0x5E, 0x80, 0xEF, 0x54,  // ^..D^..T
                        /* 04E8 */  0x23, 0x7F, 0xF7, 0x9B, 0xFD, 0x72, 0x4C, 0xDB,  // #....rL.
                        /* 04F0 */  0xE9, 0x02, 0x19, 0xCF, 0xC3, 0x5B, 0x6D, 0x7B,  // .....[m{
                        /* 04F8 */  0xB8, 0xA2, 0xAA, 0xFE, 0xC4, 0x35, 0x80, 0xA9,  // .....5..
                        /* 0500 */  0x11, 0x1B, 0x7F, 0x11, 0x09, 0x9C, 0x6C, 0xB5,  // ......l.
                        /* 0508 */  0x38, 0x73, 0x15, 0x21, 0x54, 0xDC, 0xE8, 0xB4,  // 8s.!T...
                        /* 0510 */  0xD5, 0x0A, 0xA1, 0x9E, 0x7C, 0xBB, 0x8D, 0x81,  // ....|...
                        /* 0518 */  0x50, 0x4D, 0x78, 0x30, 0xF3, 0xFB, 0x26, 0xF9,  // PMx0..&.
                        /* 0520 */  0x51, 0xA5, 0x0C, 0x2E, 0x0A, 0xC1, 0xD7, 0x90,  // Q.......
                        /* 0528 */  0x9D, 0x4A, 0x7A, 0x5C, 0x20, 0xE0, 0x6B, 0x6C,  // .Jz\ .kl
                        /* 0530 */  0xD6, 0xD6, 0xA4, 0x84, 0xF9, 0x82, 0xFF, 0xD9,  // ........
                        /* 0538 */  0x6C, 0x6E, 0xC5, 0x5F, 0xAC, 0x2E, 0x31, 0x45,  // ln._..1E
                        /* 0540 */  0xEC, 0xA0, 0xC3, 0x23, 0x9F, 0x7C, 0x45, 0xF8,  // ...#.|E.
                        /* 0548 */  0x52, 0xE5, 0xA2, 0x9C, 0x46, 0x6F, 0x4A, 0x64,  // R...FoJd
                        /* 0550 */  0x50, 0x8A, 0x78, 0xE7, 0xB0, 0x10, 0x52, 0xE9,  // P.x...R.
                        /* 0558 */  0xC9, 0xCC, 0xC0, 0xBF, 0x16, 0x34, 0xAC, 0x59,  // .....4.Y
                        /* 0560 */  0x73, 0xC6, 0x16, 0x1C, 0x1D, 0x4D, 0x26, 0xB4,  // s....M&.
                        /* 0568 */  0x86, 0x44, 0x6E, 0x61, 0xDA, 0x41, 0xD1, 0x83,  // .Dna.A..
                        /* 0570 */  0x2F, 0x3E, 0x1B, 0xF9, 0x42, 0x51, 0xCC, 0x88,  // />..BQ..
                        /* 0578 */  0x4E, 0x24, 0x83, 0xC4, 0xE4, 0x28, 0xC3, 0x89,  // N$...(..
                        /* 0580 */  0xF7, 0xE6, 0x09, 0x30, 0xAC, 0x6F, 0xF2, 0x92,  // ...0.o..
                        /* 0588 */  0x47, 0x18, 0x78, 0xF3, 0xCD, 0xB2, 0xAE, 0x01,  // G.x.....
                        /* 0590 */  0x85, 0xA9, 0x2F, 0x33, 0xA0, 0xBC, 0xE9, 0x8B,  // ../3....
                        /* 0598 */  0xE8, 0x5F, 0xB9, 0x52, 0x69, 0xB9, 0xBA, 0xCE,  // ._.Ri...
                        /* 05A0 */  0xD2, 0x55, 0xF6, 0x0D, 0x58, 0x4C, 0xF9, 0x40,  // .U..XL.@
                        /* 05A8 */  0x04, 0xA1, 0x97, 0x9E, 0xC8, 0x2C, 0xF9, 0xBB,  // .....,..
                        /* 05B0 */  0x6E, 0xC7, 0x57, 0xA0, 0x40, 0x35, 0x3F, 0x76,  // n.W.@5?v
                        /* 05B8 */  0x63, 0xA1, 0x16, 0x07, 0x2B, 0x2C, 0x6F, 0x70,  // c...+,op
                        /* 05C0 */  0x7B, 0xE2, 0xB7, 0x43, 0xB6, 0x16, 0x28, 0x00,  // {..C..(.
                        /* 05C8 */  0x2B, 0xCA, 0x3D, 0x44, 0x58, 0xAC, 0x80, 0x89,  // +.=DX...
                        /* 05D0 */  0x12, 0xCC, 0xAE, 0x63, 0xD8, 0x1A, 0x77, 0x07,  // ...c..w.
                        /* 05D8 */  0xE9, 0x45, 0xD7, 0x3A, 0x78, 0xF2, 0x93, 0x4D,  // .E.:x..M
                        /* 05E0 */  0x9C, 0xC5, 0x8F, 0xD3, 0x20, 0x82, 0x99, 0xA5,  // .... ...
                        /* 05E8 */  0xD1, 0x25, 0xC4, 0xB3, 0x7E, 0xBF, 0x06, 0x21,  // .%..~..!
                        /* 05F0 */  0x29, 0x4D, 0xC0, 0x06, 0x79, 0xA7, 0x8D, 0x52,  // )M..y..R
                        /* 05F8 */  0xD9, 0xEF, 0xB7, 0xA4, 0x42, 0x6B, 0x1D, 0xCD,  // ....Bk..
                        /* 0600 */  0x9D, 0x43, 0xE6, 0x35, 0xAF, 0x65, 0xCF, 0xE2,  // .C.5.e..
                        /* 0608 */  0x91, 0xB6, 0x6D, 0x38, 0x23, 0x22, 0x28, 0x93,  // ..m8#"(.
                        /* 0610 */  0xF4, 0x4A, 0xF1, 0xC2, 0xAD, 0x56, 0x3B, 0x81,  // .J...V;.
                        /* 0618 */  0xD2, 0x88, 0x79, 0xCE, 0x03, 0x78, 0x3E, 0xD7,  // ..y..x>.
                        /* 0620 */  0x3E, 0x0E, 0x8F, 0x1E, 0x6C, 0x9B, 0xDE, 0x13,  // >...l...
                        /* 0628 */  0x3A, 0x2B, 0xC4, 0xDE, 0xD2, 0xFA, 0x4D, 0x34,  // :+....M4
                        /* 0630 */  0x19, 0x7F, 0x3B, 0x56, 0x32, 0x9E, 0xB1, 0x30,  // ..;V2..0
                        /* 0638 */  0x68, 0x22, 0x63, 0x93, 0x1C, 0x20, 0x87, 0xA3,  // h"c.. ..
                        /* 0640 */  0xDE, 0x36, 0xF2, 0x45, 0x6F, 0xBA, 0xFD, 0xE7,  // .6.Eo...
                        /* 0648 */  0x56, 0x54, 0x1B, 0x27, 0xC9, 0xD6, 0x18, 0x75,  // VT.'...u
                        /* 0650 */  0x4A, 0x56, 0x4A, 0xF7, 0x98, 0x65, 0xA0, 0xEE,  // JVJ..e..
                        /* 0658 */  0x85, 0x3F, 0x66, 0x45, 0x28, 0x49, 0x24, 0x17,  // .?fE(I$.
                        /* 0660 */  0xE6, 0x76, 0x00, 0xF4, 0x74, 0x32, 0xA8, 0xCC,  // .v..t2..
                        /* 0668 */  0x23, 0x53, 0x4F, 0x7E, 0xEC, 0xDF, 0xCE, 0x6C,  // #SO~...l
                        /* 0670 */  0xFF, 0x77, 0xD9, 0xD0, 0x2E, 0x05, 0x78, 0x22,  // .w....x"
                        /* 0678 */  0x4E, 0xF4, 0x40, 0x3A, 0xD5, 0x02, 0x50, 0x3B,  // N.@:..P;
                        /* 0680 */  0xC1, 0xAE, 0xBA, 0x0B, 0x07, 0x0B, 0x3B, 0xBD,  // ......;.
                        /* 0688 */  0x70, 0x67, 0x64, 0x0C, 0x03, 0x2C, 0x6A, 0x7F,  // pgd..,j.
                        /* 0690 */  0x19, 0x09, 0x32, 0xBD, 0x37, 0xC5, 0xAD, 0x1D,  // ..2.7...
                        /* 0698 */  0x1F, 0x7E, 0x80, 0x0E, 0x83, 0x56, 0xA8, 0x8C,  // .~...V..
                        /* 06A0 */  0x2D, 0x49, 0x3F, 0x9B, 0x4E, 0xB9, 0x3A, 0xE3,  // -I?.N.:.
                        /* 06A8 */  0x79, 0xA8, 0x77, 0xB1, 0xC8, 0x8B, 0x56, 0xFB,  // y.w...V.
                        /* 06B0 */  0x3C, 0xC5, 0x21, 0xEB, 0xF2, 0x41, 0xE6, 0x0D,  // <.!..A..
                        /* 06B8 */  0xF0, 0xB7, 0x43, 0x9B, 0x81, 0xC5, 0x59, 0x81,  // ..C...Y.
                        /* 06C0 */  0xAB, 0x65, 0x35, 0xD1, 0xFB, 0x97, 0xCC, 0xF9,  // .e5.....
                        /* 06C8 */  0x44, 0xDC, 0x3D, 0x6A, 0xC3, 0x4D, 0xBC, 0xE1,  // D.=j.M..
                        /* 06D0 */  0x99, 0xC1, 0x3E, 0x8F, 0xB1, 0x88, 0x32, 0xF0,  // ..>...2.
                        /* 06D8 */  0x6E, 0xC1, 0xD1, 0x8B, 0x88, 0x2E, 0xB0, 0x3A,  // n......:
                        /* 06E0 */  0x9B, 0xA3, 0x94, 0x15, 0x2E, 0x68, 0x60, 0xB9,  // .....h`.
                        /* 06E8 */  0x84, 0xFB, 0xC9, 0xF9, 0x1E, 0x9C, 0x67, 0xAA,  // ......g.
                        /* 06F0 */  0xCE, 0x4E, 0xD5, 0xB9, 0x38, 0x9A, 0xC6, 0xE8,  // .N..8...
                        /* 06F8 */  0x9C, 0xB3, 0x8B, 0x6B, 0x7F, 0xF6, 0xA0, 0x9C,  // ...k....
                        /* 0700 */  0x08, 0x33, 0x47, 0x99, 0x9C, 0x5C, 0x46, 0xF8,  // .3G..\F.
                        /* 0708 */  0x2B, 0x1B, 0x1D, 0xD9, 0x30, 0xC9, 0x84, 0x94,  // +...0...
                        /* 0710 */  0x5B, 0xDA, 0xE2, 0x4B, 0x6A, 0x28, 0x08, 0x58,  // [..Kj(.X
                        /* 0718 */  0x3A, 0x46, 0x1A, 0xD2, 0xE0, 0xF9, 0xC1, 0xC2,  // :F......
                        /* 0720 */  0x29, 0xAC, 0x04, 0x91, 0x9F, 0xA3, 0x6E, 0x97,  // ).....n.
                        /* 0728 */  0x6B, 0x9C, 0x2C, 0xD1, 0x37, 0x37, 0xC1, 0xB3,  // k.,.77..
                        /* 0730 */  0xCE, 0xE1, 0x40, 0xAD, 0x42, 0xDD, 0xA3, 0xB2,  // ..@.B...
                        /* 0738 */  0x04, 0x7E, 0xD5, 0xF7, 0x14, 0x8A, 0x7A, 0x0C,  // .~....z.
                        /* 0740 */  0xC7, 0x87, 0xEF, 0xE4, 0x1C, 0xDB, 0xE6, 0x29,  // .......)
                        /* 0748 */  0x4C, 0x8C, 0xC7, 0xB8, 0xA8, 0x50, 0x06, 0xA0,  // L....P..
                        /* 0750 */  0xAF, 0x46, 0xD5, 0x1A, 0x3A, 0x65, 0x3D, 0x22,  // .F..:e="
                        /* 0758 */  0xBC, 0x04, 0xD2, 0x38, 0x3F, 0x83, 0xC5, 0x07,  // ...8?...
                        /* 0760 */  0x0C, 0x9E, 0xC7, 0x8F, 0x6B, 0xC7, 0xE4, 0x1D,  // ....k...
                        /* 0768 */  0x3F, 0x85, 0xC5, 0x36, 0x4E, 0xE5, 0x27, 0xA9,  // ?..6N.'.
                        /* 0770 */  0xCC, 0xDE, 0xB3, 0x31, 0xED, 0x05, 0x53, 0xB9,  // ...1..S.
                        /* 0778 */  0xEA, 0x42, 0xCE, 0x5D, 0xEA, 0x60, 0x2A, 0xC0,  // .B.].`*.
                        /* 0780 */  0x7B, 0x5C, 0x49, 0xDB, 0x79, 0x3F, 0x2A, 0x72,  // {\I.y?*r
                        /* 0788 */  0xE8, 0xB3, 0x73, 0xEF, 0x67, 0x25, 0x8C, 0x69,  // ..s.g%.i
                        /* 0790 */  0x2E, 0xF5, 0x63, 0xD7, 0xCD, 0xEF, 0x37, 0x82,  // ..c...7.
                        /* 0798 */  0x48, 0xF1, 0x2F, 0xBE, 0x53, 0x6E, 0x6B, 0xC7,  // H./.Snk.
                        /* 07A0 */  0xF3, 0x75, 0xCB, 0x36, 0x82, 0x43, 0xEC, 0x77,  // .u.6.C.w
                        /* 07A8 */  0xBE, 0x3F, 0x56, 0x08, 0x5E, 0xD4, 0x93, 0xC7,  // .?V.^...
                        /* 07B0 */  0xC7, 0x15, 0x89, 0xF5, 0x03, 0xF3, 0x0C, 0xD3,  // ........
                        /* 07B8 */  0x29, 0x55, 0xA3, 0x14, 0xFB, 0xBC, 0x5C, 0x2D,  // )U....\-
                        /* 07C0 */  0x87, 0x08, 0xFC, 0xF4, 0xB4, 0x65, 0x42, 0xBF,  // .....eB.
                        /* 07C8 */  0x4A, 0x61, 0x27, 0xFE, 0xEC                     // Ja'..
                    }
                })
            }
            Else
            {
                Return (Package (0x01)
                {
                    Buffer (0x0797)
                    {
                        /* 0000 */  0xE5, 0x1F, 0x94, 0x00, 0x00, 0x00, 0x00, 0x02,  // ........
                        /* 0008 */  0x00, 0x00, 0x00, 0x40, 0x67, 0x64, 0x64, 0x76,  // ...@gddv
                        /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0028 */  0x00, 0x00, 0x00, 0x00, 0x4F, 0x45, 0x4D, 0x20,  // ....OEM 
                        /* 0030 */  0x45, 0x78, 0x70, 0x6F, 0x72, 0x74, 0x65, 0x64,  // Exported
                        /* 0038 */  0x20, 0x44, 0x61, 0x74, 0x61, 0x56, 0x61, 0x75,  //  DataVau
                        /* 0040 */  0x6C, 0x74, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // lt......
                        /* 0048 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0050 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0058 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0060 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0068 */  0x00, 0x00, 0x00, 0x00, 0x54, 0x1E, 0x81, 0x8C,  // ....T...
                        /* 0070 */  0x23, 0x02, 0x6B, 0xFD, 0x55, 0x70, 0xE6, 0xDF,  // #.k.Up..
                        /* 0078 */  0x38, 0x5A, 0x3B, 0xA2, 0xDA, 0xAB, 0x15, 0x57,  // 8Z;....W
                        /* 0080 */  0xA4, 0xBD, 0xAA, 0x9B, 0xBF, 0xDA, 0x13, 0xB2,  // ........
                        /* 0088 */  0x1F, 0xB3, 0x6C, 0x4D, 0x03, 0x07, 0x00, 0x00,  // ..lM....
                        /* 0090 */  0x52, 0x45, 0x50, 0x4F, 0x5D, 0x00, 0x00, 0x00,  // REPO]...
                        /* 0098 */  0x01, 0x88, 0x6F, 0x00, 0x00, 0x00, 0x00, 0x00,  // ..o.....
                        /* 00A0 */  0x00, 0x00, 0x72, 0x87, 0xCD, 0xFF, 0x6D, 0x24,  // ..r...m$
                        /* 00A8 */  0x47, 0xDB, 0x3D, 0x24, 0x92, 0xB4, 0x16, 0x6F,  // G.=$...o
                        /* 00B0 */  0x45, 0xD8, 0xC3, 0xF5, 0x66, 0x14, 0x9F, 0x22,  // E...f.."
                        /* 00B8 */  0xD7, 0xF7, 0xDE, 0x67, 0x90, 0x9A, 0xA2, 0x0D,  // ...g....
                        /* 00C0 */  0x39, 0x25, 0xAD, 0xC3, 0x1A, 0xAD, 0x52, 0x0B,  // 9%....R.
                        /* 00C8 */  0x75, 0x38, 0xE1, 0xA4, 0x14, 0x40, 0xE4, 0xCB,  // u8...@..
                        /* 00D0 */  0x70, 0xC9, 0x28, 0x85, 0xB9, 0x0C, 0x85, 0x07,  // p.(.....
                        /* 00D8 */  0x45, 0xA1, 0x2D, 0x70, 0x2E, 0xAA, 0xCF, 0x62,  // E.-p...b
                        /* 00E0 */  0xEE, 0x6C, 0xF8, 0xF5, 0x01, 0x75, 0x30, 0xC5,  // .l...u0.
                        /* 00E8 */  0x03, 0x3F, 0xAB, 0xB8, 0x04, 0x48, 0x14, 0x29,  // .?...H.)
                        /* 00F0 */  0x75, 0xB7, 0xB4, 0x00, 0x07, 0x41, 0x84, 0x1E,  // u....A..
                        /* 00F8 */  0x09, 0x99, 0x5B, 0x68, 0x2C, 0x7F, 0xE2, 0x32,  // ..[h,..2
                        /* 0100 */  0xB3, 0x05, 0xE9, 0x2F, 0x47, 0xEA, 0x0B, 0xEF,  // .../G...
                        /* 0108 */  0xB8, 0x1C, 0xD4, 0x5A, 0x9D, 0x11, 0x1F, 0x21,  // ...Z...!
                        /* 0110 */  0x43, 0x7C, 0xA9, 0x64, 0xDD, 0x96, 0xB6, 0x0E,  // C|.d....
                        /* 0118 */  0x0D, 0xB9, 0xAF, 0xFB, 0x85, 0x80, 0x64, 0x52,  // ......dR
                        /* 0120 */  0x40, 0x8A, 0xD0, 0x35, 0x80, 0xCF, 0xE5, 0x84,  // @..5....
                        /* 0128 */  0xDB, 0x6D, 0xD8, 0x89, 0x78, 0x52, 0x38, 0x45,  // .m..xR8E
                        /* 0130 */  0x49, 0xCA, 0xED, 0xF9, 0xD2, 0x64, 0x9F, 0x4F,  // I....d.O
                        /* 0138 */  0x1E, 0x35, 0x90, 0xDA, 0x65, 0x7F, 0x10, 0x71,  // .5..e..q
                        /* 0140 */  0x7D, 0x5B, 0xC6, 0x56, 0xAC, 0x79, 0x1E, 0xD1,  // }[.V.y..
                        /* 0148 */  0x77, 0xC1, 0xC2, 0xD1, 0x83, 0xFC, 0xB7, 0x31,  // w......1
                        /* 0150 */  0x41, 0x12, 0x79, 0x13, 0xCB, 0x61, 0xDC, 0xA4,  // A.y..a..
                        /* 0158 */  0xF5, 0x3A, 0x43, 0xDF, 0xA1, 0x95, 0x90, 0x7E,  // .:C....~
                        /* 0160 */  0xD8, 0x12, 0x4E, 0x88, 0xC6, 0x60, 0x92, 0x26,  // ..N..`.&
                        /* 0168 */  0xA4, 0x7C, 0x44, 0x1D, 0xEA, 0xCB, 0x94, 0xA5,  // .|D.....
                        /* 0170 */  0x43, 0x11, 0x1E, 0x70, 0xF7, 0x97, 0x5D, 0x8E,  // C..p..].
                        /* 0178 */  0x64, 0x8B, 0xAE, 0x85, 0x5F, 0xE8, 0x98, 0x8C,  // d..._...
                        /* 0180 */  0x9F, 0x5F, 0x33, 0x58, 0xE3, 0xD5, 0x67, 0x47,  // ._3X..gG
                        /* 0188 */  0xA6, 0xF4, 0xB2, 0xBE, 0x47, 0x49, 0x18, 0x8B,  // ....GI..
                        /* 0190 */  0x6D, 0x8E, 0xC0, 0x72, 0x04, 0x9D, 0x4C, 0x62,  // m..r..Lb
                        /* 0198 */  0x51, 0xAB, 0xA2, 0x7C, 0x05, 0x60, 0xC4, 0xA6,  // Q..|.`..
                        /* 01A0 */  0x1F, 0xF1, 0x62, 0x70, 0x0E, 0x6A, 0x45, 0xD4,  // ..bp.jE.
                        /* 01A8 */  0x55, 0x3C, 0xB8, 0x16, 0xFC, 0xE1, 0x17, 0x21,  // U<.....!
                        /* 01B0 */  0x7A, 0x77, 0xA8, 0xAD, 0xFA, 0x63, 0x83, 0x6B,  // zw...c.k
                        /* 01B8 */  0xFB, 0x7A, 0x88, 0xEE, 0xB8, 0xB7, 0x94, 0xE8,  // .z......
                        /* 01C0 */  0x28, 0x5E, 0x4F, 0x43, 0x5D, 0xB2, 0xA2, 0xAB,  // (^OC]...
                        /* 01C8 */  0x3D, 0x65, 0x68, 0x8C, 0xA8, 0xB8, 0x1D, 0x1A,  // =eh.....
                        /* 01D0 */  0xBE, 0xD7, 0xDE, 0x01, 0x9D, 0xFC, 0x5E, 0x84,  // ......^.
                        /* 01D8 */  0x9F, 0xA4, 0xA0, 0xA5, 0x8F, 0x55, 0x4A, 0x25,  // .....UJ%
                        /* 01E0 */  0x12, 0xD1, 0x09, 0x0D, 0xA3, 0xFB, 0xD0, 0x0E,  // ........
                        /* 01E8 */  0x51, 0x87, 0x7B, 0x9C, 0x9E, 0x44, 0xF1, 0xF3,  // Q.{..D..
                        /* 01F0 */  0x6D, 0x56, 0xAF, 0xC0, 0x5A, 0x9B, 0x3E, 0x15,  // mV..Z.>.
                        /* 01F8 */  0x38, 0xDB, 0x99, 0x09, 0x83, 0x22, 0xBB, 0x26,  // 8....".&
                        /* 0200 */  0xAA, 0x6A, 0x02, 0xB5, 0x81, 0x88, 0x32, 0x0E,  // .j....2.
                        /* 0208 */  0x29, 0xF1, 0x7F, 0xCF, 0xD8, 0xE6, 0x5B, 0xBC,  // ).....[.
                        /* 0210 */  0x37, 0x28, 0xCD, 0xA4, 0xF0, 0x01, 0x58, 0xD2,  // 7(....X.
                        /* 0218 */  0x67, 0x27, 0xE2, 0x73, 0x51, 0x80, 0x91, 0x8A,  // g'.sQ...
                        /* 0220 */  0xD8, 0x62, 0x8C, 0xB8, 0xCE, 0x9B, 0x0B, 0x44,  // .b.....D
                        /* 0228 */  0x2A, 0x92, 0xD2, 0x2F, 0x0B, 0x0F, 0xEA, 0xD6,  // *../....
                        /* 0230 */  0xFC, 0x7E, 0xED, 0x03, 0x11, 0x8B, 0x3B, 0x01,  // .~....;.
                        /* 0238 */  0x6A, 0xC5, 0xB2, 0x2E, 0x56, 0x88, 0xCE, 0x1E,  // j...V...
                        /* 0240 */  0x63, 0xB2, 0x6E, 0x28, 0x03, 0x90, 0x22, 0x10,  // c.n(..".
                        /* 0248 */  0x04, 0xEC, 0xA5, 0x6B, 0x69, 0xBE, 0x5D, 0xD2,  // ...ki.].
                        /* 0250 */  0xD0, 0xF1, 0x21, 0x66, 0x80, 0xD7, 0x12, 0xF2,  // ..!f....
                        /* 0258 */  0xF7, 0x0B, 0x9A, 0xC8, 0x30, 0xD4, 0xAB, 0x68,  // ....0..h
                        /* 0260 */  0x2A, 0xBE, 0x80, 0x01, 0x3D, 0x48, 0xBC, 0xD9,  // *...=H..
                        /* 0268 */  0x81, 0xC2, 0x1F, 0xDD, 0x11, 0xA7, 0x11, 0x3A,  // .......:
                        /* 0270 */  0xE6, 0x2E, 0x3C, 0x2E, 0x2C, 0xBB, 0x6E, 0xED,  // ..<.,.n.
                        /* 0278 */  0x02, 0xC2, 0xD9, 0xAD, 0xE2, 0xA5, 0xAF, 0xCE,  // ........
                        /* 0280 */  0x64, 0xFB, 0x60, 0xF8, 0xDB, 0x60, 0xC7, 0x29,  // d.`..`.)
                        /* 0288 */  0xEB, 0xFE, 0xA1, 0x04, 0x9D, 0xF1, 0xD2, 0x17,  // ........
                        /* 0290 */  0x05, 0x91, 0xEE, 0xFE, 0x86, 0xF7, 0xF2, 0x34,  // .......4
                        /* 0298 */  0x75, 0x0C, 0x61, 0xC6, 0xBE, 0x44, 0x4F, 0x39,  // u.a..DO9
                        /* 02A0 */  0x6E, 0x76, 0x1F, 0x03, 0x11, 0xEF, 0x25, 0x6B,  // nv....%k
                        /* 02A8 */  0xF8, 0xCE, 0xEE, 0xDE, 0x87, 0x1F, 0xE2, 0xD0,  // ........
                        /* 02B0 */  0xA8, 0xDD, 0x52, 0x3F, 0x62, 0x2F, 0xC3, 0x75,  // ..R?b/.u
                        /* 02B8 */  0x95, 0x39, 0x56, 0x32, 0x3C, 0x9D, 0xB3, 0xF7,  // .9V2<...
                        /* 02C0 */  0x9C, 0x9F, 0x23, 0x79, 0xD9, 0x9C, 0x8D, 0x58,  // ..#y...X
                        /* 02C8 */  0x97, 0x41, 0x5F, 0x78, 0xD0, 0x7B, 0xDD, 0xC9,  // .A_x.{..
                        /* 02D0 */  0x44, 0xDA, 0x09, 0xA4, 0x9B, 0x6A, 0xB7, 0xB5,  // D....j..
                        /* 02D8 */  0x10, 0x5D, 0x8B, 0x46, 0x9B, 0x9F, 0xCE, 0xAF,  // .].F....
                        /* 02E0 */  0xFF, 0x31, 0x56, 0x5A, 0xE9, 0x54, 0x31, 0xB9,  // .1VZ.T1.
                        /* 02E8 */  0x3C, 0xD0, 0x0E, 0x2A, 0x62, 0x09, 0xC3, 0xA6,  // <..*b...
                        /* 02F0 */  0x39, 0x4A, 0x1D, 0x64, 0xD1, 0xC7, 0xF8, 0x30,  // 9J.d...0
                        /* 02F8 */  0xF5, 0x0E, 0x01, 0x6F, 0xE7, 0x38, 0x4F, 0xF8,  // ...o.8O.
                        /* 0300 */  0x41, 0xE2, 0x71, 0xD3, 0x7E, 0x31, 0xF6, 0x4B,  // A.q.~1.K
                        /* 0308 */  0xD0, 0x1D, 0x6B, 0x7D, 0xCE, 0x20, 0x80, 0x64,  // ..k}. .d
                        /* 0310 */  0x01, 0x4E, 0x36, 0xB9, 0x9B, 0xC0, 0x84, 0xD8,  // .N6.....
                        /* 0318 */  0x08, 0xF4, 0xF2, 0x6E, 0x12, 0x8B, 0x0E, 0x7D,  // ...n...}
                        /* 0320 */  0x0F, 0x72, 0x73, 0xDF, 0x5F, 0x0C, 0x30, 0x32,  // .rs._.02
                        /* 0328 */  0xFC, 0x45, 0x00, 0x67, 0x3C, 0x49, 0x5C, 0x62,  // .E.g<I\b
                        /* 0330 */  0x6F, 0xB1, 0xF4, 0xA6, 0x54, 0xF5, 0x3F, 0xF1,  // o...T.?.
                        /* 0338 */  0x1E, 0xB6, 0xFB, 0x64, 0x1F, 0x11, 0xC0, 0x85,  // ...d....
                        /* 0340 */  0x17, 0x57, 0xB5, 0x0D, 0x12, 0xDC, 0xE2, 0x17,  // .W......
                        /* 0348 */  0xC5, 0x9B, 0x95, 0x31, 0xEA, 0xA0, 0x2A, 0xF5,  // ...1..*.
                        /* 0350 */  0xC9, 0xEA, 0x01, 0x46, 0x4A, 0x73, 0x43, 0x5F,  // ...FJsC_
                        /* 0358 */  0x90, 0x5C, 0xFE, 0xDD, 0xB8, 0xE1, 0x68, 0x26,  // .\....h&
                        /* 0360 */  0x65, 0xD2, 0x01, 0xA2, 0x6B, 0x47, 0xC0, 0xCB,  // e...kG..
                        /* 0368 */  0x7A, 0x67, 0x0D, 0x63, 0xF2, 0x17, 0xDF, 0x3E,  // zg.c...>
                        /* 0370 */  0x2C, 0x1B, 0x57, 0x92, 0x5E, 0xA1, 0x7C, 0xED,  // ,.W.^.|.
                        /* 0378 */  0x96, 0x4F, 0x24, 0xA2, 0xAA, 0x1A, 0x8F, 0xF2,  // .O$.....
                        /* 0380 */  0x9A, 0xD0, 0x0A, 0x3B, 0xC7, 0x3B, 0x17, 0x04,  // ...;.;..
                        /* 0388 */  0x2E, 0xCC, 0xBE, 0x6A, 0x5F, 0xCF, 0x41, 0xF7,  // ...j_.A.
                        /* 0390 */  0xB4, 0xEE, 0xC7, 0x26, 0x9A, 0xDB, 0x88, 0x63,  // ...&...c
                        /* 0398 */  0x1A, 0x95, 0x1B, 0x0C, 0xC1, 0x2B, 0xA0, 0x85,  // .....+..
                        /* 03A0 */  0x0A, 0x42, 0x5E, 0xCA, 0x71, 0x36, 0x4F, 0xE1,  // .B^.q6O.
                        /* 03A8 */  0xDB, 0xDB, 0x40, 0xDC, 0x42, 0xD9, 0x69, 0xFE,  // ..@.B.i.
                        /* 03B0 */  0x0C, 0xD6, 0x3A, 0xF9, 0x91, 0x10, 0x1D, 0xCD,  // ..:.....
                        /* 03B8 */  0x83, 0x4E, 0x57, 0xC0, 0xA9, 0xDC, 0xD0, 0x6E,  // .NW....n
                        /* 03C0 */  0xDA, 0x7E, 0x0B, 0x27, 0x23, 0xDE, 0x3D, 0xC1,  // .~.'#.=.
                        /* 03C8 */  0x56, 0xF0, 0xFF, 0x8B, 0x62, 0xBC, 0xB9, 0x37,  // V...b..7
                        /* 03D0 */  0xCC, 0x2A, 0x39, 0x37, 0x67, 0x49, 0x32, 0x56,  // .*97gI2V
                        /* 03D8 */  0x75, 0x5E, 0xFB, 0x98, 0xD6, 0x30, 0x38, 0x17,  // u^...08.
                        /* 03E0 */  0xD9, 0x09, 0x07, 0x32, 0x10, 0x9E, 0x0A, 0x1F,  // ...2....
                        /* 03E8 */  0xEC, 0xE2, 0x4F, 0xAC, 0x59, 0x77, 0xB2, 0x99,  // ..O.Yw..
                        /* 03F0 */  0x14, 0x96, 0x0E, 0x1A, 0xDB, 0x09, 0xEB, 0xA0,  // ........
                        /* 03F8 */  0x2F, 0x60, 0xD0, 0x8A, 0x73, 0x6B, 0x8C, 0x25,  // /`..sk.%
                        /* 0400 */  0x10, 0xBF, 0xC1, 0xD3, 0xA0, 0x68, 0x36, 0x0C,  // .....h6.
                        /* 0408 */  0x60, 0x10, 0x1E, 0xF9, 0x4D, 0xDB, 0x19, 0x70,  // `...M..p
                        /* 0410 */  0x45, 0xD3, 0xD7, 0xB5, 0xBE, 0xA4, 0x03, 0x35,  // E......5
                        /* 0418 */  0x0B, 0x3D, 0x6E, 0xA1, 0x49, 0xB0, 0x3D, 0x9B,  // .=n.I.=.
                        /* 0420 */  0x48, 0xC4, 0xBC, 0xBE, 0xA4, 0x56, 0x0E, 0xA8,  // H....V..
                        /* 0428 */  0x6A, 0x0B, 0xB1, 0x44, 0xD0, 0x07, 0x21, 0x08,  // j..D..!.
                        /* 0430 */  0x43, 0x66, 0x42, 0x02, 0x30, 0xCE, 0x33, 0x25,  // CfB.0.3%
                        /* 0438 */  0xDD, 0x7B, 0xA8, 0x67, 0x7D, 0x8A, 0x54, 0x5B,  // .{.g}.T[
                        /* 0440 */  0xB4, 0xDD, 0x3B, 0x8D, 0xE8, 0xE0, 0x56, 0x54,  // ..;...VT
                        /* 0448 */  0x4E, 0x50, 0x34, 0x47, 0x11, 0xEF, 0x2F, 0x9F,  // NP4G../.
                        /* 0450 */  0x6F, 0xD3, 0x7C, 0xAF, 0xBE, 0x8D, 0x5D, 0xE4,  // o.|...].
                        /* 0458 */  0x34, 0x16, 0x64, 0xE0, 0x55, 0x0E, 0x65, 0x17,  // 4.d.U.e.
                        /* 0460 */  0xDF, 0xE2, 0x50, 0x9D, 0x33, 0x02, 0xBA, 0xB7,  // ..P.3...
                        /* 0468 */  0x23, 0x79, 0xCE, 0x2B, 0x2D, 0x87, 0x51, 0x48,  // #y.+-.QH
                        /* 0470 */  0x0F, 0x35, 0x13, 0x21, 0x7B, 0xDB, 0x63, 0x32,  // .5.!{.c2
                        /* 0478 */  0xE9, 0xB2, 0x48, 0xB0, 0xAD, 0x5A, 0x71, 0x6B,  // ..H..Zqk
                        /* 0480 */  0xE4, 0x81, 0xC3, 0xA0, 0xB7, 0xE2, 0x88, 0x9E,  // ........
                        /* 0488 */  0x3A, 0xFC, 0xAD, 0x4B, 0x16, 0x62, 0x5C, 0x36,  // :..K.b\6
                        /* 0490 */  0x21, 0x87, 0x5E, 0xCD, 0x77, 0xDF, 0xF9, 0x7B,  // !.^.w..{
                        /* 0498 */  0x2C, 0xB5, 0x71, 0x49, 0xB0, 0xFF, 0x83, 0x1B,  // ,.qI....
                        /* 04A0 */  0xE5, 0xFE, 0x11, 0xF6, 0x97, 0x51, 0x0A, 0xC7,  // .....Q..
                        /* 04A8 */  0x92, 0x34, 0x68, 0xA0, 0x5C, 0x43, 0x95, 0x0A,  // .4h.\C..
                        /* 04B0 */  0x5E, 0x2A, 0xDC, 0xD4, 0x52, 0xFF, 0xEA, 0x45,  // ^*..R..E
                        /* 04B8 */  0x15, 0xE5, 0x5A, 0xD8, 0xF7, 0x5A, 0xF1, 0xB6,  // ..Z..Z..
                        /* 04C0 */  0xEA, 0x15, 0x21, 0x6A, 0xAE, 0x65, 0x43, 0x1F,  // ..!j.eC.
                        /* 04C8 */  0xB3, 0x56, 0x9C, 0x46, 0x14, 0xA5, 0x59, 0x90,  // .V.F..Y.
                        /* 04D0 */  0x50, 0xDB, 0xD9, 0x88, 0x60, 0x77, 0x4F, 0x3F,  // P...`wO?
                        /* 04D8 */  0x2B, 0xBE, 0x54, 0x51, 0xF8, 0xDE, 0x99, 0x77,  // +.TQ...w
                        /* 04E0 */  0xC4, 0x2D, 0xBB, 0xD3, 0x2B, 0xEF, 0x33, 0xFF,  // .-..+.3.
                        /* 04E8 */  0x83, 0x31, 0x42, 0x68, 0x0E, 0xAF, 0xDB, 0x61,  // .1Bh...a
                        /* 04F0 */  0xD6, 0xC0, 0x1F, 0x91, 0x92, 0xD5, 0x5E, 0xF9,  // ......^.
                        /* 04F8 */  0xFF, 0xF9, 0x03, 0xC6, 0x6B, 0x2A, 0xF0, 0xDE,  // ....k*..
                        /* 0500 */  0x9E, 0xC7, 0xE4, 0x32, 0xDC, 0x79, 0x96, 0xD0,  // ...2.y..
                        /* 0508 */  0x5D, 0x87, 0x8F, 0xDC, 0x6D, 0xD0, 0x80, 0x0F,  // ]...m...
                        /* 0510 */  0xFC, 0x42, 0x12, 0x07, 0xA6, 0xA8, 0x35, 0xB0,  // .B....5.
                        /* 0518 */  0x87, 0xEC, 0x9E, 0xF8, 0xFF, 0x65, 0x84, 0xF1,  // .....e..
                        /* 0520 */  0x38, 0x81, 0xB1, 0x46, 0xC8, 0xC2, 0xD9, 0xC8,  // 8..F....
                        /* 0528 */  0x83, 0x31, 0x5B, 0xA1, 0xD3, 0xCB, 0x6A, 0x13,  // .1[...j.
                        /* 0530 */  0x0E, 0x21, 0x83, 0xF6, 0x74, 0x4D, 0x72, 0xC7,  // .!..tMr.
                        /* 0538 */  0xD9, 0x76, 0x3F, 0x0C, 0x48, 0xBA, 0xA7, 0xE3,  // .v?.H...
                        /* 0540 */  0xAF, 0xA9, 0xAB, 0x74, 0x65, 0x18, 0x4E, 0xC5,  // ...te.N.
                        /* 0548 */  0x57, 0xB9, 0x11, 0x2E, 0x04, 0x1A, 0x4F, 0x3C,  // W.....O<
                        /* 0550 */  0xD7, 0xDB, 0xC4, 0x3C, 0x88, 0xC4, 0x99, 0xD7,  // ...<....
                        /* 0558 */  0xC3, 0x8C, 0xDB, 0xE4, 0xFA, 0x86, 0x4C, 0x17,  // ......L.
                        /* 0560 */  0x4B, 0x7D, 0xB3, 0x02, 0xA8, 0xF0, 0x43, 0x3E,  // K}....C>
                        /* 0568 */  0x98, 0x09, 0x20, 0x89, 0xA5, 0xDD, 0xF6, 0x42,  // .. ....B
                        /* 0570 */  0xDC, 0x6E, 0x41, 0xDD, 0x47, 0x05, 0xE9, 0xA6,  // .nA.G...
                        /* 0578 */  0x37, 0x82, 0xF6, 0x92, 0x40, 0xDD, 0xDB, 0x43,  // 7...@..C
                        /* 0580 */  0x5C, 0x3C, 0x1C, 0x6A, 0xB6, 0x99, 0x82, 0x1D,  // \<.j....
                        /* 0588 */  0xA4, 0xB7, 0x53, 0x9A, 0x3F, 0x52, 0xD6, 0x3C,  // ..S.?R.<
                        /* 0590 */  0x1B, 0x85, 0xCB, 0x0D, 0xA7, 0x8F, 0xD9, 0x6B,  // .......k
                        /* 0598 */  0x1D, 0xC2, 0xB3, 0xC4, 0xFF, 0x8C, 0xF7, 0x05,  // ........
                        /* 05A0 */  0x7F, 0xD4, 0xA3, 0xCA, 0xA7, 0x7B, 0x95, 0x45,  // .....{.E
                        /* 05A8 */  0x3E, 0xFA, 0x99, 0xE9, 0xB2, 0xAC, 0x91, 0xAA,  // >.......
                        /* 05B0 */  0x0D, 0xBA, 0x7A, 0x00, 0x3B, 0x7D, 0x2B, 0xA6,  // ..z.;}+.
                        /* 05B8 */  0x2B, 0xF3, 0x05, 0x08, 0x74, 0xC1, 0x6F, 0x17,  // +...t.o.
                        /* 05C0 */  0x5C, 0x13, 0xCA, 0xB8, 0x98, 0xAA, 0xEA, 0x98,  // \.......
                        /* 05C8 */  0xA0, 0xD6, 0x70, 0xF9, 0x0C, 0xD1, 0xC5, 0x12,  // ..p.....
                        /* 05D0 */  0xAE, 0x02, 0x3C, 0xD5, 0x7B, 0xCE, 0x14, 0x06,  // ..<.{...
                        /* 05D8 */  0xE7, 0xAD, 0xB8, 0xE7, 0xC6, 0xCD, 0x3B, 0xD4,  // ......;.
                        /* 05E0 */  0x3C, 0x5C, 0x1F, 0x3F, 0xED, 0x9E, 0x80, 0xBD,  // <\.?....
                        /* 05E8 */  0x17, 0xAF, 0x2D, 0xA3, 0x8C, 0x84, 0x7E, 0x91,  // ..-...~.
                        /* 05F0 */  0x29, 0x6A, 0xC2, 0xEC, 0xF3, 0x56, 0x9F, 0xAD,  // )j...V..
                        /* 05F8 */  0xE5, 0x6A, 0xA1, 0x66, 0x1E, 0x5F, 0xE2, 0x03,  // .j.f._..
                        /* 0600 */  0x39, 0xD9, 0x74, 0xCA, 0x2F, 0x38, 0x8B, 0x20,  // 9.t./8. 
                        /* 0608 */  0x9E, 0xDE, 0x00, 0x02, 0xCF, 0x6A, 0x8E, 0xCA,  // .....j..
                        /* 0610 */  0x4F, 0x78, 0x55, 0x5E, 0x98, 0x22, 0xE6, 0x9E,  // OxU^."..
                        /* 0618 */  0xF1, 0x10, 0xD0, 0x23, 0x92, 0xB3, 0x91, 0x07,  // ...#....
                        /* 0620 */  0x4D, 0xE1, 0xC6, 0x43, 0x93, 0x41, 0x79, 0x78,  // M..C.Ayx
                        /* 0628 */  0x8B, 0x67, 0x62, 0x06, 0xFD, 0xE4, 0x3C, 0xB0,  // .gb...<.
                        /* 0630 */  0x42, 0x6A, 0x38, 0x83, 0xE5, 0x01, 0x05, 0xF1,  // Bj8.....
                        /* 0638 */  0x72, 0x78, 0x68, 0xFD, 0x1B, 0x65, 0xD3, 0xDE,  // rxh..e..
                        /* 0640 */  0x9A, 0xD3, 0xA5, 0x28, 0x5E, 0x26, 0xF6, 0x16,  // ...(^&..
                        /* 0648 */  0xDB, 0x05, 0x41, 0x9E, 0xF9, 0x0E, 0x9B, 0xD0,  // ..A.....
                        /* 0650 */  0xF6, 0xC4, 0x71, 0x07, 0x15, 0x7D, 0xD8, 0xAB,  // ..q..}..
                        /* 0658 */  0x03, 0x13, 0x09, 0x10, 0x09, 0xEE, 0x0A, 0xA1,  // ........
                        /* 0660 */  0xC9, 0xE9, 0xBB, 0xE9, 0xCC, 0x5D, 0x6B, 0x9A,  // .....]k.
                        /* 0668 */  0xE5, 0x8C, 0xF2, 0xE2, 0x36, 0x8D, 0x8C, 0x9A,  // ....6...
                        /* 0670 */  0x72, 0x65, 0x62, 0x01, 0x2A, 0x30, 0x9E, 0x0C,  // reb.*0..
                        /* 0678 */  0x17, 0xD7, 0xAB, 0xC7, 0x7B, 0xD3, 0xD1, 0x5C,  // ....{..\
                        /* 0680 */  0x88, 0x44, 0xC8, 0x0A, 0x6B, 0xEA, 0x82, 0x79,  // .D..k..y
                        /* 0688 */  0x86, 0xB7, 0x96, 0xFC, 0x97, 0xE0, 0xF1, 0xDC,  // ........
                        /* 0690 */  0x9A, 0x86, 0x09, 0x5C, 0x47, 0x97, 0xCF, 0x26,  // ...\G..&
                        /* 0698 */  0xA8, 0x8C, 0x6E, 0x46, 0xA8, 0xBF, 0x39, 0x61,  // ..nF..9a
                        /* 06A0 */  0xE2, 0x55, 0x60, 0xB1, 0x26, 0x48, 0xBD, 0xEF,  // .U`.&H..
                        /* 06A8 */  0x98, 0x6D, 0xEB, 0xFA, 0x80, 0xCE, 0x3A, 0x5E,  // .m....:^
                        /* 06B0 */  0x89, 0xE8, 0x8C, 0x80, 0xDD, 0x25, 0x59, 0x1E,  // .....%Y.
                        /* 06B8 */  0x2B, 0x2B, 0xA2, 0x01, 0xDD, 0xE8, 0x56, 0x7A,  // ++....Vz
                        /* 06C0 */  0x47, 0x4F, 0x34, 0x54, 0xDE, 0x88, 0x96, 0x96,  // GO4T....
                        /* 06C8 */  0x2D, 0xEA, 0xCB, 0xCD, 0xF8, 0x14, 0xB9, 0x90,  // -.......
                        /* 06D0 */  0xC1, 0xD2, 0xF2, 0xC0, 0x3C, 0xDC, 0x2C, 0xA3,  // ....<.,.
                        /* 06D8 */  0x8F, 0x8B, 0x15, 0x60, 0xEC, 0x5A, 0xC8, 0x0D,  // ...`.Z..
                        /* 06E0 */  0x7E, 0xEC, 0xA9, 0x77, 0xCF, 0xC9, 0x78, 0x78,  // ~..w..xx
                        /* 06E8 */  0x56, 0xAA, 0x54, 0x36, 0x0D, 0xC7, 0xEA, 0x09,  // V.T6....
                        /* 06F0 */  0x33, 0x81, 0xC9, 0x6E, 0x38, 0xA8, 0x28, 0xD3,  // 3..n8.(.
                        /* 06F8 */  0xB8, 0xEF, 0x9F, 0xD4, 0x77, 0xE2, 0x80, 0x7C,  // ....w..|
                        /* 0700 */  0x15, 0xC2, 0x80, 0x89, 0xE9, 0xC4, 0xD6, 0x13,  // ........
                        /* 0708 */  0x8C, 0x1A, 0x1E, 0x00, 0x4E, 0xD4, 0xBC, 0x40,  // ....N..@
                        /* 0710 */  0x28, 0xAB, 0xFA, 0x0A, 0x80, 0xB0, 0x73, 0xAE,  // (.....s.
                        /* 0718 */  0x67, 0xD5, 0x22, 0x76, 0x2C, 0x23, 0x1E, 0xD1,  // g."v,#..
                        /* 0720 */  0x02, 0xA4, 0x04, 0xE3, 0xA7, 0x9C, 0x57, 0x8B,  // ......W.
                        /* 0728 */  0x74, 0x93, 0x7E, 0xDA, 0x72, 0x70, 0xF7, 0x54,  // t.~.rp.T
                        /* 0730 */  0x66, 0x30, 0x27, 0x07, 0xB2, 0x58, 0xFB, 0xC4,  // f0'..X..
                        /* 0738 */  0xDB, 0x20, 0x4D, 0xF8, 0x38, 0xEC, 0xA1, 0xB8,  // . M.8...
                        /* 0740 */  0x6A, 0xDF, 0x6F, 0xA6, 0x7F, 0x5E, 0x5D, 0x15,  // j.o..^].
                        /* 0748 */  0x87, 0x8A, 0xBA, 0xB2, 0xC0, 0x10, 0x83, 0x46,  // .......F
                        /* 0750 */  0xEE, 0xC6, 0x50, 0xAB, 0x16, 0xCE, 0xB7, 0xBD,  // ..P.....
                        /* 0758 */  0x47, 0x57, 0xC1, 0x30, 0x53, 0xD7, 0xAC, 0x2B,  // GW.0S..+
                        /* 0760 */  0xF7, 0xD2, 0x32, 0xAC, 0xF7, 0x65, 0x30, 0xE5,  // ..2..e0.
                        /* 0768 */  0x26, 0x7F, 0x57, 0x07, 0x05, 0xA4, 0x75, 0xBF,  // &.W...u.
                        /* 0770 */  0xE2, 0x08, 0xD0, 0x93, 0xA9, 0x64, 0xD6, 0x93,  // .....d..
                        /* 0778 */  0xB0, 0xA3, 0x38, 0x23, 0xFF, 0xF5, 0x6E, 0xAE,  // ..8#..n.
                        /* 0780 */  0x79, 0x3B, 0x3D, 0xE2, 0x60, 0xEF, 0x69, 0x12,  // y;=.`.i.
                        /* 0788 */  0xBB, 0x0A, 0x12, 0x3D, 0x2A, 0x2A, 0xD2, 0xC9,  // ...=**..
                        /* 0790 */  0x52, 0xCB, 0x05, 0x62, 0x0A, 0x39, 0x08         // R..b.9.
                    }
                })
            }
        }

        Method (IMOK, 1, NotSerialized)
        {
            Local1 = ((Arg0 << 0x10) & 0x03FF0000)
            Local1 |= 0x07
            \_SB.PC00.LPCB.EC.HKEY.DYTC (Local1)
            Return (Arg0)
        }
    }
}

