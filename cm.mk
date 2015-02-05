# Inherit AOSP device configuration for inc.
$(call inherit-product, device/hp/tenderloin/full_tenderloin.mk)

# Inherit some common CyanogenMod stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cm_tenderloin
PRODUCT_BRAND := HP
PRODUCT_DEVICE := tenderloin
PRODUCT_MODEL := Touchpad
PRODUCT_RELEASE_NAME := touchpad
PRODUCT_MANUFACTURER := HP
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=touchpad \
    BUILD_FINGERPRINT="hp/hp_tenderloin/tenderloin:5.0.2/LRX22G/1649326:user/release-keys" \
    PRIVATE_BUILD_DESC="tenderloin-user 5.0.2 LRX22G 1649326 release-keys" \
    BUILD_NUMBER=228551

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := Queo
PRODUCT_VERSION_DEVICE_SPECIFIC := p1

# Boot animation
TARGET_SCREEN_HEIGHT := 768
TARGET_SCREEN_WIDTH := 1024
TARGET_BOOTANIMATION_HALF_RES := true
