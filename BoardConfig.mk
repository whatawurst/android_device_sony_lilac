#
# Copyright (C) 2017 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

### INHERIT FROM YOSHINO-COMMON
include device/sony/yoshino-common/BoardConfigPlatform.mk

DEVICE_PATH := device/sony/lilac

PRODUCT_PLATFORM := yoshino

### BOOTLOADER
TARGET_BOOTLOADER_BOARD_NAME := G8441

### KERNEL
BOARD_KERNEL_CMDLINE += androidboot.hardware=lilac
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz-dtb

### PARTITIONS
# See also /proc/partitions on the device
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 5242880000
# Reserve space for data encryption (23753875456-32768)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 23753842688

# VENDOR
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_PARTITION_SIZE := 1610612736
TARGET_COPY_OUT_VENDOR := vendor

### DISPLAY
TARGET_SCREEN_DENSITY := 320

### TWRP

## FILE BASED ENCRYPTION
TW_INCLUDE_CRYPTO_FBE := true

## FSTAB
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/twrp.fstab
