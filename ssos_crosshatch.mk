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
# build for crosshatch hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains few inherit-product
# lines, aosp and du, hence its name.
#

# Include Shapeshift OS common configuration
$(call inherit-product, vendor/ssos/config/common_full_phone.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, device/google/crosshatch/aosp_crosshatch.mk)

PRODUCT_NAME := ssos_crosshatch
PRODUCT_DEVICE := crosshatch
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 3 XL

# Gapps Config
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_WIFI_EXT := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true

# ShapeShift specific properties
PRODUCT_PRODUCT_PROPERTIES += \
  ro.ssos.cpu=SDM845

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1440

$(call inherit-product-if-exists, vendor/google/crosshatch/crosshatch-vendor.mk)
