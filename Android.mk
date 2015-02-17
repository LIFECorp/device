# dummy Android.mk to disable htc & samsung codes developed by google to be built in MediaTek's solution
# if you want to place your codes under this folder, please include your "Android.mk" here

ifeq ($(strip $(MTK_EMULATOR_SUPPORT)),yes)
LOCAL_PATH:= $(call my-dir)
hardware_modules := generic
include $(call all-makefiles-under,$(LOCAL_PATH)/generic/*)
endif