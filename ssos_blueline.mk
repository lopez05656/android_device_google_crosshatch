# Copyright (C) 2018-2021 The Dirty Unicorns Project
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
# This file is the build configuration for an aosp Android
# build for blueline hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains few inherit-product
# lines, aosp and du, hence its name.
#

# Include Shapeshift OS common configuration
$(call inherit-product, vendor/ssos/config/common_full_phone.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, device/google/bluecross/aosp_blueline.mk)

PRODUCT_NAME := ssos_blueline
PRODUCT_DEVICE := blueline
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 3
PRODUCT_MANUFACTURER := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="crosshatch" \
    PRIVATE_BUILD_DESC="crosshatch-user 11 RQ2A.210405.005 7181113 release-keys"

BUILD_FINGERPRINT := "google/crosshatch/crosshatch:11/RQ2A.210405.005/7181113:user/release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=google/crosshatch/crosshatch:11/RQ2A.210405.005/7181113:user/release-keys

# Gapps Config
WITH_GAPPS := true
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_LIVE_WALLPAPERS := true

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1440

# ShapeShift Stuff
PRODUCT_PRODUCT_PROPERTIES += \
    ro.ssos.cpu=SD845

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="blueline-user 11 RQ2A.210405.005 7181113 release-keys"

$(call inherit-product-if-exists, vendor/google/blueline/blueline-vendor.mk)
