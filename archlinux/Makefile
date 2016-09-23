chmod:
	chmod 777 ./scripts -R
keyboard:
	sudo cp ./cfg/x/10-evdev.conf /etc/X11/xorg.conf.d/10-evdev.conf
docker: chmod
	./scripts/docker.sh
zsh: chmod
	./scripts/zsh.sh

install-vim: chmod
	./scripts/vim.sh

