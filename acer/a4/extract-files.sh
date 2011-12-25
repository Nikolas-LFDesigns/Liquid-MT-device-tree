#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
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

DEVICE=a4
MANUFACTURER=acer

mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
#copy some stuff to ./dev
adb pull /system/lib/libcameraservice.so ./dev/lib
adb pull /system/lib/libcamera_client.so ./dev/lib
#copy custom wpa_supplicant config
cp ./dev/wpa_supplicant.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
cp ./dev/hostapd.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
#-----------------------------
adb pull /system/wifi/ar6000.ko ./proprietary/modules
adb pull /system/wifi/ath6k/AR6003/hw2.0/athtcmd_ram.bin ./proprietary/firmware
adb pull /system/wifi/ath6k/AR6003/hw2.0/athwlan.bin.z77 ./proprietary/firmware
adb pull /system/wifi/ath6k/AR6003/hw2.0/bdata.SD31.bin ./proprietary/firmware
adb pull /system/wifi/ath6k/AR6003/hw2.0/bdata.SD31_1.bin ./proprietary/firmware
adb pull /system/wifi/ath6k/AR6003/hw2.0/bdata.SD31_2.bin ./proprietary/firmware
adb pull /system/wifi/ath6k/AR6003/hw2.0/data.patch.bin ./proprietary/firmware
adb pull /system/wifi/ath6k/AR6003/hw2.0/otp.bin.z77 ./proprietary/firmware
#-----------------------------------------
adb pull /system/usr/keychars/qwerty.kcm.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/usr/keychars/acer-hs-butt.kcm.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/usr/keychars/qwerty2.kcm.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/usr/keylayout/AVRCP.kl ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/usr/keylayout/a4-gpio-keypad.kl ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/usr/keylayout/acer-hs-butt.kl ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/usr/keylayout/cypress-ts.kl ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/usr/keylayout/qwerty.kl ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
#-----------------------------------------
adb pull /system/etc/dhcpcd/dhcpcd.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary

adb pull /system/etc/01_qcomm_omx.cfg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
#adb pull /system/etc/a4_tp_fw.hex ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
#adb pull /system/etc/sku-voicemail-conf.xml ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/etc/voicemail-conf.xml ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/etc/init.paso.bt.sh ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
#adb pull /system/etc/init.paso.coex.sh ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
#adb pull /system/etc/init.paso.dhcp.sh ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
#adb pull /system/etc/init.paso.fm.sh ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
#adb pull /system/etc/init.paso.sdio.sh ../../../vendor/$MANUFACTURER/$DEVICE/proprietary

#-----------------------------------------
adb pull /system/lib/egl/libEGL_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/egl/libGLESv1_CM_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/egl/libGLESv2_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/egl/libq3dtools_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libgsl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary

adb pull /system/lib/libauth.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libcm.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libcommondefs.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libdiag.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libdsi_netctrl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libdsm.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libdss.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libdsutils.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libgsdi_exp.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libgstk_exp.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libloc_api-rpc-qc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libmmgsdilib.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnv.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/liboncrpc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libpbmlib.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libqueue.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libqdp.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libqmi.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libqmiservices.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libril.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libril-acer-1.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libril-acer-qmi-1.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libril-acerril-hook-oem.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libwms.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libwmsts.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary

adb pull /system/lib/libaudioalsa.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libaudioeq.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libcamera.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libC2D2.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libdec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libdsprofile.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
#adb pull /system/lib/libfm_wan_api.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libfuse.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libgemini.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libjni_AcerNativeMethod.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libmmipl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libmm-abl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libmmjpeg.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libmvs.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnetmgr.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libOlaCameraJNI.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libOlaEngine.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/liboem_rapi.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/liboemcamera.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/liboverlay.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libpdapi.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libpdsm_atl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libping_mdm.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libpng.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libsensors_algos.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libTPCal.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libuim.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary

adb pull /system/lib/hw/sensors.paso.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/hw/overlay.default.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary

adb pull /system/lib/libidl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
#adb pull /system/lib/libiprouteutil.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary

