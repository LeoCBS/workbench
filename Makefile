all: install-plugins

update-vimrc:
	cp vimrc $(HOME)/.vimrc

install: 
	echo "Copying vimrc"
	cp my.vim/vimrc $(HOME)/.vimrc
	rm -rf $(HOME)/.vim

install-plugins: install
	echo "Installing Vundle"
	rm -rf $(HOME)/.vim/bundle 
	git clone https://github.com/gmarik/Vundle.vim.git $(HOME)/.vim/bundle/Vundle.vim
	echo "Installing Plugins"
	yes | vim +PluginInstall +qall

install-zsh:
	chmod 777 environment.sh
	./environment.sh
