#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from sweet device
$(call inherit-product, device/xiaomi/sweet/device.mk)

# Inherit common Voltage OS  Stuff.
$(call inherit-product, vendor/voltage/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 2160
PRODUCT_NAME := voltage_sweet
PRODUCT_DEVICE := sweet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 10 Pro
PRODUCT_MANUFACTURER := Xiaomi
VOLTAGE_BUILD_TYPE := OFFICIAL
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc=$(call normalize-path-list, "sweet_global-user 13 TKQ1.221013.002 V14.0.8.0.TKFMIXM-release-keys")

BUILD_FINGERPRINT := Redmi/sweet_global/sweet:13/RKQ1.210614.002/V14.0.8.0.TKFMIXM:user/release-keys
