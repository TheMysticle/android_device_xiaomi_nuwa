#
# Copyright (C) 2024 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/nuwa

# Inherit from sm8550-common
include device/xiaomi/sm8550-common/BoardConfigCommon.mk

# Display
TARGET_SCREEN_DENSITY := 530

# OTA
TARGET_OTA_ASSERT_DEVICE := nuwa

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/configs/properties/odm.prop
