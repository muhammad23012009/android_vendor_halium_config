#
# Copyright (C) 2018 The Android Open Source Project
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

SOUND_PATH := frameworks/base/data/sounds

EFFECT_FILES := \
    camera_focus \
#    Effect_Tick \
#    KeypressReturn \
#    KeypressInvalid \
#    KeypressDelete \
#    KeypressSpacebar \
#    KeypressStandard \
#    Dock \
#    Undock \
#    Lock \
#    Unlock \
#    Trusted \
#    ChargingStarted \
#    InCallNotification \
#    NFCFailure \
#    NFCInitiated \
#    NFCSuccess \
#    NFCTransferComplete \
#    NFCTransferInitiated \

MATERIAL_EFFECT_FILES := \
    camera_click \
#    LowBattery \
#    VideoRecord \
#    VideoStop \
#    WirelessChargingStarted \

# Copy to /system instead of /product, because there are packages on the Ubuntu Touch
# side of userspace (like qtubuntu-camera), which expect them to be in /system.

PRODUCT_COPY_FILES += $(foreach fn,$(EFFECT_FILES),\
    $(SOUND_PATH)/effects/ogg/$(fn).ogg:$(TARGET_COPY_OUT_SYSTEM)/media/audio/ui/$(fn).ogg)

PRODUCT_COPY_FILES += $(foreach fn,$(MATERIAL_EFFECT_FILES),\
    $(SOUND_PATH)/effects/material/ogg/$(fn).ogg:$(TARGET_COPY_OUT_SYSTEM)/media/audio/ui/$(fn).ogg)
