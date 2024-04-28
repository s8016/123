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
sed -i 's/192.168.1.1/192.168.1.1/g' package/base-files/files/bin/config_generate

# 修改 主机名称
sed -i 's/ImmortalWrt/RAX-3000Z-加强版/g' package/base-files/files/bin/config_generate

#删除冲突的软件包
#rm -rf ./package/feeds/smpackage/core/Makefile
#rm -rf ./package/feeds/smpackage/daed/Makefile
#rm -rf ./package/feeds/smpackage/daed-next/Makefile
#rm -rf ./package/feeds/smpackage/firewall4/Makefile
#rm -rf ./package/feeds/smpackage/homeproxy/Makefile
#rm -rf ./package/feeds/smpackage/luci-app-homeproxy/Makefile
#rm -rf ./package/feeds/smpackage/luci-app-macvlan/Makefile
#rm -rf ./package/feeds/smpackage/luci-app-tencentcloud-cos/Makefile
