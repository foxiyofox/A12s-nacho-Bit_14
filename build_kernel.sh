#!/bin/bash


export PLATFORM_VERSION=13
export ANDROID_MAJOR_VERSION=t
export ARCH=arm64

make ARCH=arm64 O=out exynos850-a12snsxx_defconfig
make ARCH=arm64 O=out -j8
##make menuconfig O=out ARCH=arm64 

## for DTB image ##

export PLATFORM_VERSION=13
export ANDROID_MAJOR_VERSION=t
export ARCH=arm64
export DTB_LOC=$(pwd)/out/arch/arm64/boot/dts
export TOOLS_LOC=$(pwd)/scripts/tools/bin
$TOOLS_LOC/mkdtboimg.py cfg_create $DTB_LOC/dtb.img --dtb-dir $DTB_LOC/exynos $TOOLS_LOC/dtb.cfg
$TOOLS_LOC/mkdtboimg.py cfg_create $DTB_LOC/dtbo.img --dtb-dir $DTB_LOC/samsung/a12s $TOOLS_LOC/dtbo.cfg


