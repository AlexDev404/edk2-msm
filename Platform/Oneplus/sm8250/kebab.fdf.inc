// Device-specific BSP DXEs extracted from kebab XBL firmware
// This includes common SM8250 drivers (which includes DALSys)

// Essential drivers (extracted from XBL)
#FILE DRIVER = 8e9bd160-b184-11df-94e2-0800200c9a66 {
#    SECTION DXE_DEPEX = Platform/EFI_Binaries/Drivers/Devices/kebab/DALSys/DALSys.depex
#    SECTION PE32 = Platform/EFI_Binaries/Drivers/Devices/kebab/DALSys/DALSys.efi
#    SECTION UI = "DALSys"
#}

FILE DRIVER = 5bd181db-0487-4f1a-ae73-820e165611b3 {
    SECTION DXE_DEPEX = Platform/EFI_Binaries/Drivers/Devices/kebab/ButtonsDxe/ButtonsDxe.depex
    SECTION PE32 = Platform/EFI_Binaries/Drivers/Devices/kebab/ButtonsDxe/ButtonsDxe.efi
    SECTION UI = "ButtonsDxe"
}

FILE DRIVER = 4138022f-06c7-4f79-9c94-7e33b511a4e7 {
    SECTION DXE_DEPEX = Platform/EFI_Binaries/Drivers/Devices/kebab/DisplayDxe/DisplayDxe.depex
    SECTION PE32 = Platform/EFI_Binaries/Drivers/Devices/kebab/DisplayDxe/DisplayDxe.efi
    SECTION UI = "DisplayDxe"
}

FILE DRIVER = 68a710ab-a58d-4c0b-be1e-5f6ee2c36ad8 {
    SECTION DXE_DEPEX = Platform/EFI_Binaries/Drivers/Devices/kebab/OplusProject/OplusProject.depex
    SECTION PE32 = Platform/EFI_Binaries/Drivers/Devices/kebab/OplusProject/OplusProject.efi
    SECTION UI = "OplusProject"
}

#FILE DRIVER = 0D35CD8E-97EA-4F9A-96AF-0F0D89F76567 {
#    SECTION DXE_DEPEX = Platform/EFI_Binaries/Drivers/Devices/kebab/UFSDxe/UFSDxe.depex
#    SECTION PE32 = Platform/EFI_Binaries/Drivers/Devices/kebab/UFSDxe/UFSDxe.efi
#    SECTION UI = "UFSDxe"
#}

// ACPI Tables - Use SM8250 common tables + minimal kebab DSDT
FILE FREEFORM = 7E374E25-8E01-4FEE-87F2-390C23C606CD {   
  SECTION RAW = Platform/Oneplus/sm8250/AcpiTables/kebab/DSDT.aml
  SECTION RAW = Silicon/Qualcomm/sm8250/AcpiTables/Madt.aml
  SECTION RAW = Silicon/Qualcomm/sm8250/AcpiTables/Facp.aml
  SECTION RAW = Silicon/Qualcomm/sm8250/AcpiTables/Gtdt.aml
  SECTION RAW = Silicon/Qualcomm/sm8250/AcpiTables/bgrt.aml
  SECTION UI = "AcpiTables"
}

// Device tree blob (main hardware description for kebab)
FILE FREEFORM = 25462CDA-221F-47DF-AC1D-259CFAA4E326 {
  SECTION RAW = Platform/Oneplus/sm8250/FdtBlob/sm8250-oneplus-kebab.dtb
}

// Configuration files (extracted from XBL)
FILE FREEFORM = 45FE4B7C-150C-45DA-A021-4BEB2048EC6F {
  SECTION UI = "QcomChargerCfg.cfg"
  SECTION RAW = Platform/Oneplus/sm8250/ConfigFiles/kebab/QcomChargerCfg.cfg
}