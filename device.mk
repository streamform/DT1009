#
LOCAL_PATH := device/wutong/spm8666p1_64_car
# A/B
# AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
    boot \
    system \
    dtbo \
    product \
    vendor \
    
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL
PRODUCT_PACKAGES += \
     android.hardware.boot@1.1-impl
     #     android.hardware.boot@1.0-service

PRODUCT_PACKAGES += \
     bootctrl.mt6771

PRODUCT_STATIC_BOOT_CONTROL_HAL := \
     bootctrl.mt6771 \
     libgptutils \
     libz \
     libcutils

PRODUCT_PACKAGES += \
     otapreopt_script \
     cppreopts.sh \
     update_engine \
     update_verifier \
     update_engine_sideload \
