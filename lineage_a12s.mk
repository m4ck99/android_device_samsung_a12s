#
# Copyright (C) 2022 The LineageOS Project
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

## Inherit from generic products, most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

## Inherit from m12 device
$(call inherit-product, device/samsung/a12s/device.mk)

## Boot Animation
TARGET_SCREEN_HEIGHT := 1600
TARGET_SCREEN_WIDTH := 720

## Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

## Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

## Device identifier, this must come after all inclusions
PRODUCT_NAME := lineage_a12s
PRODUCT_DEVICE := a12s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A127F
PRODUCT_MANUFACTURER := samsung
PRODUCT_SHIPPING_API_LEVEL := 30
PRODUCT_GMS_CLIENTID_BASE := android-samsung

## Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=a12nsxx \
    PRIVATE_BUILD_DESC="a12nsxx-user 11 RP1A.200720.012 A127FXXU5AVC5 release-keys"

BUILD_FINGERPRINT := samsung/a12nsxx/a12:11/RP1A.200720.012/A127FXXU5AVC5:user/release-keys
