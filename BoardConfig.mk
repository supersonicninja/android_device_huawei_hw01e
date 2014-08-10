USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/huawei/hw01e/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := U9501L
TARGET_OTA_ASSERT_DEVICE := U9501L,u9501l,hw01e,HW01E,HW-01E,hw-01e

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CPU_VARIANT := krait
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_SMP := true
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64


#QCOM HARDWARE
TARGET_QCOM_AUDIO_VARIANT := legacy
TARGET_QCOM_DISPLAY_VARIANT := legacy
TARGET_QCOM_MEDIA_VARIANT := legacy

BOARD_EGL_CFG := device/huawei/hw01e/egl.cfg


BOARD_KERNEL_CMDLINE := androidboot.hardware=huawei user_debug=31 kgsl.mmutype=gpummu
BOARD_KERNEL_BASE := 0x80200000
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x1400000
BOARD_KERNEL_PAGESIZE := 2048

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 805306368
BOARD_USERDATAIMAGE_PARTITION_SIZE := 6236912640
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3
TARGET_KERNEL_CUSTOM_TOOLCHAIN_SUFFIX := arm-eabi-
TARGET_KERNEL_SOURCE := kernel/huawei/msm8960
TARGET_KERNEL_CONFIG := hw01e_cyanogenmod_defconfig

BOARD_HAS_NO_SELECT_BUTTON := true
