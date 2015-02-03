$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/huawei/hw01e/hw01e-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/hw01e/overlay

#Boot Animation
PRODUCT_COPY_FILES += vendor/cm/prebuilt/common/bootanimation/vertical-720x1280.zip:/system/media/bootanimation.zip

# Configs - ramdisk
PRODUCT_COPY_FILES += \
    device/huawei/hw01e/recovery.fstab:root/fstab.huawei \
    device/huawei/hw01e/ramdisk/init.custom.rc:root/init.rc \
    device/huawei/hw01e/ramdisk/ueventd.rc:root/ueventd.rc
#device/huawei/hw01e/ramdisk/init.rc:root/init.rc \

# EGL config
PRODUCT_COPY_FILES += \
device/huawei/hw01e/egl.cfg:system/lib/egl/egl.cfg

# Graphics
PRODUCT_PACKAGES += \
hwcomposer.msm8960 \
libgenlock \
libmemalloc \
liboverlay \
libQcomUI \
libtilerenderer
#copybit.msm8960 \
#gralloc.msm8960 \
#libI420colorconvert

# SDCard
PRODUCT_COPY_FILES += device/huawei/hw01e/vold.fstab:system/etc/vold.fstab

# Filesystem management tools
PRODUCT_PACKAGES += \
make_ext4fs \
setup_fs

PRODUCT_PROPERTY_OVERRIDES += \
ro.sf.lcd_density=320 \
persist.fuse_sdcard=false \
ro.config.internal_sdcard=yes \
persist.sys.main_storage=internal_sd

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

$(call inherit-product, frameworks/base/build/phone-xhdpi-1024-dalvik-heap.mk)
