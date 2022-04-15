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
    adbd_system_api \
    android.hardware.bluetooth.a2dp@1.0 \
    android.hidl.allocator@1.0-service \
    android.hidl.memory@1.0-impl \
    android.hidl.memory@1.0-impl.vendor \
    android.system.suspend@1.0-service \
    apexd \
    appops \
    atrace \
    bcc \
    blank_screen \
    blkid \
    service-blobstore \
    bootstat \
    bpfloader \
    bugreport \
    bugreportz \
    cgroups.json \
    charger \
    cmd \
    com.android.adbd \
    com.android.conscrypt \
    com.android.extservices \
    com.android.i18n \
    com.android.ipsec \
    com.android.media \
    com.android.media.swcodec \
    com.android.mediaprovider \
    com.android.os.statsd \
    com.android.permission \
    com.android.resolv \
    com.android.neuralnetworks \
    com.android.sdkext \
    com.android.tethering \
    com.android.tzdata \
    com.android.wifi \
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
    fsverity-release-cert-der \
    fs_config_files_system \
    fs_config_dirs_system \
    group_system \
    gsid \
    gsi_tool \
    heapprofd \
    heapprofd_client \
    gatekeeperd \
    gpuservice \
    hwservicemanager \
    idmap2 \
    idmap2d \
    ime \
    incident \
    incidentd \
    incident_helper \
    incident_helper-cmd \
    init \
    init.environ.rc \
    init.rc \
    init_system \
    installd \
    ip \
    iptables \
    ip-up-vpn \
    service-jobscheduler \
    keystore \
    ld.config.txt \
    credstore \
    ld.mc \
    libaaudio \
    libamidi \
    libandroid \
    libandroidfw \
    libandroid_runtime \
    libandroid_servers \
    libartpalette-system \
    libaudioeffect_jni \
    libaudioroute \
    libbinder \
    libbinder_ndk \
    libc.bootstrap \
    libcamera2ndk \
    libcutils \
    libdl.bootstrap \
    libdl_android.bootstrap \
    libdrmframework \
    libdrmframework_jni \
    libEGL \
    libETC1 \
    libfdtrack \
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
    libneuralnetworks_packageinfo \
    libOpenMAXAL \
    libOpenSLES \
    libpdfium \
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
    libstagefright_foundation \
    libstagefright_omx \
    libstdc++ \
    libsurfaceflinger \
    libsysutils \
    libui \
    libusbhost \
    libutils \
    libvulkan \
    libwilhelm \
    linker \
    linkerconfig \
    lmkd \
    logcat \
    logd \
    lpdump \
    lshal \
    mdnsd \
    mediacodec.policy \
    mediaextractor \
    mediametrics \
    media_profiles_V1_0.dtd \
    mediaserver \
    mke2fs \
    mtpd \
    ndc \
    passwd_system \
    perfetto \
    ping \
    ping6 \
    platform.xml \
    pm \
    pppd \
    preinstalled-packages-platform.xml \
    privapp-permissions-platform.xml \
    racoon \
    recovery-persist \
    resize2fs \
    rss_hwm_reset \
    run-as \
    sanitizer.libraries.txt \
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
    snapshotctl \
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
    vndservicemanager \
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

# Runtime (Bionic) APEX module.
PRODUCT_PACKAGES += com.android.runtime

# ART APEX module.
PRODUCT_PACKAGES += com.android.art
PRODUCT_HOST_PACKAGES += com.android.art

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
    icu-data_host_i18n_apex \
    icu_tzdata.dat_host_tzdata_apex \
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
    tzdata_host_tzdata_apex \
    tzlookup.xml_host_tzdata_apex \
    tz_version_host \
    tz_version_host_tzdata_apex \

PRODUCT_COPY_FILES += \
    system/core/rootdir/etc/hosts:system/etc/hosts

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += debug.atrace.tags.enableflags=0
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += persist.traced.enable=1

# Packages included only for eng or userdebug builds, previously debug tagged
PRODUCT_PACKAGES_DEBUG := \
    adb_keys \
    arping \
    gdbserver \
    idlcli \
    init-debug.rc \
    iotop \
    iperf3 \
    iw \
    logpersist.start \
    logtagd.rc \
    procrank \
    remount \
    showmap \
    sqlite3 \
    ss \
    start_with_lockagent \
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
    audio.hidl_compat.default \
    camera_service \
    libbiometry_fp_api \
    libcamera_compat_layer \
    libdroidmedia \
    libhwc2_compat_layer \
    libmedia_compat_layer \
    libselinux_stubs \
    libubuntu_application_api \
    libui_compat_layer \
    micshm.sh \
    minimediaservice \
