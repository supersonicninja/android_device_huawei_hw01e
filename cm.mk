## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := u9501l

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/u9501l/device_u9501l.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := u9501l
PRODUCT_NAME := cm_u9501l
PRODUCT_BRAND := huawei
PRODUCT_MODEL := u9501l
PRODUCT_MANUFACTURER := huawei
