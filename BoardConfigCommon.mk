#
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# inherit from the proprietary version
-include vendor/motorola/msm8960dt-common/BoardConfigVendor.mk

LOCAL_PATH := device/motorola/msm8960dt-common

BOARD_VENDOR := motorola-qcom

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Platform
TARGET_BOARD_PLATFORM       := msm8960
TARGET_BOARD_PLATFORM_GPU   := qcom-adreno320

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME    := MSM8960
TARGET_NO_BOOTLOADER            := true

# Architecture
TARGET_ARCH                             := arm
TARGET_ARCH_VARIANT                     := armv7-a-neon
TARGET_CPU_ABI                          := armeabi-v7a
TARGET_CPU_ABI2                         := armeabi
TARGET_CPU_VARIANT                      := krait
TARGET_USE_QCOM_BIONIC_OPTIMIZATION     := true

# Kernel
BOARD_CUSTOM_BOOTIMG_MK    := $(LOCAL_PATH)/mkbootimg.mk
BOARD_KERNEL_CMDLINE       := console=ttyHSL0,115200,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 maxcpus=2 androidboot.write_protect=0 androidboot.selinux=permissive
BOARD_KERNEL_BASE          := 0x80200000
BOARD_KERNEL_PAGESIZE      := 2048
BOARD_KERNEL_SEPARATED_DT  := true
BOARD_MKBOOTIMG_ARGS       := --ramdisk_offset 0x02200000
TARGET_KERNEL_SOURCE       := kernel/motorola/ghost
TARGET_KERNEL_CONFIG       := msm8960dt_mmi_defconfig

# Audio
BOARD_USES_ALSA_AUDIO               := true
AUDIO_USE_LL_AS_PRIMARY_OUTPUT 	    := true
USE_CUSTOM_AUDIO_POLICY             := 1

# Bluetooth
BOARD_HAVE_BLUETOOTH        := true
BOARD_HAVE_BLUETOOTH_QCOM   := true
BLUETOOTH_HCI_USE_MCT       := true

#Charger
BACKLIGHT_PATH                      :=/sys/class/backlight/lcd-backlight/brightness
BOARD_CHARGER_ENABLE_SUSPEND        := true
BOARD_NO_CHARGER_LED                := true
BOARD_CHARGER_DISABLE_INIT_BLANK    := true

# Camera
USE_DEVICE_SPECIFIC_CAMERA  	:= true
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true
TARGET_HAS_LEGACY_CAMERA_HAL1 	:= true
TARGET_NEEDS_METADATA_CAMERA_SOURCE := true
BOARD_GLOBAL_CFLAGS += -DMETADATA_CAMERA_SOURCE

# Display
NUM_FRAMEBUFFER_SURFACE_BUFFERS     := 3
TARGET_DISPLAY_USE_RETIRE_FENCE     := true
TARGET_USES_C2D_COMPOSITION         := true
TARGET_USES_ION                     := true
USE_OPENGL_RENDERER                 := true

# Flags
BOARD_USES_LEGACY_MMAP := true

# Power HAL
TARGET_POWERHAL_VARIANT := qcom

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true

# Recovery
TARGET_RECOVERY_FSTAB                   := $(LOCAL_PATH)/rootdir/etc/fstab.qcom
TARGET_USERIMAGES_USE_EXT4              := true
TARGET_USERIMAGES_USE_F2FS              := true
TARGET_RECOVERY_DENSITY                 := xhdpi
TARGET_NOT_USE_GZIP_RECOVERY_RAMDISK    := true

# RIL
BOARD_RIL_CLASS := ../../../$(LOCAL_PATH)/ril/

# SELinux
-include device/qcom/sepolicy/sepolicy.mk

BOARD_SEPOLICY_DIRS += \
    $(LOCAL_PATH)/sepolicy

# Wifi
BOARD_HAS_QCOM_WLAN                 := true
BOARD_HAS_QCOM_WLAN_SDK             := true
BOARD_HOSTAPD_DRIVER                := NL80211
BOARD_HOSTAPD_PRIVATE_LIB           := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE                   := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER         := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB    := lib_driver_cmd_qcwcn
WIFI_DRIVER_FW_PATH_AP              := "ap"
WIFI_DRIVER_FW_PATH_STA             := "sta"
WPA_SUPPLICANT_VERSION              := VER_0_8_X

#TWRP
BOARD_HAS_NO_REAL_SDCARD            := true
RECOVERY_SDCARD_ON_DATA             := true
TARGET_RECOVERY_PIXEL_FORMAT        := "RGB_565"
TW_EXTERNAL_STORAGE_PATH            := "/usb-otg"
TW_EXTERNAL_STORAGE_MOUNT_POINT     := "usb-otg"
DEVICE_RESOLUTION                   := 720x1280
RECOVERY_GRAPHICS_USE_LINELENGTH    := true
BOARD_SUPPRESS_SECURE_ERASE         := true
TW_INCLUDE_CRYPTO                   := true
TW_INCLUDE_L_CRYPTO                 := true
TW_TARGET_USES_QCOM_BSP             := true
TW_DEFAULT_EXTERNAL_STORAGE         := true
TW_EXCLUDE_SUPERSU                  := true
TW_INCLUDE_CRYPTO                   := true
TW_INCLUDE_NTFS_3G                  := true
TW_INTERNAL_STORAGE_MOUNT_POINT     := "data"
TW_INTERNAL_STORAGE_PATH            := "/data/media"
TW_NO_SCREEN_BLANK                  := true
TW_NO_USB_STORAGE                   := true
TW_THEME                            := portrait_hdpi
