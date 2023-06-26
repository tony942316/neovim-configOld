# My Personal Neovim Configuration

# Table Of Contents
1. [Platform Agnostic](#agnostic)
2. [Ubuntu](#ubuntu)
3. [Arch](#arch)

## Platform Agnostic <a name="agnostic"></a>

### Clone The Repo
```sh
git clone https://github.com/tony942316/neovim-config.git ~/.config/nvim
```
### Solve Dependency Issues
```sh
:checkhealth
```

## Ubuntu <a name="ubuntu"></a>

### Option 1) Download And Run The Installer
```sh
curl -LO https://github.com/tony942316/neovim-config/releases/latest/download/ubuntuinstall.sh &&
chmod +x ubuntuinstall.sh &&
./ubuntuinstall.sh
```

### Option 2) Clone The Repo
First clone the repo
```sh
git clone https://github.com/tony942316/neovim-config.git ~/.config/nvim
```
Second download latest version of neovim (Using appimage)
Alternatives: https://github.com/neovim/neovim/wiki/Installing-Neovim
```sh
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage &&
chmod u+x nvim.appimage &&
sudo mv /usr/bin/nvim
```
Third download dependencies
```sh
sudo apt install -y build-essential git make zip unzip curl tree gcc cmake \
    python3 python3-venv python3-pip nodejs npm cargo ripgrep clang \
    clangd clang-tidy fuse &&
sudo npm i -g neovim &&
pip install pynvim $$
cargo install tree-sitter-cli &&
cp ~/.cargo/bin/tree-sitter /usr/bin/tree-sitter
```

## Arch <a name="arch"></a>

### Option 1) Download And Run The Installer
```sh
curl -LO https://github.com/tony942316/neovim-config/releases/latest/download/archinstall.sh &&
chmod +x archinstall.sh &&
./archinstall.sh
```

### Option 2) Clone The Repo
First clone the repo
```sh
git clone https://github.com/tony942316/neovim-config.git \
    ~/.config/nvim
```

Second download dependencies
```sh
sudo pacman -Syu --noconfirm git zip unzip wget curl tree \
    make cmake gcc clang python python-pynvim \
    nodejs npm rust ripgrep neovim &&
sudo npm install -g npm@latest &&
sudo npm i -g neovim
```

## Mac/Windows
TBD
