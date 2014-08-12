$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/huawei/hw01e/hw01e-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/hw01e/overlay

# Configs - ramdisk
PRODUCT_COPY_FILES += \
    device/huawei/hw01e/recovery.fstab:root/fstab.huawei \
    device/huawei/hw01e/ramdisk/init.huawei.rc:root/init.huawei.rc

LOCAL_PATH := device/huawei/hw01e
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_hw01e
PRODUCT_DEVICE := hw01e

