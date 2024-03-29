TARGET_USE_VENDOR_CAMERA_EXT := true

#Camera QC extends API
#ifeq ($(strip $(TARGET_USES_QTIC_EXTENSION)),true)
#PRODUCT_BOOT_JARS += com.qualcomm.qti.camera
#endif

#skip boot jars check
SKIP_BOOT_JARS_CHECK := true

#Enable suspend during charger mode
BOARD_CHARGER_ENABLE_SUSPEND := true

# Below projects/packages with LOCAL_MODULEs will be used by
# PRODUCT_PACKAGES to build LOCAL_MODULEs that are tagged with
# optional tag, which will not be available on target unless
# explicitly list here. Where project corresponds to the vars here
# in CAPs.

#ATRACE_HAL
ATRACE_HAL := android.hardware.atrace@1.0-service

#BSON
BSON := libbson

#C2DColorConvert
C2DCC := libc2dcolorconvert

#DATA_OS
DATA_OS := librmnetctl

HIDL_WRAPPER := qti-telephony-hidl-wrapper
HIDL_WRAPPER += qti_telephony_hidl_wrapper.xml

QTI_TELEPHONY_UTILS := qti-telephony-utils
QTI_TELEPHONY_UTILS += qti_telephony_utils.xml

#HDMID
HDMID := hdmid

#HOSTAPD
HOSTAPD := hostapd

#I420COLORCONVERT
I420CC := libI420colorconvert

#INIT
INIT += fstab.qcom
INIT += init.device.rc
INIT += init.goodix.sh
INIT += init.msm.usb.configfs.rc
INIT += init.qcom.early_boot.sh
INIT += init.qcom.post_boot.sh
INIT += init.qcom.rc
INIT += init.qcom.sh
INIT += init.qcom.usb.rc
INIT += init.recovery.qcom.rc
INIT += init.recovery.qcom.usb.rc
INIT += init.soundcontrol.rc
INIT += init.target.rc
INIT += ueventd.qcom.rc


#IPACM
IPACM += ipacm
IPACM += IPACM_cfg.xml
IPACM += ipacm-diag

#LIB_XML2
LIB_XML2 := libxml2

#memtrack
LIBMEMTRACK += memtrack.msm8953

#LIBLIGHTS
LIBLIGHTS += lights.msm8953

#LIBHWCOMPOSER
LIBHWCOMPOSER += hwcomposer.msm8953

#LIBPOWER
LIBPOWER += android.hardware.power@1.0-impl
LIBPOWER += android.hardware.power@1.0-service

#LLVM for RenderScript
#use qcom LLVM
$(call inherit-product-if-exists, external/llvm/llvm-select.mk)

#LOC_API
LOC_API := libloc_api-rpc-qc

#MEDIA_PROFILES
MEDIA_PROFILES := media_profiles.xml

#MM_AUDIO
MM_AUDIO := libOmxAacDec
MM_AUDIO += libOmxAacEnc
MM_AUDIO += libOmxAmrEnc
MM_AUDIO += libOmxEvrcEnc
MM_AUDIO += libOmxMp3Dec
MM_AUDIO += libOmxQcelp13Enc
MM_AUDIO += libOmxAc3HwDec

#MM_CORE
MM_CORE := libmm-omxcore
MM_CORE += libOmxCore

#WFD
MM_WFD := libwfdaac
MM_WFD := libwfdaac_vendor


#MM_VIDEO
MM_VIDEO := ast-mm-vdec-omx-test
MM_VIDEO += beat
MM_VIDEO += liblasic
MM_VIDEO += libOmxVdec
MM_VIDEO += libOmxVdecHevc
MM_VIDEO += libOmxVenc
MM_VIDEO += libOmxVidEnc
MM_VIDEO += libOmxSwVdec
MM_VIDEO += libOmxSwVencMpeg4
MM_VIDEO += libstagefrighthw
MM_VIDEO += mm-vdec-omx-property-mgr
MM_VIDEO += mm-vdec-omx-test
MM_VIDEO += mm-venc-omx-test
MM_VIDEO += mm-venc-omx-test720p
MM_VIDEO += mm-video-driver-test
MM_VIDEO += mm-video-encdrv-test
MM_VIDEO += ExoplayerDemo
MM_VIDEO += libaacwrapper

PROTOBUF := libprotobuf-cpp-full

#STK
STK := Stk

#STM LOG
STMLOG := libstm-log

#THERMAL_HAL
THERMAL_HAL += thermal.msm8953

#WPA
WPA := wpa_supplicant.conf
WPA += wpa_supplicant

