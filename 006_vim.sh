#!/bin/bash
set -e
# set -e causes the shell to exit if any subcommand or pipeline returns a non-zero status.

echo
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "::: Sym-linking .vimrc from Dropbox to the /home directory. ::::::::::::::"
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo
sleep 2

if [ -f ~/.vimrc ]; then
	rm -f ~/.vimrc
fi

if [ ! -e ~/.vimrc ]; then  
	cd $HOME && ln -s ~/Dropbox/Sync/.vimrc .
fi

if [ -d ~/.vim ]; then
	rm -rf ~/.vim
fi

if [ ! -e ~/.vim ]; then  
	cd $HOME && ln -s ~/Dropbox/Sync/.vim .
fi

# the following 2 line install the instant-markdown dependencies
sudo pacman -Sy --noconfirm --needed nodejs npm xdg-utils
sudo npm -g install instant-markdown-d

# type base into a shell and press tab to see colorscheme choices
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

echo
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "::: .vimrc files successfully linked to the /home directory. ::::::::::::"
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo

