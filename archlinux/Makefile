chmod:
	chmod 777 ./scripts -R
keyboard:
	sudo cp ./cfg/x/10-evdev.conf /etc/X11/xorg.conf.d
	sudo cp ./cfg/x/00-keyboard.conf /etc/X11/xorg.conf.d
docker: chmod
	./scripts/docker.sh
zsh: chmod
	./scripts/zsh.sh

install-vim: chmod
	./scripts/vim.sh

essentials: chmod
	./scripts/essentials.sh

nvidia: chmod
	./scripts/nvidia.sh

golang: chmod
	./scripts/golang.sh

install-all: docker install-vim essentials

