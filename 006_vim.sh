#!/bin/bash
set -e
# set -e causes the shell to exit if any subcommand or pipeline returns a non-zero status.

echo
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "::: Sym-linking .vimrc from Dropbox to the /home directory. :::::::::::::"
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo
sleep 2

if [ -f ~/.vimrc ]; then
	rm -f ~/.vimrc
fi

if [ ! -e ~/.vimrc ]; then  
	ln -s ~/Dropbox/Sync/.vimrc /home/scott/
fi

if [ -d ~/.vim ]; then
	rm -rf ~/.vim
fi

if [ ! -e ~/.vim ]; then  
	ln -s ~/Dropbox/Sync/.vim /home/scott/
fi

# the following lines install the instant-markdown dependencies

sudo pacman -Sy

sudo pacman -S --noconfirm --needed nodejs
sudo pacman -S --noconfirm --needed npm
sudo pacman -S --noconfirm --needed xdg-utils

sudo npm -g install instant-markdown-d

# type base into a shell and press tab to see colorscheme choices
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

echo
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "::: vimrc files successfully linked to the /home directory. :::::::::::::"
echo "::: Instant markdown and Base16 colours also isntalled. :::::::::::::::::"
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo

