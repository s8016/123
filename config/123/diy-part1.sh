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

# 添加第三方插件库
echo "src-git kenzo https://github.com/kenzok8/openwrt-packages" >> ./feeds.conf.default
echo "src-git small https://github.com/kenzok8/small" >> ./feeds.conf.default



# 添加额外软件包

# 定时设置
# git clone https://github.com/sirpdboy/luci-app-autotimeset package/luci-app-autotimeset

# 魔改版-管控过滤[集成上网时间控制，黑白名单IP过滤，网址过滤几大功能]
# git clone https://github.com/gdck/luci-app-control-weburl package/luci-app-control-weburl

# 管控过滤-普通版
# git clone https://github.com/ywt114/luci-app-control-weburl package/luci-app-control-weburl

# 定时限速
# git clone https://github.com/sirpdboy/luci-app-eqosplus package/luci-app-eqosplus

# 在线用户
# git clone https://github.com/selfcan/luci-app-onliner package/luci-app-onliner
# git clone https://github.com/haiibo/luci-app-onliner package/luci-app-onliner

# 应用过滤
# git clone https://github.com/destan19/OpenAppFilter.git package/luci-app-oaf

# 家长控制
# git clone https://github.com/sirpdboy/luci-app-parentcontrol package/luci-app-parentcontrol

# 实时流量监控
# git clone https://github.com/firker/luci-app-wrtbwmon-zh package/luci-app-wrtbwmon-zh

# 网络唤醒++
# git clone https://github.com/animegasan/luci-app-wolplus package/luci-app-wolplus





