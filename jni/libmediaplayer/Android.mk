LOCAL_PATH := $(call my-dir)
TARGET_PLATFORM := android-8
include $(CLEAR_VARS)

LOCAL_CFLAGS := -D__STDC_CONSTANT_MACROS

WITH_ANDROID_VECTOR := true
LOCAL_ALLOW_UNDEFINED_SYMBOLS := true

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/../libffmpeg \
	$(LOCAL_PATH)/../include \
	$(LOCAL_PATH)/../include/android

LOCAL_SHARED_LIBRARIES := jniaudio-prebuild jnivideo-prebuild

LOCAL_SRC_FILES := \
	packetqueue.cpp \
	output.cpp \
	mediaplayer.cpp \
	decoder.cpp \
	decoder_audio.cpp \
	decoder_video.cpp \
	thread.cpp

#ifeq ($(WITH_ANDROID_VECTOR),true)
LOCAL_SRC_FILES += \
	android/atomic.c \
	android/atomic-android-arm.S \
	android/SharedBuffer.cpp \
	android/VectorImpl.cpp
#endif

#LOCAL_ALLOW_UNDEFINED := true
#LOCAL_PRELINK_MODULE := false


#LOCAL_PREBUILT_LIBS := libjniaudio.so libjnivideo.so

LOCAL_LDLIBS := -llog

LOCAL_STATIC_LIBRARIES := avcodec avformat avutil postproc swscale

LOCAL_MODULE := mediaplayer

include $(BUILD_STATIC_LIBRARY)
#$(call import-module,jniaudio-prebuild)
#$(call import-module,jnivideo-prebuild) 
