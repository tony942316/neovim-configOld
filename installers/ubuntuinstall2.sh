#!/bin/bash

if [ `whoami` != root ]; then
    echo Please Run As Sudo
    exit
fi

apt install -y build-essential git make zip unzip curl tree gcc cmake \
    python3 python3-venv python3-pip nodejs npm cargo ripgrep clang \
    clangd clang-tidy fuse

pip install pynvim
npm i -g neovim

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod +x nvim.appimage
mv nvim.appimage /usr/bin/nvim

git clone https://github.com/tony942316/neovim-config.git ~/.config/nvim

echo DONE
rm ubuntuinstall2.sh
