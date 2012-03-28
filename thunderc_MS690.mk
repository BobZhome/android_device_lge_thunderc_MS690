# We're on MetroPCS (TODO)
CDMA_BRAND := metropcs
CDMA_GOOGLE_BASE := android-metropcs-us
CDMA_CARRIER_ALPHA := MetroPCS
CDMA_CARRIER_NUMERIC := 311660
BLUETOOTH_FIRMWARE := BCM4325D1_004.002.004.0285.0288.hcd
SUB_MODEL := MS690

# Call the common thunderc stuff first to avoid a lot of duplication.
$(call inherit-product, device/lge/thunderc_common/thunderc_common.mk)

# Add in model specific kernel modules
PRODUCT_COPY_FILES += \
    device/lge/thunderc_MS690/files/kernel/wireless.ko:system/lib/modules/wireless.ko \
    device/lge/thunderc_MS690/files/kernel/tun.ko:system/lib/modules/tun.ko \
    device/lge/thunderc_MS690/files/kernel/cifs.ko:system/lib/modules/cifs.ko
