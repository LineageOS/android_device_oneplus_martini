#!/bin/bash
#
# SPDX-FileCopyrightText: 2016 The CyanogenMod Project
# SPDX-FileCopyrightText: 2017-2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# If we're being sourced by the common script that we called,
# stop right here. No need to go down the rabbit hole.
if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

export DEVICE=martini
export DEVICE_COMMON=sm8350-common
export VENDOR=oneplus
export VENDOR_COMMON=${VENDOR}

"./../../${VENDOR_COMMON}/${DEVICE_COMMON}/extract-files.sh" "$@"
