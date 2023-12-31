#!/bin/bash

sudo apt install -y build-essential git make zip unzip curl tree gcc cmake \
    python3 python3-venv python3-pip nodejs npm cargo ripgrep clang \
    clangd clang-tidy fuse

sudo npm i -g neovim
pip install pynvim

mkdir -p ~/.local/bin
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod +x nvim.appimage
mv nvim.appimage ~/.local/bin/nvim

cargo install tree-sitter-cli
cp ~/.cargo/bin/tree-sitter \
    ~/.local/bin/tree-sitter

git clone https://github.com/tony942316/neovim-config.git \
    ~/.config/nvim

echo DONE
echo Please Refresh PATH Or Restart System
rm ubuntuinstall.sh
