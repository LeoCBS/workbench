VIM_HOME=$(HOME)/.vim

copy-vim-ftplugin:
	echo "Install ftplugin"
	cp -pr ./my.vim/ftplugin  $(VIM_HOME)


update-vimrc: copy-vim-ftplugin
	cp my.vim/vimrc $(HOME)/.vimrc

install-vim: copy-vim-ftplugin 
	echo "Copying vimrc"
	cp my.vim/vimrc $(HOME)/.vimrc
	rm -rf $(HOME)/.vim

install-vim-plugins: install-vim
	echo "Installing Vundle"
	rm -rf $(HOME)/.vim/bundle 
	git clone https://github.com/gmarik/Vundle.vim.git $(HOME)/.vim/bundle/Vundle.vim
	echo "Installing Plugins"
	yes | vim +PluginInstall +qall

install-zsh:
	chmod 777 environment.sh
	./environment.sh

update-zsh-alias:
	cp my.zsh/zsh/aliases.zsh ~/.zsh/aliases.zsh
	source ~/.zsh/aliases.zsh

install-tmux:
	set +e
	sudo add-apt-repository ppa:pi-rho/dev
	sudo apt-get  update
	sudo apt-get install tmux
	set -e
