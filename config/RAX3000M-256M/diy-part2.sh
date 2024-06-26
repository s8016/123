#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# 修改 Lan IP(修改后面的IP）
sed -i 's/192.168.6.1/192.168.1.1/g' package/base-files/files/bin/config_generate

# 修改 主机名称
# sed -i 's/ImmortalWrt/RAX3000M/g' package/base-files/files/bin/config_generate
sed -i 's/MT7981_AX3000/RAX3000M/g' package/mtk/drivers/wifi-profile/files/mt7981/mt7981.dbdc.b0.dat
sed -i 's/MT7981_AX3000/RAX3000M/g' package/mtk/drivers/wifi-profile/files/mt7981/mt7981.dbdc.b1.dat

# 修改 闪存为256M
sed -i 's/<0x580000 0x7200000>/<0x580000 0xea80000>/g' target/linux/mediatek/files-5.4/arch/arm64/boot/dts/mediatek/mt7981-cmcc-rax3000m.dts
sed -i 's/116736k/240128k/g' target/linux/mediatek/image/mt7981.mk


# 删除冲突的软件包
# rm -rf ./feeds/kenzo/luci-app-istorex
rm -rf ./feeds/small/luci-app-mosdns
rm -rf ./feeds/small/mosdns

# add mosdns
# find ./feeds | grep Makefile | grep v2ray-geodata | xargs rm -f
# find ./feeds | grep Makefile | grep mosdns | xargs rm -f

rm -rf feeds/packages/net/v2ray-geodata
rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 20.x feeds/packages/lang/golang
git clone https://github.com/sbwml/luci-app-mosdns -b v5 package/mosdns
git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata
