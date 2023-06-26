#!/bin/bash

sudo pacman -Syu --noconfirm git zip unzip wget curl tree \
    make cmake gcc clang python python-pynvim \
    nodejs npm rust ripgrep neovim

sudo npm install -g npm@latest
sudo npm i -g neovim

git clone https://github.com/tony942316/neovim-config.git \
    ~/.config/nvim

rm archinstall.sh
