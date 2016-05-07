#!/bin/bash
setup_vim(){
	# move colors
	mkdir -p ~/.vim
	cp -rf ./vim/colors ~/.vim
	# move vimrc
	if [ -e ~/.vimrc ];then
		cp ~/.vimrc ~/.vimrc-bk-`date +%Y%m%d-%H%M%S`
	fi
	cp ./vim/vimrc ~/.vimrc
}

setup_git(){
	cp ./git/gitconfig ~/.gitconfig
}


setup_vim
setup_git
