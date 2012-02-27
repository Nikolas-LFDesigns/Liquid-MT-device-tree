#!/bin/sh

src_path=~/android/system

cd $src_path

patch -p1 < $src_path/device/acer/a4/dev/SoftapControllerATH.diff
patch -p1 < $src_path/device/acer/a4/dev/HostApConf.diff
patch -p1 < $src_path/device/acer/a4/dev/WextDriver.diff

sed '1i\
add_lunch_combo cyanogen_a4-eng' $src_path/vendor/cyanogen/vendorsetup.sh > $src_path/vendor/cyanogen/vendorsetup.sh_tmp
mv $src_path/vendor/cyanogen/vendorsetup.sh_tmp $src_path/vendor/cyanogen/vendorsetup.sh

sed '2i\
    $(LOCAL_DIR)/cyanogen_a4.mk \\' $src_path/vendor/cyanogen/products/AndroidProducts.mk > $src_path/vendor/cyanogen/products/AndroidProducts.mk_tmp
mv $src_path/vendor/cyanogen/products/AndroidProducts.mk_tmp $src_path/vendor/cyanogen/products/AndroidProducts.mk

cat >> $src_path/vendor/cyanogen/products/cyanogen_a4.mk <<EOF
# Inherit AOSP device configuration for liquid Mt.
\$(call inherit-product, device/acer/a4/device_a4.mk)

# Inherit some common cyanogenmod stuff.
\$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
\$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#

TARGET_NO_KERNEL := true
PRODUCT_NAME := cyanogen_a4  
PRODUCT_BRAND := acer
PRODUCT_DEVICE := a4
PRODUCT_MODEL := Liquid MT
PRODUCT_MANUFACTURER := Acer
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=a4_generic1 BUILD_ID=GRK39F BUILD_FINGERPRINT=google/passion/passion:2.3.6/GRK39F/189904:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.6 GRK39F 189904 release-keys"

# Extra Liquid overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/a4

PRODUCT_PACKAGES += \\
    FM \\
    hcitool \\
    Torch

# Set ro.modversion
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \\
        ro.modversion=CyanogenMod-7-\$(shell date +%m%d%Y)-NIGHTLY-LiquidMt
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \\
            ro.modversion=CyanogenMod-7.1.0-LiquidMt
    else
        PRODUCT_PROPERTY_OVERRIDES += \\
            ro.modversion=CyanogenMod-7.1.0-LiquidMt-KANG
    endif
endif

# Copy HDPI prebuilt files
PRODUCT_COPY_FILES +=  \\
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
EOF

