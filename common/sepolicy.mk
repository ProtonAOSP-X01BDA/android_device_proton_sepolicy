#
# This policy configuration will be used by all products that
# inherit from Proton
#

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    device/proton/sepolicy/common/private

BOARD_VENDOR_SEPOLICY_DIRS += \
    device/proton/sepolicy/common/dynamic \
    device/proton/sepolicy/common/vendor
