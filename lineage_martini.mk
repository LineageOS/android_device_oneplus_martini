#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from martini device
$(call inherit-product, device/oneplus/martini/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_martini
PRODUCT_DEVICE := martini
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := MT2111

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="MT2111_IND-user 14 UKQ1.230924.001 R.1b5d629-1-4c03e release-keys" \
    BuildFingerprint=OnePlus/MT2111_IND/OP5155L1:14/UKQ1.230924.001/R.1b5d629-1-4c03e:user/release-keys \
    DeviceName=MT2111_IND \
    DeviceProduct=OP5155L1 \
    SystemDevice=OP5155L1 \
    SystemName=MT2111_IND