#RCS
RCS := rcs_service_aidl
RCS += rcs_service_aidl.xml
RCS += rcs_service_aidl_static
RCS += rcs_service_api
RCS += rcs_service_api.xml

#IMS Extension module for Android Telephony
IMS_EXT := ims-ext-common
IMS_EXT += ims_ext_common.xml

PRODUCT_PACKAGES += $(ATRACE_HAL)
PRODUCT_PACKAGES += $(BSON)
PRODUCT_PACKAGES += $(C2DCC)
PRODUCT_PACKAGES += $(RCS)
PRODUCT_PACKAGES += $(DATA_OS)
PRODUCT_PACKAGES += $(HOSTAPD)
PRODUCT_PACKAGES += $(HIDL_WRAPPER)
PRODUCT_PACKAGES += $(I420CC)
PRODUCT_PACKAGES += $(INIT)
PRODUCT_PACKAGES += $(LIB_XML2)
PRODUCT_PACKAGES += $(LIBMEMTRACK)
PRODUCT_PACKAGES += $(LIBLIGHTS)
PRODUCT_PACKAGES += $(LIBAUDIOPARAM)
PRODUCT_PACKAGES += $(LIBQDMETADATA)
PRODUCT_PACKAGES += $(LIBPOWER)
PRODUCT_PACKAGES += $(MEDIA_PROFILES)
PRODUCT_PACKAGES += $(MM_AUDIO)
PRODUCT_PACKAGES += $(MM_CORE)
PRODUCT_PACKAGES += $(MM_WFD)
PRODUCT_PACKAGES += $(MM_VIDEO)
PRODUCT_PACKAGES += $(PROTOBUF)
PRODUCT_PACKAGES += $(QTI_TELEPHONY_UTILS)
PRODUCT_PACKAGES += $(STK)
PRODUCT_PACKAGES += $(THERMAL_HAL)
PRODUCT_PACKAGES += $(WPA)
PRODUCT_PACKAGES += $(IPACM)
PRODUCT_PACKAGES += $(IMS_EXT)


# MSM updater library
PRODUCT_PACKAGES += librecovery_updater_msm

# healthd libaray expanded for mode charger
PRODUCT_PACKAGES += android.hardware.health@2.1-impl
PRODUCT_PACKAGES += android.hardware.health@2.1-service

PRODUCT_COPY_FILES := \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.full.xml\
    frameworks/native/data/etc/android.hardware.camera.raw.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.raw.xml\
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.device_id_attestation.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.device_id_attestation.xml \
    frameworks/native/data/etc/android.software.verified_boot.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.verified_boot.xml

# gps/location secuity configuration file
PRODUCT_COPY_FILES += \
    device/xiaomi/mido/sec_config:$(TARGET_COPY_OUT_VENDOR)/etc/sec_config

#copy codecs_xxx.xml to (TARGET_COPY_OUT_VENDOR)/etc/
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video_le.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_c2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_c2.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_c2_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_c2_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_c2_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_c2_video.xml \
    device/xiaomi/mido/media/media_profiles.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles.xml \

PRODUCT_COPY_FILES += \
    device/xiaomi/mido/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    device/xiaomi/mido/media/media_profiles.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml

ifeq ($(strip $(TARGET_USES_NQ_NFC)),true)
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/com.nxp.mifare.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hcef.xml
endif

ifneq ($(TARGET_NOT_SUPPORT_VULKAN),true)
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.vulkan.compute-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.compute-0.xml
endif

PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version-1_0_3.xml
#PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.vulkan.version-1_1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version-1_1.xml

ifneq ($(strip $(TARGET_USES_RRO)),true)
# enable overlays to use our version of
# source/resources etc.
DEVICE_PACKAGE_OVERLAYS += device/xiaomi/mido/device/overlay
PRODUCT_PACKAGE_OVERLAYS += device/xiaomi/mido/product/overlay
endif

#Enabling Ring Tones
#include frameworks/base/data/sounds/OriginalAudio.mk

#Enabling video for live effects
-include frameworks/base/data/videos/VideoPackage1.mk

ifeq ($(TARGET_BUILD_VARIANT),user)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES+= \
    ro.adb.secure=1
else
	ro.adb.secure=0
endif

PRODUCT_PROPERTY_OVERRIDES += persist.radio.multisim.config=dsds


PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    vendor.usb.diag.func.name=diag

PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.qcomsysd.enabled=1

# framework detect libs
PRODUCT_PACKAGES += libvndfwk_detect_jni.qti
PRODUCT_PACKAGES += libqti_vndfwk_detect
PRODUCT_PACKAGES += libvndfwk_detect_jni.qti.vendor
PRODUCT_PACKAGES += libqti_vndfwk_detect.vendor