#
# Copyright (C) 2020 The LineageOS Project
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

# Inherit some common bliss stuff.
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/crosshatch/aosp_crosshatch.mk)

-include device/google/crosshatch/crosshatch/device-lineage.mk

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1440

## Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_DEVICE := crosshatch
PRODUCT_MODEL := Pixel 3 XL
PRODUCT_NAME := bliss_crosshatch
TARGET_MANUFACTURER := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
  PRIVATE_BUILD_DESC="crosshatch-user 11 RQ2A.210405.005 7181113 release-keys" \

$(call inherit-product-if-exists, vendor/google/crosshatch/crosshatch-vendor.mk)