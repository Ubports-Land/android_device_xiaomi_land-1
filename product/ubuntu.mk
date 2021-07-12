################
#UTouch SUPPORT#
################

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.qti_bsp.abi=1 \
    ro.adb.secure=0 \
    ro.secure=0

# Wakelock
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qc.sensors.wl_dis=true

# telepathy-ofono quirks
PRODUCT_PROPERTY_OVERRIDES += \
    ro.t-o.quirk.forcesink=sink.primary_output \
    ro.t-o.quirk.forcesource=source.surround_sound_primary_input

# droidmedia doesn't support HAL3 yet
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.camera.HAL3.enabled=0 \
    camera.lowpower.record.enable=1 \
    camera.fifo.disable=1 \
    persist.camera.shutter.disable=1 \
    persist.media.metrics.enabled=0 

# Aethercast
PRODUCT_PROPERTY_OVERRIDES += \
    ubuntu.widi.supported=1 

# Ubuntu Touch Fix MTP connection
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ubuntu/setupusb:system/halium/usr/share/usbinit/setupusb \
    $(LOCAL_PATH)/ubuntu/mtp-stat.conf:system/halium/etc/init/mtp-state.conf

PRODUCT_PACKAGES += \
    libubuntu_application_api \
    libcameraservice \
    libdroidmedia \
    libcamera_compat_layer \
    libmedia_compat_layer \
    libui_compat_layer \
    libsf_compat_layer \
    minimediaservice \
    minisfservice \
    libminisf \
    libaudioflingerglue \
    direct_ubuntu_application_sensors_c_api_for_hybris_test \
    direct_ubuntu_application_sensors_for_hybris_test \
    direct_ubuntu_application_gps_c_api_for_hybris_test \
    camera_service \
    miniafservice

## Power off charging mode
PRODUCT_PACKAGES += \
    charger_res_images

# UBPorts
PRODUCT_PACKAGES += \
ubuntu/environment

## Disable FakeSensorServer so UBports can use it
MINIMEDIA_SENSORSERVER_DISABLE := 1

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ubuntu/70-android.rules:system/halium/lib/udev/rules.d/70-android.rules \
    $(LOCAL_PATH)/ubuntu/timekeeper.conf:system/halium/etc/init/timekeeper.conf \    
    $(LOCAL_PATH)/ubuntu/ofono.override:system/halium/etc/init/ofono.override \
    $(LOCAL_PATH)/ubuntu/servicemanager.rc:system/etc/init/servicemanager.rc \
    $(LOCAL_PATH)/ubuntu/init_hcismd_up.sh:system/etc/init_hcismd_up.sh \
    $(LOCAL_PATH)/ubuntu/apparmor.d/abstractions/base:system/halium/etc/apparmor.d/abstractions/base \
    $(LOCAL_PATH)/ubuntu/apparmor.d/local/usr.bin.media-hub-server:system/halium/etc/apparmor.d/local/usr.bin.media-hub-server \
    $(LOCAL_PATH)/ubuntu/apparmor.d/hardware/graphics.d/apparmor-easyprof-ubuntu_android:system/halium/usr/share/apparmor/hardware/graphics.d/apparmor-easyprof-ubuntu_android \
    $(LOCAL_PATH)/ubuntu/apparmor.d/hardware/video.d/apparmor-easyprof-ubuntu_android:system/halium/usr/share/apparmor/hardware/video.d/apparmor-easyprof-ubuntu_android \
    $(LOCAL_PATH)/ubuntu/powerd-config.xml:system/halium/usr/share/powerd/device_configs/config-default.xml \
    $(LOCAL_PATH)/ubuntu/display.conf:system/halium/etc/ubuntu-touch-session.d/android.conf \
    $(LOCAL_PATH)/ubuntu/environment:system/halium/etc/environment \
    $(LOCAL_PATH)/ubuntu/anbox-installer:system/halium/usr/bin/anbox-installer \
    $(LOCAL_PATH)/ubuntu/anbox-tool:system/halium/usr/bin/anbox-tool \
    $(LOCAL_PATH)/ubuntu/ssh-enablement:system/halium/usr/bin/ssh-enablement \
    $(LOCAL_PATH)/ubuntu/mtp-enable:system/halium/usr/bin/mtp-enable \
    $(LOCAL_PATH)/ubuntu/device-hacks.conf:system/halium/etc/init/device-hacks.conf \
    $(LOCAL_PATH)/ubuntu/usensord.conf:system/halium/usr/share/upstart/sessions/usensord.conf \
    $(LOCAL_PATH)/ubuntu/lib/libdataitems.so:system/lib/libdataitems.so \
    $(LOCAL_PATH)/ubuntu/lib/libdrplugin_client.so:system/lib/libdrplugin_client.so \
    $(LOCAL_PATH)/ubuntu/lib/libDRPlugin.so:system/lib/libDRPlugin.so \
    $(LOCAL_PATH)/ubuntu/lib/libevent_observer.so:system/lib/libevent_observer.so \
    $(LOCAL_PATH)/ubuntu/lib/libI420colorconvert.so:system/lib/libI420colorconvert.so \
    $(LOCAL_PATH)/ubuntu/lib/libizat_core.so:system/lib/libizat_core.so \
    $(LOCAL_PATH)/ubuntu/lib/liblbs_core.so:system/lib/liblbs_core.so \
    $(LOCAL_PATH)/ubuntu/lib/libloc_adapter.so:system/lib/libloc_adapter.so \
    $(LOCAL_PATH)/ubuntu/lib/libloc_api-rpc-qc.so:system/lib/libloc_api-rpc-qc.so \
    $(LOCAL_PATH)/ubuntu/lib/libloc_api_v02.so:system/lib/libloc_api_v02.so \
    $(LOCAL_PATH)/ubuntu/lib/liblocationservice_glue.so:system/lib/liblocationservice_glue.so \
    $(LOCAL_PATH)/ubuntu/lib/liblocationservice.so:system/lib/liblocationservice.so \
    $(LOCAL_PATH)/ubuntu/lib/libloc_ds_api.so:system/lib/libloc_ds_api.so \
    $(LOCAL_PATH)/ubuntu/lib/liblowi_client.so:system/lib/liblowi_client.so \
    $(LOCAL_PATH)/ubuntu/lib/libmm-color-convertor.so:system/lib/libmm-color-convertor.so \
    $(LOCAL_PATH)/ubuntu/lib/libulp2.so:system/lib/libulp2.so \
    $(LOCAL_PATH)/ubuntu/zram-ut.conf:system/halium/etc/init/zram-ut.conf 
