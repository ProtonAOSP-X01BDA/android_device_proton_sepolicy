#
# This policy configuration will be used by all products that
# inherit from Proton
#

ifeq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
ifeq ($(TARGET_HAS_FUSEBLK_SEPOLICY_ON_VENDOR),true)
BOARD_SEPOLICY_M4DEFS += board_excludes_fuseblk_sepolicy=true
endif
endif

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    device/proton/sepolicy/common/private

BOARD_VENDOR_SEPOLICY_DIRS += \
    device/proton/sepolicy/common/dynamic \
    device/proton/sepolicy/common/vendor
