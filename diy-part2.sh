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

# 移除 openwrt feeds 自带的核心包
rm -rf feeds/packages/net/{frp,xray-core,xray-plugin,v2ray-core,v2ray-plugin,v2ray-geodata,zerotier,tailscale,tailscaled,sing-box,hysteria,naiveproxy,shadowsocks-rust,tuic-client,microsocks,chinadns-ng,alist,dns2socks,dns2tcp,ipt2socks}
rm -rf feeds/luci/applications/{luci-app-passwall,luci-app-ssr-plus,luci-app-passwall,luci-app-passwall2,luci-app-zerotier}
# git clone https://github.com/sbwml/openwrt_helloworld package/helloworld

# 更新 golang 1.23 版本
# rm -rf feeds/packages/lang/golang
# git clone https://github.com/sbwml/packages_lang_golang -b 23.x feeds/packages/lang/golang

# 添加luci-app-alist源码
# git clone https://github.com/sbwml/luci-app-alist package/alist

# 替换最新版brook
rm -rf feeds/packages/net/brook
# git clone -b main https://github.com/xiaorouji/openwrt-passwall-packages.git
# cp -r openwrt-passwall-packages/brook feeds/packages/net
# rm -rf openwrt-passwall-packages

# 克隆 coolsnowwolf 的 luci 和 packages 仓库

git clone https://github.com/coolsnowwolf/luci.git coolsnowwolf-luci

git clone https://github.com/coolsnowwolf/packages.git coolsnowwolf-packages




# git clone https://github.com/xiaorouji/openwrt-passwall2.git package/passwall2

#git clone https://github.com/QiuSimons/openwrt-mos.git package/openwrt-mos

#git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns

# git clone https://github.com/immortalwrt/homeproxy.git package/luci-app-homeproxy
# git clone https://github.com/sirpdboy/luci-app-lucky.git package/lucky

# git clone https://github.com/sirpdboy/luci-app-partexp.git package/luci-app-partexp

# git clone https://github.com/xiaorouji/openwrt-passwall package/openwrt-passwall
# git clone -b luci https://github.com/xiaorouji/openwrt-passwall package/passwall

# 替换luci-app-zerotier和luci-app-frpc
rm -rf feeds/luci/applications/{luci-app-zerotier,luci-app-frpc}
# cp -r coolsnowwolf-luci/applications/{luci-app-zerotier,luci-app-frpc} feeds/luci/applications
# cp coolsnowwolf-luci/luci.mk package/
# sed -i 's|include ../../luci\.mk|include ../../../../package/luci.mk|' feeds/luci/applications/luci-app-zerotier/Makefile
# sed -i 's|include ../../luci\.mk|include ../../../../package/luci.mk|' feeds/luci/applications/luci-app-frpc/Makefile

# 替换zerotier、frp 和kcptun
rm -rf feeds/packages/net/{zerotier,frp,kcptun,haproxy}
# cp -r coolsnowwolf-packages/net/{zerotier,frp,kcptun,haproxy} feeds/packages/net

# 修改frp版本为官网最新v0.61.1 https://github.com/fatedier/frp
# rm -rf feeds/packages/net/frp
# wget https://github.com/coolsnowwolf/packages/archive/0f7be9fc93d68986c179829d8199824d3183eb60.zip -O OldPackages.zip
# unzip OldPackages.zip
# cp -r packages-0f7be9fc93d68986c179829d8199824d3183eb60/net/frp feeds/packages/net/
# rm -rf OldPackages.zip packages-0f7be9fc93d68986c179829d8199824d3183eb60s
# sed -i 's/PKG_VERSION:=0.53.2/PKG_VERSION:=0.61.1/' feeds/packages/net/frp/Makefile
# sed -i 's/PKG_HASH:=ff2a4f04e7732bc77730304e48f97fdd062be2b142ae34c518ab9b9d7a3b32ec/PKG_HASH:=95c567188d5635a7ac8897a6f93ae0568d0ac4892581a96c89874a992dd6a73c/' feeds/packages/net/frp/Makefile

# 删除克隆的 coolsnowwolf-luci 和 coolsnowwolf-packages 仓库
 rm -rf coolsnowwolf-luci
 rm -rf coolsnowwolf-packages

# git clone https://github.com/coolsnowwolf/lede.git coolsnowwolf-lede

 cp -r coolsnowwolf-lede/package/lean/upx package/
rm -rf coolsnowwolf-lede


rm -rf feeds/packages/net/{alist,adguardhome,mosdns,xray*,v2ray*,v2ray*,sing*,smartdns}
rm -rf feeds/packages/utils/v2dat
rm -rf feeds/packages/lang/golang
git clone https://github.com/kenzok8/golang feeds/packages/lang/golang



 git clone https://github.com/xiaorouji/openwrt-passwall openwrt-passwall
 git clone https://github.com/xiaorouji/openwrt-passwall2 openwrt-passwall2
 
 git clone  https://github.com/xiaorouji/openwrt-passwall-packages  openwrt-passwall-packages

 cp -rf openwrt-passwall/luci-app-passwall  openwrt-passwall2/luci-app-passwall2 feeds/luci/applications/
 
 cp -rf openwrt-passwall-packages/*  feeds/packages/net/

 rm -rf openwrt-passwall 
 
 rm -rf openwrt-passwall2 
  
 rm -rf openwrt-passwall-packages
 

git clone https://github.com/kiddin9/kwrt-packages kwrt-packages

#git clone https://github.com/shidahuilang/openwrt-package shidahuilang

cp -rf kwrt-packages/luci-app-adguardhome feeds/luci/applications/luci-app-adguardhome

cp -rf kwrt-packages/luci-app-tailscale feeds/luci/applications/luci-app-tailscale

cp -rf kwrt-packages/luci-app-zerotier feeds/luci/applications/luci-app-zerotier

cp -rf kwrt-packages/luci-app-dnsproxy feeds/luci/applications/luci-app-dnsproxy

cp -rf kwrt-packages/luci-app-dufs feeds/luci/applications/luci-app-dufs

cp -rf kwrt-packages/luci-app-diskman feeds/luci/applications/luci-app-diskman

cp -rf kwrt-packages/luci-app-gost feeds/luci/applications/luci-app-gost

cp -rf kwrt-packages/luci-app-ksmbd feeds/luci/applications/luci-app-ksmbd

cp -rf kwrt-packages/luci-app-leigod-acc feeds/luci/applications/luci-app-leigod-acc

cp -rf kwrt-packages/luci-app-openclash feeds/luci/applications/luci-app-openclash

cp -rf kwrt-packages/luci-app-partexp feeds/luci/applications/luci-app-partexp

cp -rf kwrt-packages/luci-app-supervisord feeds/luci/applications/luci-app-supervisord

cp -rf kwrt-packages/luci-app-lucky feeds/luci/applications/luci-app-lucky

cp -rf kwrt-packages/luci-app-speedtest-web feeds/luci/applications/luci-app-speedtest-web

cp -rf kwrt-packages/luci-app-filebrowser-go feeds/luci/applications/luci-app-filebrowser-go


cp -rf kwrt-packages/luci-app-istoreenhance feeds/luci/applications/luci-app-istoreenhance

cp -rf kwrt-packages/tailscale feeds/packages/net/tailscale

cp -rf kwrt-packages/dufs feeds/packages/net/dufs

cp -rf kwrt-packages/gost feeds/packages/net/gost

cp -rf kwrt-packages/speedtest-cli feeds/packages/net/speedtest-cli

cp -rf kwrt-packages/speedtest-web feeds/packages/net/speedtest-web

rm -rf kwrt-packages
