LOCAL_PATH := $(call my-dir)
#NDK_MODULE_PATH := $(LOCAL_PATH)

include $(CLEAR_VARS)
LOCAL_MODULE := jniaudio-prebuild
LOCAL_SRC_FILES := libjniaudio.so
include $(PREBUILT_SHARED_LIBRARY)
