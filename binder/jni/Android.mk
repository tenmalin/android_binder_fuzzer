LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_CFLAGS += -fPIE
LOCAL_LDFLAGS += -fPIE -pie
#LOCAL_C_INCLUDES += frameworks/base/include system/core/include  
LOCAL_MODULE    := rawbinder
LOCAL_SRC_FILES := rawbinder.c fuzz.c
LOCAL_LDLIBS := -L$(SYSROOT)/usr/lib -llog

include $(BUILD_EXECUTABLE)