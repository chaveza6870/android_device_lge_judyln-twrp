
LOCAL_PATH := device/lge/judyln

# define hardware platform
PRODUCT_PLATFORM := sdm845

#TEST
# A/B support
PRODUCT_PACKAGES += \
    brillo_update_payload \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_engine_sideload \
    update_verifier

PRODUCT_PACKAGES_DEBUG += \
    update_engine_client

# Enable update engine sideloading by including the static version of the
# boot_control HAL and its dependencies.
PRODUCT_STATIC_BOOT_CONTROL_HAL := \
    bootctrl.sdm845 \
    libgptutils \
    libz \
    libcutils


# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service \
    hwservicemanager

# cryptfs_hw can't be build using minimal-manifest twrp so using a prebuilt one
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/recovery/root/sbin/libcryptfs_hw.so:vendor/lib64/libcryptfs_hw.so
