#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/google/crosshatch/device-blueline.mk)

# Inherit some common Evolution X stuff.
EVO_BUILD_TYPE := UNOFFICIAL
EXTRA_FOD_ANIMATIONS := true
TARGET_BOOT_ANIMATION_RES := 1440
WITH_GAPPS := true
EVO_MAINTAINER := lopez05656
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := Google
PRODUCT_DEVICE := blueline
PRODUCT_MANUFACTURER := Google
PRODUCT_NAME := evolution_blueline
PRODUCT_MODEL := blueline
