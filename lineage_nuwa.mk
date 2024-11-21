#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/nuwa

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configurations
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# UDFPS
TARGET_HAS_UDFPS := true

# Inherit common Pixel Experience configurations
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier
PRODUCT_DEVICE := nuwa
PRODUCT_NAME := lineage_nuwa
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2210132G
PRODUCT_MANUFACTURER := Xiaomi

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_SYSTEM_NAME := 2210132G
PRODUCT_SYSTEM_DEVICE := 2210132G

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="nuwa_global-user 14 UKQ1.230804.001 V816.0.1.0.UMBINXM release-keys" \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME) \
    BuildFingerprint=Xiaomi/nuwa_global/nuwa:14/UKQ1.230804.001/V816.0.1.0.UMBINXM:user/release-keys
