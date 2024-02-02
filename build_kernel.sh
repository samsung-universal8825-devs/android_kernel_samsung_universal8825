#!/bin/bash

export PATH=~/roms/21/prebuilts/clang/kernel/linux-x86/clang-r416183b/bin:$PATH
export PATH=$(pwd)/toolchain/build/build-tools/path/linux-x86:$(pwd)/toolchain/prebuilts/gas/linux-x86:$PATH

mkdir out

make O=$(pwd)/out PLATFORM_VERSION=13 ANDROID_MAJOR_VERSION=s LLVM=1 LLVM_IAS=1 ARCH=arm64 TARGET_SOC=s5e8825 CROSS_COMPILE=~/roms/21/prebuilts/clang/kernel/linux-x86/clang-r416183b/bin/aarch64-linux-gnu- s5e8825-m33xxx_defconfig
make O=$(pwd)/out PLATFORM_VERSION=13 ANDROID_MAJOR_VERSION=s LLVM=1 LLVM_IAS=1 ARCH=arm64 TARGET_SOC=s5e8825 CROSS_COMPILE=~/roms/21/prebuilts/clang/kernel/linux-x86/clang-r416183b/bin/aarch64-linux-gnu- -j32
