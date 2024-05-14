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
sed -i 's/ImmortalWrt/RAX3000M/g' package/base-files/files/bin/config_generate

# 修改 闪存为256M
sed -i 's/<0x580000 0x7200000>/<0x580000 0xea80000>/g' target/linux/mediatek/files-5.4/arch/arm64/boot/dts/mediatek/mt7981-cmcc-rax3000m.dts
sed -i 's/116736k/240128k/g' target/linux/mediatek/image/mt7981.mk

# 更换主题-开始#
rm -rf feeds/luci/themes/luci-theme-argon
rm -rf package/small-package/luci-app-argon*
rm -rf package/small-package/luci-theme-argon*
git clone https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config
git clone -b 18.06 https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config
git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
# 更换主题-结束#

# 增加主题-开始#
#透明主题
git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom.git package/luci-theme-infinityfreedom
#主题-edge-动态登陆界面
git clone https://github.com/garypang13/luci-theme-edge.git package/luci-theme-edge
# 增加主题-结束#


# 删除冲突的软件包
# rm -rf ./package/feeds/smpackage/core/Makefile
# rm -rf ./package/feeds/smpackage/daed/Makefile
# rm -rf ./package/feeds/smpackage/daed-next/Makefile
# rm -rf ./package/feeds/smpackage/firewall4/Makefile
# rm -rf ./package/feeds/smpackage/homeproxy/Makefile
# rm -rf ./package/feeds/smpackage/luci-app-homeproxy/Makefile
# rm -rf ./package/feeds/smpackage/luci-app-macvlan/Makefile
# rm -rf ./package/feeds/smpackage/luci-app-tencentcloud-cos/Makefile

# 删除冲突的软件包
rm -rf ./package/istore
rm -rf ./package/feeds/kenzo/luci-app-istorex
# rm -rf ./feeds/kenzo/luci-app-quickstart
# rm -rf ./feeds/kenzo/luci-app-store
# rm -rf ./feeds/kenzo/luci-lib-taskd

find ./ | grep Makefile | grep v2ray-geodata | xargs rm -f
find ./ | grep Makefile | grep mosdns | xargs rm -f

git clone https://github.com/sbwml/luci-app-mosdns -b v5 package/mosdns
git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata
rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 20.x feeds/packages/lang/golang
