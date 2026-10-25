/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20260408 (64-bit version)
 * Copyright (c) 2000 - 2026 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/daniel/Desktop/X1C1360pTahoe/hw/acpi/oem/SSDT6.aml
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000F2 (242)
 *     Revision         0x02
 *     Checksum         0xC0
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "PID1Ssdt"
 *     OEM Revision     0x00000010 (16)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200717 (538969879)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "PID1Ssdt", 0x00000010)
{
    External (_SB_.GGIV, MethodObj)    // 1 Arguments
    External (_SB_.PC00.LPCB.EC__, DeviceObj)

    Scope (\_SB.PC00.LPCB.EC)
    {
        Device (LHKF)
        {
            Name (_HID, EisaId ("LEN0130"))  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }
    }

    Scope (\_SB.PC00.LPCB.EC)
    {
        Device (LISD)
        {
            Name (_HID, EisaId ("LEN0110"))  // _HID: Hardware ID
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If ((\_SB.GGIV (0x09070003) == Zero))
                {
                    _HID = 0x1301AE30
                }
                Else
                {
                    _HID = 0x1201AE30
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }
    }
}

