#!/bin/bash


export PLATFORM_VERSION=13
export ANDROID_MAJOR_VERSION=t
export ARCH=arm64

make ARCH=arm64 O=out exynos850-a12snsxx_defconfig
make ARCH=arm64 O=out -j8
##make menuconfig O=out ARCH=arm64 
