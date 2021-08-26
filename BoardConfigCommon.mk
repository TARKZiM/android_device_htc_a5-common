# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

LOCAL_PATH := device/htc/a5-common

BOARD_VENDOR := htc

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8226
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8226
TARGET_BOARD_PLATFORM_GPU := qcom-adreno305

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := krait

# Binder API version
TARGET_USES_64_BIT_BINDER := true

# Kernel
BOARD_DTBTOOL_ARGS := --dt-tag "htc,project-id = <"
BOARD_KERNEL_CMDLINE := console=none androidboot.hardware=qcom user_debug=31 ehci-hcd.park=3 zcache androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_IMAGE_NAME := zImage
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x02008000 --tags_offset 0x01e00000
TARGET_KERNEL_SOURCE := kernel/htc/msm8974
TARGET_KERNEL_CONFIG := lineage_a5_defconfig

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

# Audio
BOARD_USES_ALSA_AUDIO := true
AUDIO_FEATURE_LOW_LATENCY_PRIMARY := true
AUDIO_FEATURE_ENABLED_HWDEP_CAL := true
AUDIO_FEATURE_ENABLED_LOW_LATENCY_CAPTURE := true
USE_CUSTOM_AUDIO_POLICY := 1

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Camera
TARGET_USE_COMPAT_GRALLOC_ALIGN := true
USE_DEVICE_SPECIFIC_CAMERA := true
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true
TARGET_NEEDS_METADATA_CAMERA_SOURCE := true
TARGET_USES_MEDIA_EXTENSIONS := true
TARGET_HAS_LEGACY_CAMERA_HAL1 := true
TARGET_PROCESS_SDK_VERSION_OVERRIDE += \
    /system/bin/mediaserver=22 \
    /system/vendor/bin/mm-qcamera-daemon=23

# Charge mode
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/htc_lpm/lpm_mode

# Display
TARGET_SCREEN_DENSITY := 320
TARGET_DISABLE_POSTRENDER_CLEANUP := true

# Filesystem
TARGET_FS_CONFIG_GEN := $(LOCAL_PATH)/config.fs

# FM Radio
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
TARGET_QCOM_NO_FM_FIRMWARE := true

# Graphics
TARGET_USES_ION := true
USE_OPENGL_RENDERER := true
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS := 0x02000000U
TARGET_DISABLE_POSTRENDER_CLEANUP := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true

# HIDL
DEVICE_MANIFEST_FILE := $(LOCAL_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(LOCAL_PATH)/compatibility_matrix.xml
PRODUCT_ENFORCE_VINTF_MANIFEST_OVERRIDE := true

# Legacy memfd
TARGET_HAS_MEMFD_BACKPORT := true

# Includes
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Power
TARGET_USES_INTERACTION_BOOST := true

# RPC
TARGET_NO_RPC := true

# Time services
BOARD_USES_QC_TIME_SERVICES := true

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
TARGET_PROVIDES_WCNSS_QMI := true
TARGET_USES_QCOM_WCNSS_QMI := true
TARGET_USES_WCNSS_CTRL := true
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_CACHEIMAGE_PARTITION_SIZE := 285212672
BOARD_RECOVERY_BLDRMSG_OFFSET := 2048
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2415919104
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4429185024
BOARD_ROOT_EXTRA_FOLDERS := \
    carrier \
    custdata \
    firmware/adsp \
    firmware/radio \
    firmware/wcnss
BOARD_ROOT_EXTRA_SYMLINKS := \
    /data/tombstones:/tombstones
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Recovery
BOOTLOADER_MESSAGE_OFFSET := 2048
TARGET_RECOVERY_DEVICE_DIRS += $(LOCAL_PATH)
TARGET_RECOVERY_DEVICE_MODULES += chargeled
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/fstab.qcom

# Filesystem
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4

# RIL
TARGET_RIL_VARIANT := caf
TARGET_NEEDS_GCC_LIBC := true

# SELinux
include device/qcom/sepolicy-legacy/sepolicy.mk
BOARD_SEPOLICY_DIRS += device/htc/a5-common/sepolicy

# Shims
TARGET_LD_SHIM_LIBS := \
    /system/lib/liblog.so|libshim_log.so \
    /system/vendor/lib/hw/camera.vendor.msm8226.so|libshim_camera.so \
    /system/vendor/lib/libril-qc-qmi-1.so|libshim_ril.so \
    /system/vendor/lib/libril-qc-qmi-1.so|libaudioclient_shim.so

# SDClang
TARGET_USE_SDCLANG := true

# inherit from the proprietary version
-include vendor/htc/a5-common/BoardConfigVendor.mk
