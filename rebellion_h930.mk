$(call inherit-product, device/lge/h930/full_h930.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/rebellion/config/common_full_phone.mk)

# Installs gsi keys into ramdisk, to boot a GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Overlays (inherit after vendor/cm to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Device identifiers

PRODUCT_NAME := rebellion_h930
PRODUCT_BRAND := lge
PRODUCT_MANUFACTURER := LGE
PRODUCT_RELEASE_NAME := V30

PRODUCT_GMS_CLIENTID_BASE := android-om-lg

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="joan" \
    PRODUCT_DEVICE="joan" \
    PRODUCT_NAME="joan_global_com" \
    PRIVATE_BUILD_DESC="joan_global_com-user 9 PKQ1.190414.001 1918215284654 release-keys"

BUILD_FINGERPRINT="lge/joan_global_com/joan:9/PKQ1.190414.001/1918215284654:user/release-keys"

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += ro.product.model ro.vendor.product.model

# Gapps
TARGET_GAPPS_ARCH := arm64

# Bootanimation Res
TARGET_BOOT_ANIMATION_RES := 1080

TARGET_INCLUDE_STOCK_ARCORE := true

# Maintainer
PRODUCT_PROPERTY_OVERRIDES += \
ro.rebellion.maintainer=Jimbomodder🤔

# Rebellion OFFICiAL
REBELLION_BUILD_TYPE=OFFICIAL
