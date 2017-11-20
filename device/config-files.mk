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
