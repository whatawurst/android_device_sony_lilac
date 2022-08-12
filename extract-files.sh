#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

DEVICE=lilac
VENDOR=sony

# Load extract_utils and do some sanity checks
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "${MY_DIR}" ]]; then MY_DIR="${PWD}"; fi

ANDROID_ROOT="${MY_DIR}/../../.."

HELPER="${ANDROID_ROOT}/tools/extract-utils/extract_utils.sh"
if [ ! -f "${HELPER}" ]; then
    echo "Unable to find helper script at ${HELPER}"
    exit 1
fi
source "${HELPER}"

# Default to sanitizing the vendor folder before extraction
CLEAN_VENDOR=true

KANG=
SECTION=

while [ "${#}" -gt 0 ]; do
    case "${1}" in
        -n | --no-cleanup )
                CLEAN_VENDOR=false
                ;;
        -k | --kang )
                KANG="--kang"
                ;;
        -s | --section )
                SECTION="${2}"; shift
                CLEAN_VENDOR=false
                ;;
        * )
                SRC="${1}"
                ;;
    esac
    shift
done

if [ -z "${SRC}" ]; then
    SRC="adb"
fi


# Initialize the helper
setup_vendor "${DEVICE}" "${VENDOR}" "${ANDROID_ROOT}" true "${CLEAN_VENDOR}"

extract "${MY_DIR}/proprietary-files.txt" "${SRC}" "${KANG}" --section "${SECTION}"
extract "${MY_DIR}/proprietary-files-vendor.txt" "${SRC}" "${KANG}" --section "${SECTION}"

#
# Blobs fixup start
#

DEVICE_ROOT="${ANDROID_ROOT}"/vendor/"${VENDOR}"/"${DEVICE}"/proprietary

# Fix referenced set_sched_policy for stock audio hal
"${PATCHELF}" --replace-needed "libcutils.so" "libprocessgroup.so" "${DEVICE_ROOT}"/vendor/lib/hw/audio.primary.msm8998.so

# Let ffu load ufs firmare files from /etc
sed -i 's/\/lib\/firmware\/ufs/\/etc\/firmware\/ufs/g' "${DEVICE_ROOT}"/vendor/bin/ffu

# Add a restorecon for /persist/wlan to taimport_vendor.rc
sed -i '4 a\    restorecon /persist/wlan' "${DEVICE_ROOT}"/vendor/etc/init/taimport_vendor.rc

# Change xml version from 2.0 to 1.0
sed -i 's/version\=\"2\.0\"/version\=\"1\.0\"/g' "${DEVICE_ROOT}"/product/etc/permissions/vendor.qti.hardware.data.connection-V1.0-java.xml
sed -i 's/version\=\"2\.0\"/version\=\"1\.0\"/g' "${DEVICE_ROOT}"/product/etc/permissions/vendor.qti.hardware.data.connection-V1.1-java.xml

#
# Blobs fixup end
#

"${MY_DIR}"/setup-makefiles.sh
