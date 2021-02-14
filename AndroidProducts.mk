#
# Copyright 2015 The Android Open Source Project
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

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/evolution_crosshatch.mk \
    $(LOCAL_DIR)/evolution_blueline.mk

COMMON_LUNCH_CHOICES := \
    evolution_crosshatch-user \
    evolution_crosshatch-userdebug \
    evolution_crosshatch-eng \
    evolution_blueline-user \
    evolution_blueline-userdebug \
    evolution_blueline-eng