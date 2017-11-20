### SENSORS
ifeq ($(WITH_VENDOR_IMAGE),true)
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/config/sensors/hals.conf:vendor/etc/sensors/hals.conf \
    $(DEVICE_PATH)/config/sensors/sensor_def_qcomdev.conf:vendor/etc/sensors/sensor_def_qcomdev.conf \
    $(DEVICE_PATH)/config/sensors/sensor_def_somc_platform.conf:vendor/etc/sensors/sensor_def_somc_platform.conf \
    $(DEVICE_PATH)/config/sensors/sensor_def_somc_product.conf:vendor/etc/sensors/sensor_def_somc_product.conf
endif
