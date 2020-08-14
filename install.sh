#!/bin/bash

# path
CURRENT_DIR=`pwd`
LOCAL_DIR=/usr/local/bin

# common func
lnif() {
    if [ -e "$1"]; then
        ln -sf "$1" "$2"
    fi
}

# sudo 无密码

# 软链配置文件到对应目录 & 增加可执行权限
sudo lnif "$CURRENT_DIR/gerrit" "$LOCAL_DIR/gerrit"
sudo chmod a+x "$LOCAL_DIR/gerrit"

