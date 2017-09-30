# IRSC
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/sec_config:system/vendor/etc/sec_config

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

PRODUCT_PACKAGES += \
    libjson

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.df.dev_name=rmnet_usb0 \
    persist.data.df.iwlan_mux=9 \
    persist.data.iwlan.enable=true \
    persist.data.mode=concurrent \
    persist.data.netmgrd.qos.enable=true \
    persist.radio.VT_CAM_INTERFACE=2 \
    persist.radio.VT_ENABLE=1 \
    persist.radio.VT_HYBRID_ENABLE=1 \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.vendor.radio.custom_ecc=1 \
    persist.radio.data_con_rprt=true \
    persist.radio.multisim.config=dsds \
    persist.vendor.radio.rat_on=combine \
    persist.vendor.radio.sib16_support=1 \
    persist.rmnet.data.enable=true \
    ril.subscription.types=NV,RUIM \
    rild.libpath=/system/vendor/lib64/libril-qc-qmi-1.so \
    ro.ct.device.model=XMP-2016030 \
    ro.telephony.default_network=20 \
    ro.use_data_netmgrd=true \
    telephony.lteOnCdmaDevice=1

# Radio
PRODUCT_PACKAGES += \
    libcnefeatureconfig \
    librmnetctl \
    libxml2

# Net
PRODUCT_PACKAGES += \
    android.system.net.netd@1.0 \
    netutils-wrapper-1.0
