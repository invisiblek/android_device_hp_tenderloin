LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

#
## reboot command
#
#
LOCAL_SRC_FILES := rebootcmd.c
LOCAL_MODULE := rebootcmd
LOCAL_C_INCLUDES := system/core/init
LOCAL_CFLAGS:= -Wall
LOCAL_MODULE_TAGS:= eng
LOCAL_SHARED_LIBRARIES := \
    libcutils \
    liblog
include $(BUILD_EXECUTABLE)
