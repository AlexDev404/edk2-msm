[Defines]
  VENDOR_NAME                    = Oneplus
  PLATFORM_NAME                  = kebab
  PLATFORM_GUID                  = 28f1a3bf-193a-47e3-a7b9-5a435eaab2ee
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010019
  OUTPUT_DIRECTORY               = Build/$(PLATFORM_NAME)
  SUPPORTED_ARCHITECTURES        = AARCH64
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = Platform/Qualcomm/sm8250/sm8250.fdf
  DEVICE_DXE_FV_COMPONENTS       = Platform/Oneplus/sm8250/kebab.fdf.inc

!include Platform/Qualcomm/sm8250/sm8250.dsc

[BuildOptions.common]
  GCC:*_*_AARCH64_CC_FLAGS = -DENABLE_SIMPLE_INIT -DENABLE_LINUX_SIMPLE_MASS_STORAGE -DOPLUS_FEATURE_CHG_BASIC

[PcdsFixedAtBuild.common]
  # Display Configuration for OnePlus 8T (kebab)
  gQcomTokenSpaceGuid.PcdMipiFrameBufferWidth|1080
  gQcomTokenSpaceGuid.PcdMipiFrameBufferHeight|2400

  # Simple Init (using DPI from BoardConfig.mk)
  gSimpleInitTokenSpaceGuid.PcdGuiDefaultDPI|450

  # Device Information
  gRenegadePkgTokenSpaceGuid.PcdDeviceVendor|"OnePlus"
  gRenegadePkgTokenSpaceGuid.PcdDeviceProduct|"8T"
  gRenegadePkgTokenSpaceGuid.PcdDeviceCodeName|"kebab"

  # Processor Information (SM8250/Snapdragon 865)
  gsm8250PkgTokenSpaceGuid.PcdSmbiosProcessorModel|"Snapdragon (TM) 865 @ 2.84 GHz"

  # Memory Layout (from uefipil.cfg)
  gQcomTokenSpaceGuid.PcdAdspMemoryBase|0x8A100000
  gQcomTokenSpaceGuid.PcdAdspMemorySize|0x01D00000
  gQcomTokenSpaceGuid.PcdSlpiMemoryBase|0x88C00000  
  gQcomTokenSpaceGuid.PcdSlpiMemorySize|0x01500000
  gQcomTokenSpaceGuid.PcdCdspMemoryBase|0x87800000
  gQcomTokenSpaceGuid.PcdCdspMemorySize|0x01400000

  # Charging Configuration (from QcomChargerCfg.cfg)
  gQcomTokenSpaceGuid.PcdBatteryVoltageMax|4373
  gQcomTokenSpaceGuid.PcdBatteryChargingCurrent|500
  gQcomTokenSpaceGuid.PcdBatteryBootThreshold|3400