#!/usr/bin/env bash
# Created by: Ayaat Ahmedou
# Created on: Sept 2024
# AWS Debian and Linux .dotfiles and setup script

sudo apt update
sudo apt upgrade -y

# common programs
sudo apt remove w3m -y
sudo apt install gh -y
sudo apt install stow -y
sudo apt install nodejs npm -y

# install neovim from source
mkdir temp
cd temp
sudo apt-get install ninja-build gettext cmake unzip curl
git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
cd ..
cd ..
sudo rm -r ./temp

# install languages
curl -fsSL https://bun.sh/install | bash
sudo apt install -y default-jdk

# copy over the scripts folder into the home directory
cp -r ./scripts/ ~/:
