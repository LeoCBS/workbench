#!/bin/sh
set -o errexit
set -o nounset

echo "Installing my vim"
sudo pacman --noconfirm -S vim
cd ./..
make install-vim-plugins
