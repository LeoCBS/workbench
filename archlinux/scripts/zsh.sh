#!/bin/sh
set -e

echo "Installing zsh and my zshrc"
sudo pacman -S --noconfirm zsh
cd ./../
make install-zsh

echo "configuring zsh as default shell"
chsh -s /bin/zsh $USER
