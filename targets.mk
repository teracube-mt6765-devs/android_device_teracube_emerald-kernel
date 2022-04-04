#
# Copyright (C) 2022 Teracube-Inc
#
# Licensed under the Apache License.
#

# Tag: R.11.T2E.21.01.REL

# Makefile needs to be inherited from emerald.mk

KERNEL_MTK_PREBUILTS_PATH := device/teracube/emerald-kernel

# Kernel definitions
LOCAL_KERNEL := $(KERNEL_MTK_PREBUILTS_PATH)/Image.gz
PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Set prebuilt device tree blob and overlay for emerald product
BOARD_PREBUILT_DTBIMAGE_DIR := $(KERNEL_MTK_PREBUILTS_PATH)
BOARD_PREBUILT_DTBOIMAGE := $(KERNEL_MTK_PREBUILTS_PATH)/dtbo.img

# Kernel modules
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(KERNEL_MTK_PREBUILTS_PATH)/kernel-modules/,$(TARGET_COPY_OUT_VENDOR)/lib/modules)
