#!/bin/sh

echo "Installing zsh"
sudo apt-get install - y zsh

cd ./my.zsh
make

echo "configuring zsh as default shell"
chsh -s /bin/zsh $USER