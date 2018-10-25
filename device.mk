#
# Copyright (C) 2016 The CyanogenMod Project
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

# Audio
PRODUCT_COPY_FILES += \
    device/lge/g3-common/configs/audio/audio_platform_info_bcm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    device/lge/g3-common/configs/audio/mixer_paths_bcm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml

# FM Radio
PRODUCT_PACKAGES += \
    #FMRadio \
    #libfmjni

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf

# NFC
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml

PRODUCT_PACKAGES += \
    NfcNci \
    nfc_nci.msm8974

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# RIL
PRODUCT_PACKAGES += librmnetctl

# Wifi
PRODUCT_PACKAGES += \
    libnetcmdiface

$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/config/config-bcm.mk)

# Inherit from lge g3-common
$(call inherit-product, device/lge/g3-common/g3.mk)

# Inherit from vendor blobs
$(call inherit-product-if-exists, vendor/lge/g3ds/g3ds-vendor.mk)
