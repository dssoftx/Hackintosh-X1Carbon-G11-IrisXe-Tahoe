
DefinitionBlock ("", "SSDT", 2, "CORP ", "SsdtEC", 0x00001000)
{
    External (\_SB.PC00.LPCB, DeviceObj)
    External (\_SB.PC00.LPCB.EC, DeviceObj)
    External (\_SB.PC00.LPCB.EC._STA, MethodObj)
    External (\_SB.PC00.LPCB.EC.XSTA, MethodObj)

    If (LAnd (CondRefOf (\_SB.PC00.LPCB.EC.XSTA), LNot (CondRefOf (\_SB.PC00.LPCB.EC._STA))))
    {
        Scope (\_SB.PC00.LPCB.EC)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (\_SB.PC00.LPCB.EC.XSTA ())
                }
            }
        }
    }

}