USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/huawei/u9501l/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := U9501L
TARGET_OTA_ASSERT_DEVICE := U9501L,u9501l,hw01e,HW01E,HW-01E,hw-01e

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
TARGET_PREBUILT_KERNEL := device/huawei/u9501l/kernel

BOARD_HAS_NO_SELECT_BUTTON := true
