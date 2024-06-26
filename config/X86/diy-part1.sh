#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo "src-git kenzo https://github.com/kenzok8/openwrt-packages" >> ./feeds.conf.default
echo "src-git small https://github.com/kenzok8/small" >> ./feeds.conf.default
#echo "src-git OpenClash https://github.com/vernesong/OpenClash.git" >> ./feeds.conf.default

#sed -i '$a src-git smpackage https://github.com/kenzok8/small-package' feeds.conf.default



#添加额外软件包

#应用过滤
#git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter

#家长控制
git clone https://github.com/sirpdboy/luci-app-parentcontrol package/luci-app-parentcontrol

#定时设置
#git clone https://github.com/sirpdboy/luci-app-autotimeset package/luci-app-autotimeset

#定时限速
#git clone https://github.com/sirpdboy/luci-app-eqosplus package/luci-app-eqosplus

#魔改版-管控过滤[集成上网时间控制，黑白名单IP过滤，网址过滤几大功能]
git clone https://github.com/gdck/luci-app-control-weburl package/luci-app-control-weburl

# 在线用户
git clone https://github.com/selfcan/luci-app-onliner package/luci-app-onliner












