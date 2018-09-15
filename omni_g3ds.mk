# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_DEVICE := g3ds
PRODUCT_NAME := omni_g3ds
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-G3DS
PRODUCT_MANUFACTURER := LGE