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

# Inherit from xaga device
$(call inherit-product, device/xiaomi/xaga/device.mk)

PRODUCT_DEVICE := xaga
PRODUCT_NAME := omni_xaga
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := xaga
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_xaga-eng 12 SP2A.220405.004 eng.wbs.20220727.121353 test-keys"

BUILD_FINGERPRINT := Redmi/twrp_xaga/xaga:12/SP2A.220405.004/wbs07271210:eng/test-keys
