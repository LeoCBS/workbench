#!/bin/sh

echo "Installing zsh and my zshrc"
sudo apt-get install -y zsh
cd /tmp
git clone https://github.com/leocbs/my.zsh.git
git clone https://github.com/leocbs/my.fonts.git
cd my.fonts
make
cd ../my.zsh
make

echo "configuring zsh as default shell"
chsh -s /bin/zsh $USER
