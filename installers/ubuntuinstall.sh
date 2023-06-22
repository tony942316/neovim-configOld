#!/bin/bash

if [ `whoami` != root ]; then
    echo Please Run As Sudo
    exit
fi

apt install -y build-essential
apt install -y git
apt install -y make
apt install -y zip
apt install -y unzip
apt install -y curl
apt install -y gcc
apt install -y cmake
apt install -y python3
apt install -y python3-venv
apt install -y ripgrep
apt install -y clang
apt install -y clangd
apt install -y clang-tidy
apt install -y nodejs
apt install -y npm
apt install -y fuse
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod +x nvim.appimage
mv nvim.appimage /usr/bin/nvim
git clone https://github.com/tony942316/neovim-config.git ~/.config/nvim
