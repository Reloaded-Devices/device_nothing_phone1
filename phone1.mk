# Copyright (C) 2022 Paranoid Android
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/nothing/phone1/device.mk)

# Inherit common ReloadedOS configuration
$(call inherit-product, vendor/reloaded/config/product.mk)

PRODUCT_BRAND := Nothing
PRODUCT_DEVICE := phone1
PRODUCT_MANUFACTURER := Nothing
PRODUCT_MODEL := A063
PRODUCT_NAME := phone1
RELOADED_BUILD_TYPE := OFFICIAL

# Bootanimation resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Override device name for Play Store.
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=Spacewar \
    TARGET_PRODUCT=Spacewar

PRODUCT_GMS_CLIENTID_BASE := android-nothing
