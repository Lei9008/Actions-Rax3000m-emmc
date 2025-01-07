#!/bin/bash


# 修改默认IP
sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate

# web登陆密码从空密码修改为 password
sed -i 's/root:::0:99999:7:::/root:$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.::0:99999:7:::/g' package/base-files/files/etc/shadow

# 修改主机名
sed -i "s/hostname='OpenWrt'/hostname='Rax3000z'/g" package/base-files/files/bin/config_generate


# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
# ttyd免登陆
#sed -i 's|/bin/login|/bin/login -f root|g' feeds/packages/utils/ttyd/files/ttyd.config

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default

echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

# 阿里云盘WebDav
git clone https://github.com/messense/aliyundrive-webdav package/messense

# 应用过滤
git clone https://github.com/destan19/OpenAppFilter package/OpenAppFilter

# 京东签到
#git clone https://github.com/noiver/luci-app-jd-dailybonus package/luci-app-jd-dailybonus

# 商店
git clone https://github.com/linkease/istore-ui package/istore-ui
git clone https://github.com/linkease/istore package/istore

# 网易云解灰（天灵）
#git clone https://github.com/UnblockNeteaseMusic/server package/server

# 简单MESH
git clone https://github.com/ntlf9t/luci-app-easymesh package/luci-app-easymesh

# 集客AC控制器
git clone https://github.com/lwb1978/openwrt-gecoosac package/openwrt-gecoosac

# AdguardHome-app
git clone https://github.com/kongfl888/luci-app-adguardhome package/luci-app-adguardhome

# MosDns
#git clone https://github.com/sbwml/luci-app-mosdns package/luci-app-mosdns

# alist文件列表
git clone https://github.com/sbwml/luci-app-alist package/luci-app-alist
