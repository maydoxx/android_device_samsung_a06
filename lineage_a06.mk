#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from a06 device
$(call inherit-product, device/samsung/a06/device.mk)

PRODUCT_DEVICE := a06
PRODUCT_NAME := lineage_a06
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := Galaxy A06
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

BUILD_BCR := true
TARGET_INCLUDE_VIPERFX := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a06xx-user 15 AP3A.240905.015.A2 A065FXXS7BYJ1 release-keys"

BUILD_FINGERPRINT := samsung/a06xx/a06:15/AP3A.240905.015.A2/A065FXXS7BYJ1:user/release-keys
