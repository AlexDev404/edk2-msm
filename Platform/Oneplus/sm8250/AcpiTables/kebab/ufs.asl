//
// OnePlus 8T (kebab) UFS Controller
// kebab has UFS 3.1 storage
//
Device (UFS0)
{
    Method(_STA, 0)
    {
        Return (0xF) // Enabled
    }

    Name (_HID, "QCOM24A5")
    Alias(\_SB.EMUL, EMUL)
    Name (_UID, 0)
    Name (_CCA, 0) // Cache coherent

    Method (_CRS, 0x0, NotSerialized) {
        Name (RBUF, ResourceTemplate ()
        {
            // UFS register address space (same for SM8250)
            Memory32Fixed (ReadWrite, 0x1D84000, 0x1C000)
            Interrupt(ResourceConsumer, Level, ActiveHigh, Exclusive, , , ) {297}
        })
        Return (RBUF)
    }

    // UFS Device - kebab has Samsung UFS 3.1
    Device (DEV0)
    {
        Method (_ADR)
        {
            Return (8) // LUN 0
        }

        // Non-removable storage
        Method (_RMV)
        {
            Return (0)
        }
    }
}
