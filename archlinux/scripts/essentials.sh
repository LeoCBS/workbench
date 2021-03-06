#!/bin/sh

sudo pacman --noconfirm -S git openssh curl dmenu xclip unrar slock numlockx wget nautilus xautolock openssh pavucontrol ttf-dejavu
sudo pacman --noconfirm -S firefox tig meld ipython ngrep msc-generator

git config --global push.default simple
git config --global user.name "Leonardo Cesar Borges"
#it config --global user.email "leocborgess@gmail.com"
git config --global core.editor "vim"

echo "Configure time properly"
sudo ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
sudo timedatectl set-ntp true

echo "Configure keyboard layout"
sudo localectl set-keymap br-abnt2
