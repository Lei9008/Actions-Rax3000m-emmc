#!/bin/bash

#更改默认地址为192.168.5.1
#sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate

#web登陆密码从空密码修改为 password
sed -i 's/root:::0:99999:7:::/root:$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.::0:99999:7:::/g' package/base-files/files/etc/shadow

#修改主机名
sed -i "s/hostname='OpenWrt'/hostname='RAX3000Z'/g" package/base-files/files/bin/config_generate