adb pull /system/lib/libqcomm_omx.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libOmxAacDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull '/system/lib/libomx_aacdec_sharedlibrary.so' ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libOmxAacEnc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libOmxAdpcmDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libOmxAmrDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull '/system/lib/libomx_amrdec_sharedlibrary.so' ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libOmxAmrEnc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull '/system/lib/libomx_amrenc_sharedlibrary.so' ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libOmxAmrRtpDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libOmxAmrwbDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull '/system/lib/libomx_avcdec_sharedlibrary.so' ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libOmxEvrcDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libOmxEvrcEnc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull '/system/lib/libomx_m4vdec_sharedlibrary.so' ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull '/system/lib/libomx_mp3dec_sharedlibrary.so' ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libOmxMp3Dec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libOmxQcelp13Dec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libOmxQcelp13Enc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull '/system/lib/libomx_sharedlibrary.so' ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
#adb pull /system/lib/libOmxVdec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
#adb pull /system/lib/libOmxVenc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libOmxWmaDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
#-----------------------------------------
adb pull /system/bin/akmd8975 ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/artagent ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/athtestcmd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
#adb pull /system/bin/ds_fmc_appd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
#adb pull /system/bin/fm_qsoc_patches ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/get_sensors_calib ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/get_wlan_mac ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/hci_qcomm_init ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/hostapd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/hostapd_cli ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/hostapd_wps ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/ip ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/mm-omx-devmgr ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/netmgrd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/port-bridge ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/qmuxd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/wlan_tool ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/wmiconfig ../../../vendor/$MANUFACTURER/$DEVICE/proprietary

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g > ../../../vendor/$MANUFACTURER/$DEVICE/$DEVICE-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
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

# This file is generated by device/acer/__DEVICE__/extract-files.sh

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES += \\
    vendor/acer/__DEVICE__/proprietary/libril.so:obj/lib/libril.so \\
    vendor/acer/__DEVICE__/proprietary/libaudioalsa.so:obj/lib/libaudioalsa.so \\
    vendor/acer/__DEVICE__/proprietary/libcamera.so:obj/lib/libcamera.so \\
    vendor/acer/__DEVICE__/proprietary/liboemcamera.so:obj/lib/liboemcamera.so \\

# All the blobs necessary for paso
PRODUCT_COPY_FILES += \\
    vendor/acer/__DEVICE__/proprietary/qwerty.kcm.bin:/system/usr/keychars/qwerty.kcm.bin \\
    vendor/acer/__DEVICE__/proprietary/acer-hs-butt.kcm.bin:/system/usr/keychars/acer-hs-butt.kcm.bin \\
    vendor/acer/__DEVICE__/proprietary/qwerty2.kcm.bin:/system/usr/keychars/qwerty2.kcm.bin \\
    vendor/acer/__DEVICE__/proprietary/AVRCP.kl:/system/usr/keylayout/AVRCP.kl \\
    vendor/acer/__DEVICE__/proprietary/a4-gpio-keypad.kl:/system/usr/keylayout/a4-gpio-keypad.kl \\
    vendor/acer/__DEVICE__/proprietary/acer-hs-butt.kl:/system/usr/keylayout/acer-hs-butt.kl \\
    vendor/acer/__DEVICE__/proprietary/cypress-ts.kl:/system/usr/keylayout/cypress-ts.kl \\
    vendor/acer/__DEVICE__/proprietary/qwerty.kl:/system/usr/keylayout/qwerty.kl \\
# ETC
PRODUCT_COPY_FILES += \\
    vendor/acer/__DEVICE__/proprietary/dhcpcd.conf:/system/etc/dhcpcd/dhcpcd.conf \\
    vendor/acer/__DEVICE__/proprietary/hostapd.conf:/system/etc/wifi/hostapd.conf \\
    vendor/acer/__DEVICE__/proprietary/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf \\
    vendor/acer/__DEVICE__/proprietary/01_qcomm_omx.cfg:/system/etc/01_qcomm_omx.cfg \\
    vendor/acer/__DEVICE__/proprietary/voicemail-conf.xml:/system/etc/voicemail-conf.xml \\
    vendor/acer/__DEVICE__/proprietary/init.paso.bt.sh:/system/etc/init.paso.bt.sh \\
