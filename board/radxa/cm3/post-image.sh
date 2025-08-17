#!/bin/sh

# Copy DTB(s) manually to the boot partition or boot output directory
# Adjust the path to where Buildroot places your DTB(s)

# Example: if you're using the device tree from the kernel
DTB_SRC="${BUILD_DIR}/linux-main/arch/arm64/boot/dts/rockchip"
DTB_DST="${TARGET_DIR}/boot"
DTB_FILE="rk3566-radxa-cm3-io.dtb"

mkdir -p "$DTB_DST"

# Copy specific DTB(s) or all
cp "$DTB_SRC"/"$DTB_FILE" "$DTB_DST/"
