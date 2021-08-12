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

# Base modules and settings for the system partition.
PRODUCT_PACKAGES += \
    abb \
    adbd \
    android.hardware.audio@5.0 \
    android.hardware.bluetooth.a2dp@1.0 \
    android.hidl.allocator@1.0-service \
    android.hidl.memory@1.0-impl \
    android.hidl.memory@1.0-impl.vendor \
    android.system.suspend@1.0-service \
    apexd \
    applypatch \
    appops \
    ashmemd \
    atrace \
    bcc \
    blank_screen \
    blkid \
    bootanimation \
    bootstat \
    bpfloader \
    bugreport \
    bugreportz \
    cgroups.json \
    charger \
    cmd \
    com.android.conscrypt \
    com.android.media \
    com.android.media.swcodec \
    com.android.resolv \
    com.android.tzdata \
    crash_dump \
    debuggerd\
    device_config \
    dmctl \
    dnsmasq \
    dumpstate \
    dumpsys \
    e2fsck \
    flags_health_check \
    framework-sysconfig.xml \
    fsck_msdos \
    fs_config_files_system \
    fs_config_dirs_system \
    gsid \
    gsi_tool \
    heapprofd \
    heapprofd_client \
    gatekeeperd \
    gpuservice \
    hwservicemanager \
    idmap \
    idmap2 \
    idmap2d \
    ime \
    incident \
    incidentd \
    incident_helper \
    init.environ.rc \
    init.rc \
    init_system \
    installd \
    iorapd \
    ip \
    ip6tables \
    iptables \
    ip-up-vpn \
    keystore \
    ld.config.txt \
    ld.mc \
    libaaudio \
    libamidi \
    libandroid \
    libandroidfw \
    libandroid_runtime \
    libandroid_servers \
    libartpalette-system \
    libashmemd_client \
    libaudioeffect_jni \
    libaudioroute \
    libbinder \
    libbinder_ndk \
    libc.bootstrap \
    libcamera2ndk \
    libc_malloc_debug \
    libc_malloc_hooks \
    libcutils \
    libdl.bootstrap \
    libdrmframework \
    libdrmframework_jni \
    libEGL \
    libETC1 \
    libFFTEm \
    libfilterfw \
    libgatekeeper \
    libGLESv1_CM \
    libGLESv2 \
    libGLESv3 \
    libgui \
    libhardware \
    libhardware_legacy \
    libinput \
    libinputflinger \
    libiprouteutil \
    libjnigraphics \
    libjpeg \
    liblog \
    libm.bootstrap \
    libmdnssd \
    libmedia \
    libmedia_jni \
    libmediandk \
    libmtp \
    libnetd_client \
    libnetlink \
    libnetutils \
    libneuralnetworks \
    libOpenMAXAL \
    libOpenSLES \
    libpdfium \
    libpixelflinger \
    libpower \
    libpowermanager \
    libradio_metadata \
    librtp_jni \
    libsensorservice \
    libsfplugin_ccodec \
    libskia \
    libsonic \
    libsonivox \
    libsoundpool \
    libspeexresampler \
    libsqlite \
    libstagefright \
    libstagefright_amrnb_common \
    libstagefright_enc_common \
    libstagefright_foundation \
    libstagefright_omx \
    libstdc++ \
    libsurfaceflinger \
    libsysutils \
    libui \
    libusbhost \
    libutils \
    libvorbisidec \
    libvulkan \
    libwifi-service \
    libwilhelm \
    linker \
    lmkd \
    logcat \
    logd \
    lpdump \
    lshal \
    mdnsd \
    mediacodec.policy \
    mediadrmserver \
    mediaextractor \
    mediametrics \
    media_profiles_V1_0.dtd \
    mediaserver \
    mke2fs \
    mtpd \
    ndc \
    perfetto \
    ping \
    ping6 \
    platform.xml \
    pm \
    pppd \
    privapp-permissions-platform.xml \
    racoon \
    recovery-persist \
    resize2fs \
    rss_hwm_reset \
    run-as \
    schedtest \
    screencap \
    sdcard \
    secdiscard \
    selinux_policy_system \
    sensorservice \
    service \
    servicemanager \
    settings \
    sgdisk \
    shell_and_utilities_system \
    statsd \
    storaged \
    task_profiles.json \
    tc \
    tombstoned \
    traced \
    traced_probes \
    tune2fs \
    tzdatacheck \
    uncrypt \
    usbd \
    vdc \
    viewcompiler \
    vold \
    watchdogd \
    wificond \
    wm \

# VINTF data for system image
PRODUCT_PACKAGES += \
    system_manifest.xml \
    system_compatibility_matrix.xml \

# Packages from media_system.mk
PRODUCT_PACKAGES += \
    drmserver \
    libfilterpack_imageproc \
    make_f2fs \
    vndk_snapshot_package \

# Wrapped net utils for /vendor access.
PRODUCT_PACKAGES += netutils-wrapper-1.0

# Android Runtime APEX module.
PRODUCT_PACKAGES += com.android.runtime
PRODUCT_HOST_PACKAGES += com.android.runtime

# Host tools to install
PRODUCT_HOST_PACKAGES += \
    adb \
    art-tools \
    atest \
    bcc \
    bit \
    e2fsck \
    fastboot \
    flags_health_check \
    icu-data_host_runtime_apex \
    idmap2 \
    incident_report \
    ld.mc \
    lpdump \
    mdnsd \
    minigzip \
    mke2fs \
    resize2fs \
    sgdisk \
    sqlite3 \
    tinyplay \
    tune2fs \
    tzdatacheck \
    unwind_info \
    unwind_reg_info \
    unwind_symbols \
    viewcompiler \
    tzdata_host \
    tzdata_host_runtime_apex \
    tzlookup.xml_host_runtime_apex \
    tz_version_host \
    tz_version_host_runtime_apex \

PRODUCT_COPY_FILES += \
    system/core/rootdir/ueventd.rc:root/ueventd.rc \
    system/core/rootdir/etc/hosts:system/etc/hosts

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += debug.atrace.tags.enableflags=0

# Packages included only for eng or userdebug builds, previously debug tagged
PRODUCT_PACKAGES_DEBUG := \
    adb_keys \
    arping \
    gdbserver \
    init-debug.rc \
    iotop \
    iw \
    logpersist.start \
    logtagd.rc \
    procrank \
    showmap \
    sqlite3 \
    ss \
    strace \
    sanitizer-status \
    tracepath \
    tracepath6 \
    traceroute6 \
    unwind_info \
    unwind_reg_info \
    unwind_symbols \

# Packages included only for eng/userdebug builds, when building with SANITIZE_TARGET=address
PRODUCT_PACKAGES_DEBUG_ASAN := \
    fuzz \
    honggfuzz

# Note: it is acceptable to not have a dirty-image-objects file. In that case, the special bin
#       for known dirty objects in the image will be empty.
PRODUCT_COPY_FILES += $(call add-to-product-copy-files-if-exists,\
    frameworks/base/config/dirty-image-objects:system/etc/dirty-image-objects)

# Halium-specific packages
PRODUCT_PACKAGES += \
    android.system.net.netd@1.1-service.stub \
    camera_service \
    libbiometry_fp_api \
    libcamera_compat_layer \
    libhwc2_compat_layer \
    libmedia_compat_layer \
    libubuntu_application_api \
    micshm.sh \
    minimediaservice \
