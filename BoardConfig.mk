LOCAL_PATH := device/lge/g3ds

TARGET_OTA_ASSERT_DEVICE := g3ds,d856,d857,d858,d858hk,d859

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := krait

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8974
TARGET_NO_BOOTLOADER := true

# Crypto
TARGET_HW_DISK_ENCRYPTION := true
TW_CRYPTO_USE_SYSTEM_VOLD := qseecomd
TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# Kernel
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkbootimg.mk
BOARD_KERNEL_CMDLINE := console=none androidboot.hardware=g3 user_debug=31 msm_rtb.filter=0x0
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_IMAGE_NAME := zImage
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x0008000 --ramdisk_offset 0x2000000
LZMA_RAMDISK_TARGETS := recovery
TARGET_KERNEL_SOURCE := kernel/lge/g3
TARGET_KERNEL_CONFIG := g3ds_defconfig
TARGET_REQUIRES_BUMP := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE    := 889192448
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PERSISTIMAGE_PARTITION_SIZE  := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2164260864
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27845453824
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Platform
TARGET_BOARD_PLATFORM := msm8974
TARGET_BOARD_PLATFORM_GPU := qcom-adreno330

# Recovery
BOARD_HAS_NO_REAL_SDCARD := false
BOARD_NO_SECURE_DISCARD := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_SUPPRESS_SECURE_ERASE := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
RECOVERY_VARIANT := twrp

# TWRP
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery.fstab
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_DEFAULT_BRIGHTNESS := 114
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_JPEG := true
TW_INCLUDE_NTFS_3G := true
TW_MAX_BRIGHTNESS := 255
TW_NO_SCREEN_BLANK := true
TW_THEME := portrait_hdpi
TWRP_INCLUDE_LOGCAT := true

# TWRP Thermal
PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/thermal-engine-8974.conf:system/etc/thermal-engine-8974.conf

