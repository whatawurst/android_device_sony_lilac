# Inherit device configuration
$(call inherit-product, device/sony/yoshino/platform.mk)
$(call inherit-product, device/sony/lilac/device.mk)

$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
# Inherit some common Lineage stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Build for a phone
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_lilac
PRODUCT_DEVICE := lilac
PRODUCT_BRAND := sony
PRODUCT_MODEL := G8441
PRODUCT_MANUFACTURER := sony

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=lilac
