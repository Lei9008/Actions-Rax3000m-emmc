#!/bin/bash

#更改默认地址为192.168.5.1
sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate

#web登陆密码从空密码修改为 password
sed -i 's/root:::0:99999:7:::/root:$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.::0:99999:7:::/g' package/base-files/files/etc/shadow

#修改主机名
sed -i "s/hostname='OpenWrt'/hostname='RAX3000Z'/g" package/base-files/files/bin/config_generate

# Add a feed source
sed -i '$a src-git kwrt_core https://dl.openwrt.ai/releases/24.10/targets/mediatek/filogic/6.6.66' feeds.conf.default
sed -i '$a src-git kwrt_base https://dl.openwrt.ai/releases/24.10/packages/aarch64_cortex-a53/base' feeds.conf.default
sed -i '$a src-git kwrt_packages https://dl.openwrt.ai/releases/24.10/packages/aarch64_cortex-a53/packages' feeds.conf.default
sed -i '$a src-git kwrt_luci https://dl.openwrt.ai/releases/24.10/packages/aarch64_cortex-a53/luci' feeds.conf.default
sed -i '$a src-git kwrt_routing https://dl.openwrt.ai/releases/24.10/packages/aarch64_cortex-a53/routing' feeds.conf.default
sed -i '$a src-git kwrt_kiddin9 https://dl.openwrt.ai/releases/24.10/packages/aarch64_cortex-a53/kiddin9' feeds.conf.default
 git pull
     ./scripts/feeds update -a
     ./scripts/feeds install -a