# EGL libs
PRODUCT_COPY_FILES += \\
    vendor/acer/__DEVICE__/proprietary/libEGL_adreno200.so:/system/lib/egl/libEGL_adreno200.so \\
    vendor/acer/__DEVICE__/proprietary/libGLESv1_CM_adreno200.so:/system/lib/egl/libGLESv1_CM_adreno200.so \\
    vendor/acer/__DEVICE__/proprietary/libGLESv2_adreno200.so:/system/lib/egl/libGLESv2_adreno200.so \\
    vendor/acer/__DEVICE__/proprietary/libq3dtools_adreno200.so:/system/lib/egl/libq3dtools_adreno200.so \\
    vendor/acer/__DEVICE__/proprietary/libgsl.so:/system/lib/libgsl.so
# ril libs
PRODUCT_COPY_FILES += \\
    vendor/acer/__DEVICE__/proprietary/libauth.so:/system/lib/libauth.so \\
    vendor/acer/__DEVICE__/proprietary/libcm.so:/system/lib/libcm.so \\
    vendor/acer/__DEVICE__/proprietary/libcommondefs.so:/system/lib/libcommondefs.so \\
    vendor/acer/__DEVICE__/proprietary/libdiag.so:/system/lib/libdiag.so \\
    vendor/acer/__DEVICE__/proprietary/libdsi_netctrl.so:/system/lib/libdsi_netctrl.so \\
    vendor/acer/__DEVICE__/proprietary/libdsm.so:/system/lib/libdsm.so \\
    vendor/acer/__DEVICE__/proprietary/libdss.so:/system/lib/libdss.so \\
    vendor/acer/__DEVICE__/proprietary/libdsutils.so:/system/lib/libdsutils.so \\
    vendor/acer/__DEVICE__/proprietary/libgsdi_exp.so:/system/lib/libgsdi_exp.so \\
    vendor/acer/__DEVICE__/proprietary/libgstk_exp.so:/system/lib/libgstk_exp.so \\
    vendor/acer/__DEVICE__/proprietary/libloc_api-rpc-qc.so:/system/lib/libloc_api-rpc-qc.so \\
    vendor/acer/__DEVICE__/proprietary/libmmgsdilib.so:/system/lib/libmmgsdilib.so \\
    vendor/acer/__DEVICE__/proprietary/libnv.so:/system/lib/libnv.so \\
    vendor/acer/__DEVICE__/proprietary/liboncrpc.so:/system/lib/liboncrpc.so \\
    vendor/acer/__DEVICE__/proprietary/libpbmlib.so:/system/lib/libpbmlib.so \\
    vendor/acer/__DEVICE__/proprietary/libqueue.so:/system/lib/libqueue.so \\
    vendor/acer/__DEVICE__/proprietary/libqdp.so:/system/lib/libqdp.so \\
    vendor/acer/__DEVICE__/proprietary/libqmi.so:/system/lib/libqmi.so \\
    vendor/acer/__DEVICE__/proprietary/libqmiservices.so:/system/lib/libqmiservices.so \\
    vendor/acer/__DEVICE__/proprietary/libril.so:/system/lib/libril.so \\
    vendor/acer/__DEVICE__/proprietary/libril-acer-1.so:/system/lib/libril-acer-1.so \\
    vendor/acer/__DEVICE__/proprietary/libril-acer-qmi-1.so:/system/lib/libril-acer-qmi-1.so \\
    vendor/acer/__DEVICE__/proprietary/libril-acerril-hook-oem.so:/system/lib/libril-acerril-hook-oem.so \\
    vendor/acer/__DEVICE__/proprietary/libwms.so:/system/lib/libwms.so \\
    vendor/acer/__DEVICE__/proprietary/libwmsts.so:/system/lib/libwmsts.so
# hw libs
PRODUCT_COPY_FILES += \\
    vendor/acer/__DEVICE__/proprietary/sensors.paso.so:/system/lib/hw/sensors.paso.so \\
    vendor/acer/__DEVICE__/proprietary/overlay.default.so:/system/lib/hw/overlay.default.so \\
