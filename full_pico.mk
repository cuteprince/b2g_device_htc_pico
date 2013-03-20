$(call inherit-product, device/htc/pico/full_common.mk)

FRAMEWORKS_BASE_SUBDIRS += ../../$(LOCAL_PATH)/ril/

# Hciattach
PRODUCT_COPY_FILES += \
    device/htc/pico/prebuilt/bin/hciattach:system/bin/hciattach

# Video decoding
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libmm-omxcore \
    libOmxCore \
    libOmxVidEnc \
    libOmxH264Dec \
    libOmxMpeg4Dec

# Graphics 
PRODUCT_PACKAGES += \
    libtilerenderer

# Audio
PRODUCT_PACKAGES += \
    libaudioutils  
    
# Camera
PRODUCT_PACKAGES += \
    camera.msm7627a

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Init
PRODUCT_COPY_FILES += \
    device/htc/pico/files/init.pico.rc:root/init.pico.rc \
    device/htc/pico/files/ueventd.pico.rc:root/ueventd.pico.rc \
    device/htc/pico/files/init.pico.usb.rc:root/init.pico.usb.rc \

#Boot Animation
PRODUCT_COPY_FILES += \
    device/htc/pico/prebuilt/media/bootanimation.zip:system/media/bootanimation.zip

# Camera
PRODUCT_COPY_FILES += \
    vendor/htc/pico/proprietary/lib/hw/camera.msm7627a.so:system/lib/hw/camera.msm7627a.so \
    vendor/htc/pico/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \
    vendor/htc/pico/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \
    vendor/htc/pico/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    vendor/htc/pico/proprietary/lib/libcameraface.so:system/lib/libcameraface.so \
    vendor/htc/pico/proprietary/lib/libcamerapp.so:system/lib/libcamerapp.so \
    vendor/htc/pico/proprietary/lib/libOlaEngine.so:system/lib/libOlaEngine.so \
    vendor/htc/pico/proprietary/lib/libchromatix_mt9t013_default_video.so:system/lib/libchromatix_mt9t013_default_video.so \
    vendor/htc/pico/proprietary/lib/libchromatix_mt9t013_preview.so:system/lib/libchromatix_mt9t013_preview.so \
    vendor/htc/pico/proprietary/bin/awb_camera:system/bin/awb_camera \
    vendor/htc/pico/proprietary/bin/lsc_camera:system/bin/lsc_camera \
    vendor/htc/pico/proprietary/bin/mm-qcamera-daemon:system/bin/mm-qcamera-daemon \
    device/htc/pico/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \

# OMX
PRODUCT_COPY_FILES += \
    vendor/htc/pico/proprietary/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    vendor/htc/pico/proprietary/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    vendor/htc/pico/proprietary/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    vendor/htc/pico/proprietary/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
    vendor/htc/pico/proprietary/lib/libmmosal.so:system/lib/libmmosal.so \
    vendor/htc/pico/proprietary/lib/libmmparser.so:system/lib/libmmparser.so \
    vendor/htc/pico/proprietary/lib/libmmparser_divxdrmlib.so:system/lib/libmmparser_divxdrmlib.so \
    vendor/htc/pico/proprietary/lib/libdivxdrmdecrypt.so:system/lib/libdivxdrmdecrypt.so \

# Set USB Type
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.sys.usb.config=mass_storage \
    persist.service.adb.enable=1

# Vold 
PRODUCT_COPY_FILES += \
    device/htc/pico/files/etc/vold.fstab:system/etc/vold.fstab 

# Wifi
PRODUCT_COPY_FILES += \
    device/htc/pico/prebuilt/etc/firmware/fw_bcm4330_b2.bin:system/etc/firmware/fw_bcm4330_b2.bin \
    device/htc/pico/prebuilt/etc/firmware/fw_bcm4330_apsta_b2.bin:system/etc/firmware/fw_bcm4330_apsta_b2.bin \
    device/htc/pico/prebuilt/etc/firmware/fw_bcm4330_p2p_b2.bin:system/etc/firmware/fw_bcm4330_p2p_b2.bin \
    device/htc/pico/files/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/htc/pico/files/etc/dhcpd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/htc/pico/files/etc/wifi/hostapd.conf:system/etc/wifi/hostapd.conf 

