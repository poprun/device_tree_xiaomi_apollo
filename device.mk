# Inherit from OEM SOC-common
$(call inherit-product, $(COMMON_PATH)/common.mk)

# Vendor blobs
ifneq ($(wildcard vendor/xiaomi/apollo/proprietary/),)
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/xiaomi/apollo/proprietary/,$(TARGET_COPY_OUT_RECOVERY)/root/)
endif