# libs
PRODUCT_COPY_FILES += \\
    vendor/acer/__DEVICE__/proprietary/libaudioalsa.so:/system/lib/libaudioalsa.so \\
    vendor/acer/__DEVICE__/proprietary/libaudioeq.so:/system/lib/libaudioeq.so \\
    vendor/acer/__DEVICE__/proprietary/libcamera.so:/system/lib/libcamera.so \\
    vendor/acer/__DEVICE__/proprietary/libC2D2.so:/system/lib/libC2D2.so \\
    vendor/acer/__DEVICE__/proprietary/libdec.so:/system/lib/libdec.so \\
    vendor/acer/__DEVICE__/proprietary/libdsprofile.so:/system/lib/libdsprofile.so \\
    vendor/acer/__DEVICE__/proprietary/libfuse.so:/system/lib/libfuse.so \\
    vendor/acer/__DEVICE__/proprietary/libgemini.so:/system/lib/libgemini.so \\
    vendor/acer/__DEVICE__/proprietary/libidl.so:/system/lib/libidl.so \\
    vendor/acer/__DEVICE__/proprietary/libjni_AcerNativeMethod.so:/system/lib/libjni_AcerNativeMethod.so \\
    vendor/acer/__DEVICE__/proprietary/libmmipl.so:/system/lib/libmmipl.so \\
    vendor/acer/__DEVICE__/proprietary/libmm-abl.so:/system/lib/libmm-abl.so \\
    vendor/acer/__DEVICE__/proprietary/libmmjpeg.so:/system/lib/libmmjpeg.so \\
    vendor/acer/__DEVICE__/proprietary/libmvs.so:/system/lib/libmvs.so \\
    vendor/acer/__DEVICE__/proprietary/libnetmgr.so:/system/lib/libnetmgr.so \\
    vendor/acer/__DEVICE__/proprietary/libOlaCameraJNI.so:/system/lib/libOlaCameraJNI.so \\
    vendor/acer/__DEVICE__/proprietary/libOlaEngine.so:/system/lib/libOlaEngine.so \\
    vendor/acer/__DEVICE__/proprietary/liboem_rapi.so:/system/lib/liboem_rapi.so \\
    vendor/acer/__DEVICE__/proprietary/liboemcamera.so:/system/lib/liboemcamera.so \\
    vendor/acer/__DEVICE__/proprietary/liboverlay.so:/system/lib/liboverlay.so \\
    vendor/acer/__DEVICE__/proprietary/libpdapi.so:/system/lib/libpdapi.so \\
    vendor/acer/__DEVICE__/proprietary/libpdsm_atl.so:/system/lib/libpdsm_atl.so \\
    vendor/acer/__DEVICE__/proprietary/libping_mdm.so:/system/lib/libping_mdm.so \\
    vendor/acer/__DEVICE__/proprietary/libpng.so:/system/lib/libpng.so \\
    vendor/acer/__DEVICE__/proprietary/libsensors_algos.so:/system/lib/libsensors_algos.so \\
    vendor/acer/__DEVICE__/proprietary/libTPCal.so:/system/lib/libTPCal.so \\
    vendor/acer/__DEVICE__/proprietary/libuim.so:/system/lib/libuim.so
