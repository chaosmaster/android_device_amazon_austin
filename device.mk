$(call inherit-product, build/target/product/full_base_telephony.mk)

LOCAL_PATH := device/amazon/austin

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

DEVICE_FOLDER := device/amazon/austin

PRODUCT_COPY_FILES += \
	$(LOCAL_KERNEL):kernel
