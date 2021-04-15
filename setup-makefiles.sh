#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

set -e

DEVICE=lilac
VENDOR=sony

INITIAL_COPYRIGHT_YEAR=2017

# Load extract_utils and do some sanity checks
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$MY_DIR" ]]; then MY_DIR="$PWD"; fi

LINEAGE_ROOT="$MY_DIR"/../../..

HELPER="$LINEAGE_ROOT"/vendor/lineage/build/tools/extract_utils.sh
if [ ! -f "$HELPER" ]; then
    echo "Unable to find helper script at $HELPER"
    exit 1
fi
. "$HELPER"

# Initialize the helper
setup_vendor "$DEVICE" "$VENDOR" "$LINEAGE_ROOT"

# Copyright headers and guards
write_headers

write_makefiles "$MY_DIR"/proprietary-files.txt true
write_makefiles "$MY_DIR"/proprietary-files-vendor.txt true

# Remove entry for Sony stock camera from Android.bp
sed -zi 's/\nandroid_app_import {\n\tname: "SemcCameraUI-xxhdpi-release",\n\towner: "sony",\n\tapk: "proprietary\/priv-app\/SemcCameraUI-xxhdpi-release\/SemcCameraUI-xxhdpi-release.apk",\n\tcertificate: "platform",\n\tdex_preopt: {\n\t\tenabled: false,\n\t},\n\tprivileged: true,\n}\n//g' "$ANDROIDBP"

# Add Sony stock camera to Android.mk for dex preopting
cat << EOF >> "$ANDROIDMK"
include \$(CLEAR_VARS)
LOCAL_MODULE := SemcCameraUI-xxhdpi-release
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := proprietary/priv-app/SemcCameraUI-xxhdpi-release/SemcCameraUI-xxhdpi-release.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
include \$(BUILD_PREBUILT)

EOF

# Finish
write_footers
