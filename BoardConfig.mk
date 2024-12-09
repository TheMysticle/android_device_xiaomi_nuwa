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

# Kernel Modules
device_second_stage_modules := \
    xiaomi_touch.ko \
    fts_touch_spi.ko

BOARD_VENDOR_RAMDISK_KERNEL_MODULES += $(addprefix $(KERNEL_PREBUILT_DIR)/vendor_dlkm/, $(device_second_stage_modules))
BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD += $(device_second_stage_modules)
BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD += $(device_second_stage_modules)

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/configs/properties/odm.prop
