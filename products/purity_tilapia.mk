# Copyright (C) 2012 Purity Project
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

# Check for target product
ifeq (purity_tilapia,$(TARGET_PRODUCT))

# Include Purity common configuration
include vendor/purity/config/common.mk

# Inherit AOSP device configuration
$(call inherit-product, device/asus/tilapia/full_tilapia.mk)

# Override AOSP build properties
PRODUCT_NAME := purity_tilapia
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus
#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasig BUILD_FINGERPRINT="google/nakasig/tilapia:4.4/KRT16S/920375:user/release-keys" PRIVATE_BUILD_DESC="nakasig-user 4.4 KRT16S 920375 release-keys"

# Kernel inline build
TARGET_KERNEL_SOURCE := kernel/asus/grouper
TARGET_KERNEL_CONFIG := kangaroo_defconfig

endif
