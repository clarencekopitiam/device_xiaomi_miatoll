#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit some common Pixelage stuff.
$(call inherit-product, vendor/pixelage/config/common_full_phone.mk)

# Inherit from miatoll device
$(call inherit-product, device/xiaomi/miatoll/device.mk)

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Pixelage
PIXELAGE_BUILDTYPE := OFFICIAL
PIXELAGE_MAINTAINER := clarencelol
TARGET_FACE_UNLOCK_SUPPORTED := true

PRODUCT_NAME := pixelage_miatoll
PRODUCT_DEVICE := miatoll
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := SM6250

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="miatoll_global-user 12 SKQ1.211019.001 V14.0.3.0.SJZMIXM release-keys" \
    BuildFingerprint=Redmi/miatoll_global/miatoll:12/RKQ1.211019.001/V14.0.3.0.SJZMIXM:user/release-keys
