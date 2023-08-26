#ifeq ($(TARGET_DEVICE),设备名称)

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),spm8666p1_64_car)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
