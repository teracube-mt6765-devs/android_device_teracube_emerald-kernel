KERNEL_MTK_PREBUILTS_PATH := device/teracube/emerald-kernel

# Kernel definitions
LOCAL_KERNEL := $(KERNEL_MTK_PREBUILTS_PATH)/kernel
PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Set prebuilt device tree blob and overlay for emerald product
BOARD_PREBUILT_DTBIMAGE_DIR := $(KERNEL_MTK_PREBUILTS_PATH)
BOARD_PREBUILT_DTBOIMAGE := $(KERNEL_MTK_PREBUILTS_PATH)/dtbo.img
