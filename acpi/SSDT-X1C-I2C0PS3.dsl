/*
 * SSDT-X1C-I2C0PS3 - stop macOS from destroying the touchpad's I2C controller.
 *
 * ThinkPad X1 Carbon Gen 11. The touchpad (ELAN067C) hangs off \_SB.PC00.I2C0 (PCI 00:15.0), and the
 * DSDT gives that controller:
 *
 *     Method (_PS3) { SOD3 (IC00, One, One) }      and      Method (_PS0) { }        <- empty!
 *
 * SOD3 (DSDT.dsl:9341) writes PMEC = 0x03 at config offset 0x84, putting the controller in D3hot, and
 * then zeroes BAR0 at config offset 0x10, wiping its MMIO base address. Nothing in ACPI ever undoes
 * either: _PS0 is an empty method. So when macOS idles the controller the touchpad goes dead until
 * IOPCIFamily happens to re-assign BAR0 and D0 on its own - which shows up as a trackpad that
 * "stops tracking sometimes and starts again".
 *
 * Fix: under Darwin, _PS3 does nothing, so the controller stays in D0 and keeps its BAR. macOS still
 * manages PCI power itself through config space, which is non-destructive. Any other OS gets the
 * original method, which the config.plist patch renamed to XPS3.
 *
 * Requires the ACPI patch "X1C: I2C0 _PS3 to XPS3", whose 17-byte find pattern includes the IC00
 * nameseg and therefore matches this controller only - I2C1..I2C7 keep their own _PS3.
 */
DefinitionBlock ("", "SSDT", 2, "X1C", "I2C0PS3", 0x00000001)
{
    External (_SB_.PC00.I2C0, DeviceObj)
    External (_SB_.PC00.I2C0.XPS3, MethodObj)

    Scope (_SB.PC00.I2C0)
    {
        Method (_PS3, 0, NotSerialized)
        {
            If (!_OSI ("Darwin"))
            {
                XPS3 ()
            }
        }
    }
}
