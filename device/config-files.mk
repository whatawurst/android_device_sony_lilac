### SENSORS
ifeq ($(WITH_VENDOR_IMAGE),true)
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/config/sensors/hals.conf:vendor/etc/sensors/hals.conf \
    $(DEVICE_PATH)/config/sensors/sensor_def_qcomdev.conf:vendor/etc/sensors/sensor_def_qcomdev.conf \
    $(DEVICE_PATH)/config/sensors/sensor_def_somc_platform.conf:vendor/etc/sensors/sensor_def_somc_platform.conf \
    $(DEVICE_PATH)/config/sensors/sensor_def_somc_product.conf:vendor/etc/sensors/sensor_def_somc_product.conf

### AUDIO
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/config/audio/audio_output_policy.conf:vendor/etc/audio_output_policy.conf \
    $(DEVICE_PATH)/config/audio/audio_platform_info.xml:vendor/etc/audio_platform_info.xml \
    $(DEVICE_PATH)/config/audio/audio_platform_info_i2s.xml:vendor/etc/audio_platform_info_i2s.xml \
    $(DEVICE_PATH)/config/audio/audio_platform_info_i2s.xml:vendor/etc/audio_platform_info_i2s.xml \
    $(DEVICE_PATH)/config/audio/audio_policy_configuration.xml:vendor/etc/audio_policy_configuration.xml \
    $(DEVICE_PATH)/config/audio/audio_tuning_mixer.txt:vendor/etc/audio_tuning_mixer.txt \
    $(DEVICE_PATH)/config/audio/audio_tuning_mixer_tavil.txt:vendor/etc/audio_tuning_mixer_tavil.txt \
    $(DEVICE_PATH)/config/audio/graphite_ipc_platform_info.xml:vendor/etc/graphite_ipc_platform_info.xml \
    $(DEVICE_PATH)/config/audio/listen_platform_info.xml:vendor/etc/listen_platform_info.xml \
    $(DEVICE_PATH)/config/audio/mixer_paths.xml:vendor/etc/mixer_paths.xml \
    $(DEVICE_PATH)/config/audio/mixer_paths_dtp.xml:vendor/etc/mixer_paths_dtp.xml \
    $(DEVICE_PATH)/config/audio/mixer_paths_i2s.xml:vendor/etc/mixer_paths_i2s.xml \
    $(DEVICE_PATH)/config/audio/mixer_paths_qvr.xml:vendor/etc/mixer_paths_qvr.xml \
    $(DEVICE_PATH)/config/audio/mixer_paths_skuk.xml:vendor/etc/mixer_paths_skuk.xml \
    $(DEVICE_PATH)/config/audio/mixer_paths_tasha.xml:vendor/etc/mixer_paths_tasha.xml \
    $(DEVICE_PATH)/config/audio/mixer_paths_tavil.xml:vendor/etc/mixer_paths_tavil.xml \
    $(DEVICE_PATH)/config/audio/sound_trigger_mixer_paths.xml:vendor/etc/sound_trigger_mixer_paths.xml \
    $(DEVICE_PATH)/config/audio/sound_trigger_mixer_paths_wcd9330.xml:vendor/etc/sound_trigger_mixer_paths_wcd9330.xml \
    $(DEVICE_PATH)/config/audio/sound_trigger_mixer_paths_wcd9340.xml:vendor/etc/sound_trigger_mixer_paths_wcd9340.xml \
    $(DEVICE_PATH)/config/audio/sound_trigger_platform_info.xml:vendor/etc/sound_trigger_platform_info.xml

# Audio calibration
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/config/audio-calibration/Bluetooth_cal.acdb:vendor/etc/acdbdata/Bluetooth_cal.acdb \
    $(DEVICE_PATH)/config/audio-calibration/General_cal.acdb:vendor/etc/acdbdata/General_cal.acdb \
    $(DEVICE_PATH)/config/audio-calibration/Global_cal.acdb:vendor/etc/acdbdata/Global_cal.acdb \
    $(DEVICE_PATH)/config/audio-calibration/Handset_cal.acdb:vendor/etc/acdbdata/Handset_cal.acdb \
    $(DEVICE_PATH)/config/audio-calibration/Hdmi_cal.acdb:vendor/etc/acdbdata/Hdmi_cal.acdb \
    $(DEVICE_PATH)/config/audio-calibration/Headset_cal.acdb:vendor/etc/acdbdata/Headset_cal.acdb \
    $(DEVICE_PATH)/config/audio-calibration/Speaker_cal.acdb:vendor/etc/acdbdata/Speaker_cal.acdb
endif