#omx
PRODUCT_COPY_FILES += \\
    vendor/acer/__DEVICE__/proprietary/libqcomm_omx.so:/system/lib/libqcomm_omx.so \\
    vendor/acer/__DEVICE__/proprietary/libOmxAacDec.so:/system/lib/libOmxAacDec.so \\
    vendor/acer/__DEVICE__/proprietary/libomx_aacdec_sharedlibrary.so:/system/lib/libomx_aacdec_sharedlibrary.so \\
    vendor/acer/__DEVICE__/proprietary/libOmxAacEnc.so:/system/lib/libOmxAacEnc.so \\
    vendor/acer/__DEVICE__/proprietary/libOmxAdpcmDec.so:/system/lib/libOmxAdpcmDec.so \\
    vendor/acer/__DEVICE__/proprietary/libOmxAmrDec.so:/system/lib/libOmxAmrDec.so \\
    vendor/acer/__DEVICE__/proprietary/libomx_amrdec_sharedlibrary.so:/system/lib/libomx_amrdec_sharedlibrary.so \\
    vendor/acer/__DEVICE__/proprietary/libOmxAmrEnc.so:/system/lib/libOmxAmrEnc.so \\
    vendor/acer/__DEVICE__/proprietary/libomx_amrenc_sharedlibrary.so:/system/lib/libomx_amrenc_sharedlibrary.so \\
    vendor/acer/__DEVICE__/proprietary/libOmxAmrRtpDec.so:/system/lib/libOmxAmrRtpDec.so \\
    vendor/acer/__DEVICE__/proprietary/libOmxAmrwbDec.so:/system/lib/libOmxAmrwbDec.so \\
    vendor/acer/__DEVICE__/proprietary/libomx_avcdec_sharedlibrary.so:/system/lib/libomx_avcdec_sharedlibrary.so \\
    vendor/acer/__DEVICE__/proprietary/libOmxEvrcDec.so:/system/lib/libOmxEvrcDec.so \\
    vendor/acer/__DEVICE__/proprietary/libOmxEvrcEnc.so:/system/lib/libOmxEvrcEnc.so \\
    vendor/acer/__DEVICE__/proprietary/libomx_m4vdec_sharedlibrary.so:/system/lib/libomx_m4vdec_sharedlibrary.so \\
    vendor/acer/__DEVICE__/proprietary/libomx_mp3dec_sharedlibrary.so:/system/lib/libomx_mp3dec_sharedlibrary.so \\
    vendor/acer/__DEVICE__/proprietary/libOmxMp3Dec.so:/system/lib/libOmxMp3Dec.so \\
    vendor/acer/__DEVICE__/proprietary/libOmxQcelp13Dec.so:/system/lib/libOmxQcelp13Dec.so \\
    vendor/acer/__DEVICE__/proprietary/libOmxQcelp13Enc.so:/system/lib/libOmxQcelp13Enc.so \\
    vendor/acer/__DEVICE__/proprietary/libomx_sharedlibrary.so:/system/lib/libomx_sharedlibrary.so \\
    vendor/acer/__DEVICE__/proprietary/libOmxWmaDec.so:/system/lib/libOmxWmaDec.so \\
# binaries
PRODUCT_COPY_FILES += \\
    vendor/acer/__DEVICE__/proprietary/akmd8975:/system/bin/akmd8975 \\
    vendor/acer/__DEVICE__/proprietary/artagent:/system/bin/artagent \\
    vendor/acer/__DEVICE__/proprietary/athtestcmd:/system/bin/athtestcmd \\
    vendor/acer/__DEVICE__/proprietary/get_sensors_calib:/system/bin/get_sensors_calib \\
    vendor/acer/__DEVICE__/proprietary/get_wlan_mac:/system/bin/get_wlan_mac \\
    vendor/acer/__DEVICE__/proprietary/hci_qcomm_init:/system/bin/hci_qcomm_init \\
    vendor/acer/__DEVICE__/proprietary/hostapd:/system/bin/hostapd \\
    vendor/acer/__DEVICE__/proprietary/hostapd_cli:/system/bin/hostapd_cli \\
    vendor/acer/__DEVICE__/proprietary/hostapd_wps:/system/bin/hostapd_wps \\
    vendor/acer/__DEVICE__/proprietary/ip:/system/bin/ip \\
    vendor/acer/__DEVICE__/proprietary/mm-omx-devmgr:/system/bin/mm-omx-devmgr \\
    vendor/acer/__DEVICE__/proprietary/netmgrd:/system/bin/netmgrd \\
    vendor/acer/__DEVICE__/proprietary/port-bridge:/system/bin/port-bridge \\
    vendor/acer/__DEVICE__/proprietary/qmuxd:/system/bin/qmuxd \\
    vendor/acer/__DEVICE__/proprietary/wlan_tool:/system/bin/wlan_tool \\
    vendor/acer/__DEVICE__/proprietary/wmiconfig:/system/bin/wmiconfig
EOF

./setup-makefiles.sh
