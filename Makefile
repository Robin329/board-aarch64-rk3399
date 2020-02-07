# Rochchip rk3399-roc-pc target board
_BASE    = 1
ARCH     = arm64
XARCH    = aarch64


LINUX   ?= v5.5

BUILDROOT?= 2019.11

ROOTDEV ?= /dev/nfs
FSTYPE  ?= ext4
ORIIMG  ?= arch/$(ARCH)/boot/Image

ORIDTB  ?= arch/$(ARCH)/boot/dts/rockchip/rk3399-roc-pc.dtb
KIMAGE  ?= $(BSP_KERNEL)/$(LINUX)/Image
DTB     ?= $(BSP_KERNEL)/$(LINUX)/rk3399-roc-pc.dtb
ROOTFS  ?= $(BSP_ROOT)/$(BUILDROOT)/rootfs.cpio.gz
HROOTFS ?= $(BSP_ROOT)/$(BUILDROOT)/rootfs.$(FSTYPE)

# prebuilt toolchains, please download it while: make toolchain
# Available origin: internal, bootlin, arm, linaro
CCORI   ?= internal
include $(PREBUILT_TOOLCHAINS)/$(XARCH)/Makefile
