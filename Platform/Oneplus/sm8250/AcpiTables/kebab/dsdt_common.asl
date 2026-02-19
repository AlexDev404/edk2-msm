//
// OnePlus 8T (kebab) - Device-specific common definitions
// Based on instantnoodlp with kebab-specific modifications
//

Name(SOID, 0x01030000)          // SM8250 Chip Id (Snapdragon 865)
Name(STOR, 0x1)                 // Boot options: 1 = UFS
Name(SIDS, "356100010000000")   // SM8250 Chip ID string
Name(SIDV, 0x00020000)          // Chip Version: v2.0
Name(SVMJ, 0x0002)              // Major version: 2
Name(SVMI, 0x0000)              // Minor version: 0
Name(SDFE, 0x001C)              // SM8250 Family enum
Name(SFES, "356100010000000")   // Family string
Name(SIDM, 0xffffffff)          // Modem Support bit field
Name(SUFS, 0x0)                 // Secondary UFS: disabled
Name(PUS3, 0x1)                 // Primary UFS 3.0: enabled (kebab has UFS 3.1)
Name(SUS3, 0x0)                 // Secondary UFS 3.0: disabled
Name(SIDT, 0x00000000)          // Chip Tier: premium
Name(SJTG, 0x5018E0E1)          // JTAG ID for SM8250
Name(SOSN, 0x0000000000000000)  // Chip Serial Number (placeholder)
Name(PLST, 0x00000008)          // MTP platform subtype
Name(EMUL, 0x00000000)          // Real hardware (not emulation)

// Shared memory regions (from uefipil.cfg values)
Name (RMTB, 0x86900000)         // RemoteFS shared memory base
Name (RMTX, 0x00500000)         // RemoteFS shared memory length (5MB)
Name (RFMB, 0x87800000)         // RFSA MPSS shared memory base
Name (RFMS, 0x01400000)         // RFSA MPSS shared memory length (20MB)
Name (RFAB, 0x88C00000)         // RFSA ADSP shared memory base
Name (RFAS, 0x01500000)         // RFSA ADSP shared memory length (21MB)

Name (TCMA, 0x80B00000)         // TrEE Carveout Memory Address
Name (TCML, 0x02F00000)         // TrEE Carveout Memory Length
Name (SOSI, 0x146BF000)         // SoCInfo shared memory region
Name (PRP1, 0x00000001)         // PCIe root port 1 present
Name (SKUV, 0x1)                // SKU Version

Name (ESNL, 20)                 // External SoC name limit
Name (DBFL, 23)                 // Buffer length

// Include other ASL components
// Include("audio.asl")      // Audio support
// Include("pmic_core.asl")  // PMIC driver
// Include("buses.asl")      // I2C/SPI buses
// Include("qcgpio.asl")     // GPIO controller
