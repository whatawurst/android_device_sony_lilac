# Disable ZSL mode in camera
PRODUCT_PROPERTY_OVERRIDES += \
    camera.disable_zsl_mode=1

# Enable xfrm support
PRODUCT_PROPERTY_OVERRIDES += \
    ro.service.xrfm.supported=true \
    persist.service.xrfm.mode=1

# Path to frp partition
PRODUCT_PROPERTY_OVERRIDES += \
    ro.frp.pst=/dev/block/bootdevice/by-name/frp

# Library for power balancing
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=libqti-perfd-client.so
