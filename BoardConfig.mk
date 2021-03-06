USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/xiaomi/hongmi/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_BOARD_PLATFORM := MT6589T
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CPU_VARIANT := cortex-a7

# bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := hongmi

# kernel
TARGET_PREBUILT_KERNEL := device/xiaomi/hongmi/kernel
BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# EGL
BOARD_EGL_CFG := device/xiaomi/hongmi/egl.cfg

# Ramdisk
TARGET_PROVIDES_INIT_RC := true

# prebuilt image layouts
DEVICE_BASE_RECOVERY_IMAGE := device/xiaomi/hongmi/mtk-tools/recovery.img

# recovery specific
TARGET_RECOVERY_INITRC := device/xiaomi/hongmi/ramdisk/init.rc
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/xiaomi/hongmi/recovery/recovery_keys.c
TARGET_RECOVERY_FSTAB := device/xiaomi/hongmi/recovery.fstab
CWM_EMMC_BOOT_DEVICE_NAME := /dev/bootimg
CWM_EMMC_BOOT_DEVICE_SIZE := 0x01000000
CWM_EMMC_RECOVERY_DEVICE_NAME := /dev/recovery
CWM_EMMC_RECOVERY_DEVICE_SIZE := 0x01000000
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
DEVICE_RESOLUTION := 1280x720
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/gadget/lun%d/file

# partition sizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 671088640 #640m
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1073741824 #1g
BOARD_FLASH_BLOCK_SIZE := 131072
