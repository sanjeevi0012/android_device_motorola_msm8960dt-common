# Copyright 2014 The CyanogenMod Project

LOCAL_PATH:= $(call my-dir)
include $(BUILD_PREBUILD)
include $(CLEAR_VARS)

LOCAL_C_INCLUDES := external/sqlite/dist external/zlib

LOCAL_SRC_FILES := aplogd.c log_io.c rambuf.c aplogd_util.c

ifeq ($(APLOGD_TEST),true)
LOCAL_SHARED_LIBRARIES := liblogtest libcutils libsqlite libz
LOCAL_CFLAGS := -Wall -DAPLOGD_TEST
else
LOCAL_SHARED_LIBRARIES := liblog libcutils libsqlite libz
LOCAL_CFLAGS := -Wall
endif

LOCAL_MODULE := aplogd

LOCAL_MODULE_TAGS := eng debug

include $(BUILD_EXECUTABLE)
