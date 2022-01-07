#
# Copyright (C) 2022 Teracube-Inc
#
# Licensed under the Apache License.
#

# Makefile needs to be inherited from emerald.mk

KERNEL_MTK_PREBUILTS_PATH := device/teracube/emerald-kernel

# Kernel
TARGET_FORCE_PREBUILT_KERNEL := true
TARGET_PREBUILT_KERNEL := $(KERNEL_MTK_PREBUILTS_PATH)/Image.gz

# Set prebuilt device tree blob and overlay for emerald product
BOARD_PREBUILT_DTBIMAGE_DIR := $(KERNEL_MTK_PREBUILTS_PATH)
TARGET_PREBUILT_DTB := $(KERNEL_MTK_PREBUILTS_PATH)/dtb.img
BOARD_PREBUILT_DTBOIMAGE := $(KERNEL_MTK_PREBUILTS_PATH)/dtbo.img

# Kernel modules
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(KERNEL_MTK_PREBUILTS_PATH)/kernel-modules/,$(TARGET_COPY_OUT_VENDOR)/lib/modules)
