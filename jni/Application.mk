APP_PROJECT_PATH := $(call my-dir)/..
#APP_PROJECT_PATH := $(NDK_PROJECT_PATH)
APP_BUILD_SCRIPT   := $(APP_PROJECT_PATH)/jni/Android.mk 
APP_CFLAGS += -Wfatal-errors -w

IN_NDK 			:= true
#APP_MODULES     	:= libavcodec libavformat avutil postproc swscale jniaudio-prebuild jnivideo-prebuild mediaplayer
#APP_MODULES     	:= avcodec avformat avutil postproc swscale jniaudio-prebuild jnivideo-prebuild mediaplayer ffmpeg_jni
# libffmpeg_jni
