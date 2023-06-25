# My Personal Neovim Configuration

## Ubuntu

### Download Installer
```sh
curl -LO https://github.com/tony942316/neovim-config/releases/latest/download/ubuntuinstall2.sh
```

### Fix Installer XD
```sh
chmod +x ubuntuinstall2.sh \
sed -i -e 's/\r$//' ubuntuinstall2
```

### Install Dependencies
```sh

```

### Clone The Repo
```sh
git clone https://github.com/tony942316/neovim-config.git ~/.config/nvim
```

### Download Latest Neovim Release
```sh
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage \
chmod u+x nvim.appimage \
sudo mv /usr/bin/nvim
```