### CAMERA
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/config/camera/camera_config.xml:system/etc/camera/camera_config.xml \
    $(DEVICE_PATH)/config/camera/csidtg_camera.xml:system/etc/camera/csidtg_camera.xml \
    $(DEVICE_PATH)/config/camera/csidtg_chromatix.xml:system/etc/camera/csidtg_chromatix.xml \
    $(DEVICE_PATH)/config/camera/imx214_chromatix.xml:system/etc/camera/imx214_chromatix.xml \
    $(DEVICE_PATH)/config/camera/imx230_chromatix.xml:system/etc/camera/imx230_chromatix.xml \
    $(DEVICE_PATH)/config/camera/imx230_qc2002_chromatix.xml:system/etc/camera/imx230_qc2002_chromatix.xml \
    $(DEVICE_PATH)/config/camera/imx230_qc2002_with_gyro_chromatix.xml:system/etc/camera/imx230_qc2002_with_gyro_chromatix.xml \
    $(DEVICE_PATH)/config/camera/imx258_bear_chromatix.xml:system/etc/camera/imx258_bear_chromatix.xml \
    $(DEVICE_PATH)/config/camera/imx258_chromatix.xml:system/etc/camera/imx258_chromatix.xml \
    $(DEVICE_PATH)/config/camera/imx258_lc898217xc_chromatix.xml:system/etc/camera/imx258_lc898217xc_chromatix.xml \
    $(DEVICE_PATH)/config/camera/imx258_mono_bear_chromatix.xml:system/etc/camera/imx258_mono_bear_chromatix.xml \
    $(DEVICE_PATH)/config/camera/imx258_mono_chromatix.xml:system/etc/camera/imx258_mono_chromatix.xml \
    $(DEVICE_PATH)/config/camera/imx298_chromatix.xml:system/etc/camera/imx298_chromatix.xml \
    $(DEVICE_PATH)/config/camera/imx298_gt24c64_chromatix.xml:system/etc/camera/imx298_gt24c64_chromatix.xml \
    $(DEVICE_PATH)/config/camera/imx318_chromatix.xml:system/etc/camera/imx318_chromatix.xml \
    $(DEVICE_PATH)/config/camera/imx362_chromatix.xml:system/etc/camera/imx362_chromatix.xml \
    $(DEVICE_PATH)/config/camera/imx362_chromatix_bear.xml:system/etc/camera/imx362_chromatix_bear.xml \
    $(DEVICE_PATH)/config/camera/imx362_gt24c64a_chromatix.xml:system/etc/camera/imx362_gt24c64a_chromatix.xml \
    $(DEVICE_PATH)/config/camera/imx376_chromatix.xml:system/etc/camera/imx376_chromatix.xml \
    $(DEVICE_PATH)/config/camera/imx378_chromatix.xml:system/etc/camera/imx378_chromatix.xml \
    $(DEVICE_PATH)/config/camera/ov12a10_chromatix.xml:system/etc/camera/ov12a10_chromatix.xml \
    $(DEVICE_PATH)/config/camera/ov13850_chromatix.xml:system/etc/camera/ov13850_chromatix.xml \
    $(DEVICE_PATH)/config/camera/ov13850_q13v06k_chromatix.xml:system/etc/camera/ov13850_q13v06k_chromatix.xml \
    $(DEVICE_PATH)/config/camera/ov13855_chromatix.xml:system/etc/camera/ov13855_chromatix.xml \
    $(DEVICE_PATH)/config/camera/ov13880_chromatix.xml:system/etc/camera/ov13880_chromatix.xml \
    $(DEVICE_PATH)/config/camera/ov2281_chromatix.xml:system/etc/camera/ov2281_chromatix.xml \
    $(DEVICE_PATH)/config/camera/ov2680_chromatix.xml:system/etc/camera/ov2680_chromatix.xml \
    $(DEVICE_PATH)/config/camera/ov4688_chromatix.xml:system/etc/camera/ov4688_chromatix.xml \
    $(DEVICE_PATH)/config/camera/ov5670_chromatix.xml:system/etc/camera/ov5670_chromatix.xml \
    $(DEVICE_PATH)/config/camera/ov5670_f5670bq_chromatix.xml:system/etc/camera/ov5670_f5670bq_chromatix.xml \
    $(DEVICE_PATH)/config/camera/ov5695_chromatix.xml:system/etc/camera/ov5695_chromatix.xml \
    $(DEVICE_PATH)/config/camera/ov7251_chromatix.xml:system/etc/camera/ov7251_chromatix.xml \
    $(DEVICE_PATH)/config/camera/ov8856_chromatix.xml:system/etc/camera/ov8856_chromatix.xml \
    $(DEVICE_PATH)/config/camera/ov8858_chromatix.xml:system/etc/camera/ov8858_chromatix.xml \
    $(DEVICE_PATH)/config/camera/ov8865_chromatix.xml:system/etc/camera/ov8865_chromatix.xml \
    $(DEVICE_PATH)/config/camera/s5k2l7_8953_chromatix.xml:system/etc/camera/s5k2l7_8953_chromatix.xml \
    $(DEVICE_PATH)/config/camera/s5k2l7_chromatix.xml:system/etc/camera/s5k2l7_chromatix.xml \
    $(DEVICE_PATH)/config/camera/s5k2l7sx_chromatix.xml:system/etc/camera/s5k2l7sx_chromatix.xml \
    $(DEVICE_PATH)/config/camera/s5k3l8_chromatix.xml:system/etc/camera/s5k3l8_chromatix.xml \
    $(DEVICE_PATH)/config/camera/s5k3l8_f3l8yam_chromatix.xml:system/etc/camera/s5k3l8_f3l8yam_chromatix.xml \
    $(DEVICE_PATH)/config/camera/s5k3l8_mono_chromatix.xml:system/etc/camera/s5k3l8_mono_chromatix.xml \
    $(DEVICE_PATH)/config/camera/s5k3m2xm_chromatix.xml:system/etc/camera/s5k3m2xm_chromatix.xml \
    $(DEVICE_PATH)/config/camera/s5k3m2xm_chromatix_bear.xml:system/etc/camera/s5k3m2xm_chromatix_bear.xml \
    $(DEVICE_PATH)/config/camera/s5k3m2xx_chromatix.xml:system/etc/camera/s5k3m2xx_chromatix.xml \
    $(DEVICE_PATH)/config/camera/s5k3m3sm_chromatix.xml:system/etc/camera/s5k3m3sm_chromatix.xml \
    $(DEVICE_PATH)/config/camera/s5k3p3sm_chromatix.xml:system/etc/camera/s5k3p3sm_chromatix.xml \
    $(DEVICE_PATH)/config/camera/s5k3p8sp_chromatix.xml:system/etc/camera/s5k3p8sp_chromatix.xml

### TERMANAGER
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/config/thermanager/thermanager.xml:system/etc/thermanager.xml
