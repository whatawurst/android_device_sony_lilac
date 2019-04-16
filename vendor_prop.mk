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

### PERFORMANCE
# Library for power balancing
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=libqti-perfd-client.so

# Enable sched colocation
PRODUCT_PROPERTY_OVERRIDES += \
    sched.colocate.enable=1

# Min/max cpu in core control
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.core_ctl_min_cpu=2 \
    ro.vendor.qti.core_ctl_max_cpu=4

### Radio DPM
PRODUCT_PROPERTY_OVERRIDES += \
    persist.dpm.feature=3

# Nfc
PRODUCT_PROPERTY_OVERRIDES += \
    ro.nfc.port=I2C \
    ro.nfc.se.sim.enable=true \
    ro.nfc.se.smx.enable=false \
    ro.nfc.on.default=false \
    ro.hardware.nfc_nci=nqx.default \
    ro.vendor.nfc.ko=nxp_pn553_nfc