# Audio
PRODUCT_COPY_FILES += \
    device/htc/pico/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/htc/pico/prebuilt/etc/AudioBTID.csv:system/etc/AudioBTID.csv \
    device/htc/pico/prebuilt/etc/AudioPara4.csv:system/etc/AudioPara4.csv \
    device/htc/pico/prebuilt/etc/AudioPara4_WB.csv:system/etc/AudioPara4_WB.csv \
    device/htc/pico/prebuilt/etc/AudioPreProcess.csv:system/etc/AudioPreProcess.csv \
    device/htc/pico/prebuilt/etc/AudioFilter_HP.csv:system/etc/AudioFilter_HP.csv \
    vendor/htc/pico/proprietary/lib/libaudioeq.so:system/lib/libaudioeq.so \
    vendor/htc/pico/proprietary/lib/libhtc_acoustic.so:system/lib/libhtc_acoustic.so \

# Sensors
PRODUCT_COPY_FILES += \
    vendor/htc/pico/proprietary/lib/hw/sensors.msm7627a.so:system/lib/hw/sensors.msm7627a.so \

# 3D(ICS Blobs)
PRODUCT_COPY_FILES += \
    vendor/htc/pico/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    vendor/htc/pico/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    vendor/htc/pico/proprietary/lib/libgsl.so:system/lib/libgsl.so \
    vendor/htc/pico/proprietary/lib/libOpenVG.so:system/lib/libOpenVG.so \
    vendor/htc/pico/proprietary/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so \
    vendor/htc/pico/proprietary/lib/libC2D2.so:system/lib/libC2D2.so \
    vendor/htc/pico/proprietary/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
    vendor/htc/pico/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    vendor/htc/pico/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    vendor/htc/pico/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    vendor/htc/pico/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so 

# RIL
PRODUCT_COPY_FILES += \
    vendor/htc/pico/proprietary/lib/libhtc_ril.so:system/lib/libhtc_ril.so \
    vendor/htc/pico/proprietary/lib/libqc-opt.so:system/lib/libqc-opt.so \

PRODUCT_COPY_FILES += \
    vendor/htc/pico/proprietary/etc/gps.conf:system/etc \
    vendor/htc/pico/proprietary/etc/spn-conf.xml:system/etc 

# Audio DSP Profiles
PRODUCT_COPY_FILES += \
    device/htc/pico/prebuilt/etc/soundimage/srs_global.cfg:system/etc/soundimage/srs_global.cfg \
    device/htc/pico/prebuilt/etc/soundimage/srs_bypass.cfg:system/etc/soundimage/srs_bypass.cfg \
    device/htc/pico/prebuilt/etc/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    device/htc/pico/prebuilt/etc/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    device/htc/pico/prebuilt/etc/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg \
    device/htc/pico/prebuilt/etc/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    device/htc/pico/prebuilt/etc/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \

# Bluetooth
PRODUCT_COPY_FILES += \
    vendor/htc/pico/proprietary/etc/firmware/BCM4330B1_002.001.003.0221.0228.hcd:system/etc/firmware/BCM4330B1_002.001.003.0221.0228.hcd \

# Keylayouts
PRODUCT_COPY_FILES += \
    device/htc/pico/prebuilt/usr/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    device/htc/pico/prebuilt/usr/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/htc/pico/prebuilt/usr/keychars/pico-keypad.kcm.bin:system/usr/keychars/pico-keypad.kcm.bin \
    device/htc/pico/prebuilt/usr/keychars/BT_HID.kcm.bin:system/usr/keychars/BT_HID.kcm.bin \
    device/htc/pico/prebuilt/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/pico/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/htc/pico/prebuilt/usr/keylayout/BT_HID.kl:system/usr/keylayout/BT_HID.kl \
    device/htc/pico/prebuilt/usr/keylayout/pico-keypad.kl:system/usr/keylayout/pico-keypad.kl \
    device/htc/pico/prebuilt/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/pico/prebuilt/usr/keylayout/himax-touchscreen.kl:system/usr/keylayout/himax-touchscreen.kl \
    device/htc/pico/prebuilt/usr/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl \
    device/htc/pico/prebuilt/usr/idc/himax-touchscreen.idc:system/usr/idc/himax-touchscreen.idc \
    device/htc/pico/prebuilt/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \

PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)

PRODUCT_PROPERTY_OVERRIDES += \
ro.product.camera=pico \
ro.vold.umsdirtyratio=20

# Discard inherited values and use our own instead.
PRODUCT_NAME := full_pico
PRODUCT_DEVICE := pico
PRODUCT_BRAND := htc
PRODUCT_MANUFACTURER := HTC
PRODUCT_MODEL := HTC Explorer A301E

