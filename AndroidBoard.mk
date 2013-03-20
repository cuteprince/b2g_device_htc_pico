LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

include $(LOCAL_PATH)/AndroidKernel.mk

ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)
