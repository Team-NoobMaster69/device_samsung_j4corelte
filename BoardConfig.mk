#
# Copyright (C) 2019-2020 The LineageOS Project
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

DEVICE_PATH := device/samsung/j4corelte

# Inherit from common msm8917-common
-include device/samsung/msm8917-common/BoardConfigCommon.mk

# Kernel
TARGET_KERNEL_CONFIG := j4corelte_defconfig

# Config Kernel
TARGET_KERNEL_HEADER_ARCH := arm

#Low ram
TARGET_HAS_LOW_RAM := true

# Filesystem
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1644167168
BOARD_VENDORIMAGE_PARTITION_SIZE := 260046848

#Camera
TARGET_PROCESS_SDK_VERSION_OVERRIDE := \
    /vendor/bin/mm-qcamera-daemon=27

# Shims
TARGET_LD_SHIM_LIBS += \
    /system/vendor/lib/libsensorndkbridge.so|libbase_shim.so 

# Malloc
MALLOC_SVELTE := true

# HWUI
HWUI_COMPILE_FOR_PERF := true

# Timeservice
BOARD_USES_QC_TIME_SERVICES := true

# SurfaceFlinger
TARGET_USE_QCOM_SURFACEFLINGER := true
TARGET_OTA_ASSERT_DEVICE := j4corelte, j4coreltejx

# Inherit from the proprietary version
-include vendor/samsung/j4corelte/BoardConfigVendor.mk
