ifeq ($(WITH_VENDOR_IMAGE),true)

### LIGHTS
PRODUCT_PACKAGES += \
    lights.lilac

### POWER
PRODUCT_PACKAGES += \
    power.lilac

### NFC
PRODUCT_PACKAGES += \
    nfc_nci.lilac

endif

PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0
