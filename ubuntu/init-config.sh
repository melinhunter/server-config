#!/bin/bash

# 更新包列表
sudo apt update

# 安装简体中文和繁体中文语言包
sudo apt install -y language-pack-zh-hans language-pack-zh-hant

# 生成语言环境
sudo locale-gen zh_CN zh_CN.UTF-8 zh_TW zh_TW.UTF-8

# 设置默认语言环境（可选）
# 这里将系统的语言设置为繁体中文，如果你想默认使用简体中文，可以把zh_TW改成zh_CN
sudo update-locale LANG=zh_TW.UTF-8

# 设置时区为台北
sudo timedatectl set-timezone Asia/Taipei

# 输出当前语言设置和时区
echo "当前语言环境为："
locale
echo "当前时区为："
timedatectl

echo "语言包和时区配置已完成。"