# TWRP Keymaster
    $(shell mkdir -p out/target/product/$(PRODUCT_DEVICE)/recovery/root/firmware/image/keymaster)
    $(shell mkdir -p out/target/product/$(PRODUCT_DEVICE)/recovery/root/vendor/lib)
    $(shell mkdir -p out/target/product/$(PRODUCT_DEVICE)/recovery/root/vendor/lib/hw)
    $(shell mkdir -p out/target/product/$(PRODUCT_DEVICE)/recovery/root/sbin)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/bin/nano:recovery/root/bin/nano \
    $(LOCAL_PATH)/recovery/root/bin/nano.bin:recovery/root/bin/nano.bin \
    $(LOCAL_PATH)/recovery/root/sbin/libdiag.so:recovery/root/sbin/libdiag.so \
    $(LOCAL_PATH)/recovery/root/sbin/libdrmfs.so:recovery/root/sbin/libdrmfs.so \
    $(LOCAL_PATH)/recovery/root/sbin/libdrmtime.so:recovery/root/sbin/libdrmtime.so \
    $(LOCAL_PATH)/recovery/root/sbin/librpmb.so:recovery/root/sbin/librpmb.so \
    $(LOCAL_PATH)/recovery/root/sbin/libssd.so:recovery/root/sbin/libssd.so \
    $(LOCAL_PATH)/recovery/root/sbin/qseecomd:recovery/root/sbin/qseecomd \
    $(LOCAL_PATH)/recovery/root/sbin/e2fsck:recovery/root/sbin/e2fsck \
    $(LOCAL_PATH)/recovery/root/sbin/mke2fs:recovery/root/sbin/mke2fs \
    $(LOCAL_PATH)/recovery/root/sbin/nano:recovery/root/sbin/nano \
    $(LOCAL_PATH)/recovery/root/sbin/parted:recovery/root/sbin/parted \
    $(LOCAL_PATH)/recovery/root/sbin/resize2fs:recovery/root/sbin/resize2fs \
    $(LOCAL_PATH)/recovery/root/sbin/sdparted:recovery/root/sbin/sdparted \
    $(LOCAL_PATH)/recovery/root/sbin/thermal-engine:recovery/root/sbin/thermal-engine \
    $(LOCAL_PATH)/recovery/root/sbin/tune2fs:recovery/root/sbin/tune2fs \
    $(LOCAL_PATH)/recovery/root/firmware/image/cmnlib.b00:recovery/root/firmware/image/keymaster/cmnlib.b00 \
    $(LOCAL_PATH)/recovery/root/firmware/image/cmnlib.b01:recovery/root/firmware/image/keymaster/cmnlib.b01 \
    $(LOCAL_PATH)/recovery/root/firmware/image/cmnlib.b02:recovery/root/firmware/image/keymaster/cmnlib.b02 \
    $(LOCAL_PATH)/recovery/root/firmware/image/cmnlib.b03:recovery/root/firmware/image/keymaster/cmnlib.b03 \
    $(LOCAL_PATH)/recovery/root/firmware/image/cmnlib.mdt:recovery/root/firmware/image/keymaster/cmnlib.mdt \
    $(LOCAL_PATH)/recovery/root/firmware/image/keymaste.b00:recovery/root/firmware/image/keymaster/keymaste.b00 \
    $(LOCAL_PATH)/recovery/root/firmware/image/keymaste.b01:recovery/root/firmware/image/keymaster/keymaste.b01 \
    $(LOCAL_PATH)/recovery/root/firmware/image/keymaste.b02:recovery/root/firmware/image/keymaster/keymaste.b02 \
    $(LOCAL_PATH)/recovery/root/firmware/image/keymaste.b03:recovery/root/firmware/image/keymaster/keymaste.b03 \
    $(LOCAL_PATH)/recovery/root/firmware/image/keymaste.mdt:recovery/root/firmware/image/keymaster/keymaste.mdt \
    $(LOCAL_PATH)/recovery/root/vendor/lib/libQSEEComAPI.so:recovery/root/vendor/lib/libQSEEComAPI.so \
    $(LOCAL_PATH)/recovery/root/vendor/lib/hw/keystore.msm8974.so:recovery/root/vendor/lib/hw/keystore.msm8974.so \
    $(LOCAL_PATH)/recovery/root/etc/terminfo/a/ansi:recovery/root/etc/terminfo/a/ansi \
    $(LOCAL_PATH)/recovery/root/etc/terminfo/c/cons25:recovery/root/etc/terminfo/c/cons25 \
    $(LOCAL_PATH)/recovery/root/etc/terminfo/c/cygwin:recovery/root/etc/terminfo/c/cygwin \
    $(LOCAL_PATH)/recovery/root/etc/terminfo/d/dumb:recovery/root/etc/terminfo/d/dumb \
    $(LOCAL_PATH)/recovery/root/etc/terminfo/E/Eterm:recovery/root/etc/terminfo/E/Eterm \
    $(LOCAL_PATH)/recovery/root/etc/terminfo/E/Eterm-color:recovery/root/etc/terminfo/E/Eterm-color \
    $(LOCAL_PATH)/recovery/root/etc/terminfo/h/hurd:recovery/root/etc/terminfo/h/hurd \
    $(LOCAL_PATH)/recovery/root/etc/terminfo/l/linux:recovery/root/etc/terminfo/l/linux \
    $(LOCAL_PATH)/recovery/root/etc/terminfo/m/mach:recovery/root/etc/terminfo/m/mach \
    $(LOCAL_PATH)/recovery/root/etc/terminfo/m/mach-bold:recovery/root/etc/terminfo/m/mach-bold \
    $(LOCAL_PATH)/recovery/root/etc/terminfo/m/mach-color:recovery/root/etc/terminfo/m/mach-color \
    $(LOCAL_PATH)/recovery/root/etc/terminfo/p/pcansi:recovery/root/etc/terminfo/p/pcansi \
    $(LOCAL_PATH)/recovery/root/etc/terminfo/r/rxvt:recovery/root/etc/terminfo/r/rxvt \
    $(LOCAL_PATH)/recovery/root/etc/terminfo/r/rxvt-basic:recovery/root/etc/terminfo/r/rxvt-basic \
    $(LOCAL_PATH)/recovery/root/etc/terminfo/s/screen:recovery/root/etc/terminfo/s/screen \
    $(LOCAL_PATH)/recovery/root/etc/terminfo/s/screen-256color:recovery/root/etc/terminfo/s/screen-256color \
    $(LOCAL_PATH)/recovery/root/etc/terminfo/s/screen-256color-bce:recovery/root/etc/terminfo/s/screen-256color-bce \
    $(LOCAL_PATH)/recovery/root/etc/terminfo/s/screen-bce:recovery/root/etc/terminfo/s/screen-bce \
    $(LOCAL_PATH)/recovery/root/etc/terminfo/s/screen-s:recovery/root/etc/terminfo/s/screen-s \
    $(LOCAL_PATH)/recovery/root/etc/terminfo/s/screen-s:recovery/root/etc/terminfo/s/screen-w \
    $(LOCAL_PATH)/recovery/root/etc/terminfo/s/sun:recovery/root/etc/terminfo/s/sun \
    $(LOCAL_PATH)/recovery/root/etc/terminfo/v/vt52:recovery/root/etc/terminfo/v/vt52 \
    $(LOCAL_PATH)/recovery/root/etc/terminfo/v/vt100:recovery/root/etc/terminfo/v/vt100 \
    $(LOCAL_PATH)/recovery/root/etc/terminfo/v/vt102:recovery/root/etc/terminfo/v/vt102 \
    $(LOCAL_PATH)/recovery/root/etc/terminfo/v/vt220:recovery/root/etc/terminfo/v/vt220 \
    $(LOCAL_PATH)/recovery/root/etc/terminfo/w/wsvt25:recovery/root/etc/terminfo/w/wsvt25 \
    $(LOCAL_PATH)/recovery/root/etc/terminfo/w/wsvt25m:recovery/root/etc/terminfo/w/wsvt25m \
    $(LOCAL_PATH)/recovery/root/etc/terminfo/x/xterm:recovery/root/etc/terminfo/x/xterm \
    $(LOCAL_PATH)/recovery/root/etc/terminfo/x/xterm-256color:recovery/root/etc/terminfo/x/xterm-256color \
    $(LOCAL_PATH)/recovery/root/etc/terminfo/x/xterm-color:recovery/root/etc/terminfo/x/xterm-color \
    $(LOCAL_PATH)/recovery/root/etc/terminfo/x/xterm-r5:recovery/root/etc/terminfo/x/xterm-r5 \
    $(LOCAL_PATH)/recovery/root/etc/terminfo/x/xterm-r6:recovery/root/etc/terminfo/x/xterm-r6 \
    $(LOCAL_PATH)/recovery/root/etc/terminfo/x/xterm-vt220:recovery/root/etc/terminfo/x/xterm-vt220 \
    $(LOCAL_PATH)/recovery/root/etc/terminfo/x/xterm-xfree86:recovery/root/etc/terminfo/x/xterm-xfree86