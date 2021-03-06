BOARD_VENDOR := Huawei

USE_CAMERA_STUB := false

# Audio
TARGET_PROVIDES_LIBAUDIO := true
BOARD_USES_GENERIC_AUDIO := false

# inherit from the proprietary version
include vendor/huawei/hwu9508/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := k3v2oem1
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_VARIANT := cortex-a9
TARGET_ARCH_VARIANT_FPU := neon

TARGET_BOOTLOADER_BOARD_NAME := hwu9508
TARGET_BOARD_PLATFORM := k3v2oem1

# Local flag
BOARD_USE_K3V2OEM1 := true
LOCAL_CFLAGS += -DUSE_K3V2OEM1

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Wifi 
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/system/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_P2P     := "/system/vendor/firmware/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/vendor/firmware/fw_bcmdhd_apsta.bin"




# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/huawei/hwu9508/bluetooth

#TARGET_PREBUILT_KERNEL := device/huawei/hwu9508/kernel
TARGET_KERNEL_SOURCE := kernel/huawei/hwu9508
#TARGET_KERNEL_SOURCE := kernel/huawei/hwu9508_cm10
TARGET_KERNEL_CONFIG := hisi_k3v2oem1_defconfig


BOARD_HAL_STATIC_LIBRARIES += libhealthd.k3v2oem1

# enable adb access from user builds
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += persist.service.adb.enable=1  
ADDITIONAL_DEFAULT_PROPERTIES += persist.service.debuggable=1
ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.usb.config=mtp,adb            


# Graphics
BOARD_EGL_CFG := device/huawei/hwu9508/prebuilt/lib/egl/egl.cfg
USE_OPENGL_RENDERER := true
COMMON_GLOBAL_CFLAGS += -DFORCE_SCREENSHOT_CPU_PATH

# Camera
BOARD_CAMERA_HAVE_ISO := true

# RIL
BOARD_RIL_CLASS := ../../../device/huawei/hwu9508/ril/

# Misc
BOARD_NEEDS_CUTILS_LOG := true
BOARD_SCREENRECORD_DEVICE_FORCE_AUDIO_MIC := true
TARGET_GRALLOC_USES_ASHMEM := true
BOARD_USES_SECURE_SERVICES := true
TARGET_USES_PMEM := true
TARGET_USES_ION := false

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyS0 vmalloc=384M k3v2_pmem=1 mmcparts=mmcblk0:p1(xloader),p3(nvme),p4(misc),p5(splash),p6(oeminfo),p7(reserved1),p8(reserved2),p9(recovery2),p10(recovery),p11(boot),p12(modemimage),p13(modemnvm1),p14(modemnvm2),p15(system),p16(cache),p17(cust),p18(userdata);mmcblk1:p1(ext_sdcard)
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048 
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset 0x01400000

# emmc partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p15
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 939524096
BOARD_DATA_DEVICE := /dev/block/mmcblk0p18
BOARD_DATA_FILESYSTEM := ext4
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5926551552
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p16
BOARD_CACHE_FILESYSTEM := ext4


TARGET_OTA_ASSERT_DEVICE := u9508,U9508,U9508B,u9508B,hwu9508,hwu9508B

#USB and Vold
BOARD_MTP_DEVICE := "/dev/mtp_usb"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun/file"
BOARD_VOLD_MAX_PARTITIONS := 19
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_USE_USB_MASS_STORAGE_SWITCH := true

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_TOUCH_RECOVERY :=
TARGET_USERIMAGES_USE_EXT4 := true
#TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_HAS_LOCKED_BOOTLOADER := true
RECOVERY_FSTAB_VERSION := 2
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/huawei/hwu9508/recovery/recovery_keys.c
TARGET_RECOVERY_FSTAB := device/huawei/hwu9508/recovery/recovery.fstab
BOARD_RECOVERY_HANDLES_MOUNT := true
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"

BOARD_RECOVERY_SWIPE := true

# to compile mmcutils
BOARD_HAS_LARGE_FILESYSTEM := true

####TODO
TARGET_PREBUILT_RECOVERY_KERNEL := device/huawei/hwu9508/kernel
TARGET_RECOVERY_INITRC := device/huawei/hwu9508/recovery/init.rc

#TWRP
HAVE_SELINUX := true

TW_MAX_BRIGHTNESS := 255
DEVICE_RESOLUTION := 720x1280
RECOVERY_GRAPHICS_USE_LINELENGTH := true

TW_CUSTOM_BATTERY_PATH := "/sys/devices/platform/k3_battery_monitor.1/power_supply/Battery"

RECOVERY_SDCARD_ON_DATA := true 
TW_FLASH_FROM_STORAGE := true
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true

TW_BRIGHTNESS_PATH := /sys/class/leds/lcd_backlight0/brightness
