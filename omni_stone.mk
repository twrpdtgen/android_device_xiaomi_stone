#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from stone device
$(call inherit-product, device/xiaomi/stone/device.mk)

PRODUCT_DEVICE := stone
PRODUCT_NAME := omni_stone
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := yaap_stone
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="yaap_stone-userdebug 14 UQ1A.240105.002 eng.nomish.20240201.184024 test-keys"

BUILD_FINGERPRINT := Xiaomi/yaap_stone/stone:14/UQ1A.240105.002/nomishaw902011749:userdebug/test-keys
