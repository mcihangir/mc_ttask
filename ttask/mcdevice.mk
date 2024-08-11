# Usage: include this file to device/generic/car/ls mc_car_x86.mk  or aosp_car_x86.mk
#include vendor/mc/ttask/init.mcdevice.mk

include $(call all-subdir-makefiles)
LOCAL_PATH := $(call my-dir)

######################################################################
BOARD_SEPOLICY_DIRS += vendor/mc/ttask/sepolicy
#BOARD_SEPOLICY_UNION, defines files that should be combined with existing files from AOSP of the same name.
BOARD_SEPOLICY_UNION += file_contexts \
			service_context \
			mcdevice.te 
######################################################################
# mcdevice init scripts
######################################################################
# copy init.mcdevice.system.rc to /system/etc/init folder in the target file system
PRODUCT_COPY_FILES += \
    vendor/mc/ttask/init.mcdevice.rc:/system/etc/init/init.mcdevice.rc 
# init_mcdevice.rc dosyasını başlatma sırasında çalıştırmak için INIT etiketini kullanın
INIT += /system/etc/init/init.mcdevice.rc

######################################################################
# Add the following Packages
######################################################################
PRODUCT_PACKAGES += mcnativeapp \
		    mcandroidautoapp \
		    MCCarLauncher \

