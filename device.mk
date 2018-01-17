### PLATFORM
$(call inherit-product, device/sony/yoshino/platform.mk)
### PROPRIETARY VENDOR FILES
$(call inherit-product, vendor/sony/lilac/lilac-vendor.mk)

ifeq ($(WITH_MICROG),true)
$(call inherit-product, vendor/microg/microg-vendor.mk)
endif

### DALVIK/HWUI
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

DEVICE_PATH := device/sony/lilac

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay

include $(DEVICE_PATH)/device/*.mk
include $(DEVICE_PATH)/vendor_prop.mk
