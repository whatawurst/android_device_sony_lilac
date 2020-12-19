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

# TWRP blobs
if [ "${WITH_TWRP}" = "true" ]; then
extract "${MY_DIR}/proprietary-files-twrp.txt" "${SRC}" "${KANG}" --section "${SECTION}"

TWRP_QSEECOMD="${ANDROID_ROOT}"/vendor/"${VENDOR}"/"${DEVICE}"/proprietary/recovery/root/sbin/qseecomd
TWRP_GATEKEEPER_SERVICE="${ANDROID_ROOT}"/vendor/"${VENDOR}"/"${DEVICE}"/proprietary/recovery/root/sbin/android.hardware.gatekeeper@1.0-service-qti
TWRP_KEYMASTER_SERVICE="${ANDROID_ROOT}"/vendor/"${VENDOR}"/"${DEVICE}"/proprietary/recovery/root/sbin/android.hardware.keymaster@3.0-service-qti

sed -i "s|/system/bin/linker64|/sbin/linker64\x0\x0\x0\x0\x0\x0|g" "${TWRP_QSEECOMD}"
sed -i "s|/system/bin/linker64|/sbin/linker64\x0\x0\x0\x0\x0\x0|g" "${TWRP_GATEKEEPER_SERVICE}"
sed -i "s|/system/bin/linker64|/sbin/linker64\x0\x0\x0\x0\x0\x0|g" "${TWRP_KEYMASTER_SERVICE}"
fi

#
# Fix product path
#

DEVICE_ROOT="${ANDROID_ROOT}"/vendor/"${VENDOR}"/"${DEVICE}"/proprietary/

function fix_product_path () {
    sed -i \
        's/\/system\/framework\//\/system\/product\/framework\//g' \
        "${DEVICE_ROOT}"/"$1"
}

fix_product_path product/etc/permissions/com.qualcomm.qti.imscmservice-V2.0-java.xml
fix_product_path product/etc/permissions/com.qualcomm.qti.imscmservice-V2.1-java.xml
fix_product_path product/etc/permissions/com.qualcomm.qti.imscmservice.xml
fix_product_path product/etc/permissions/embms.xml
fix_product_path product/etc/permissions/lpa.xml
fix_product_path product/etc/permissions/qcrilhook.xml
fix_product_path product/etc/permissions/telephonyservice.xml

"${MY_DIR}"/setup-makefiles.sh
