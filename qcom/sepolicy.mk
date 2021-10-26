#
# This policy configuration will be used by all qcom products
# that inherit from Proton
#

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    device/proton/sepolicy/qcom/private

BOARD_VENDOR_SEPOLICY_DIRS += \
    device/proton/sepolicy/qcom/dynamic \
    device/proton/sepolicy/qcom/vendor

ifeq (,$(filter msm8960 msm8226 msm8610 msm8974 apq8084 msm8909 msm8916 msm8952 msm8992 msm8994 msm8937 msm8953 msm8996 msm8998 sdm660 sdm710 sdm845, $(TARGET_BOARD_PLATFORM)))
BOARD_SEPOLICY_M4DEFS += \
    persist_block_device=vendor_persist_block_device \
    sysfs_battery_supply=vendor_sysfs_battery_supply \
    sysfs_usb_supply=vendor_sysfs_usb_supply
endif
