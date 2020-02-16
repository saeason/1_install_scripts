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
	ln -s ~/MEGA/.vimrc /home/scott/
fi

if [ -d ~/.vim ]; then
	rm -rf ~/.vim
fi

if [ ! -e ~/.vim ]; then  
	ln -s ~/MEGA/.vim /home/scott/
fi

# the following lines install the instant-markdown dependencies

sudo pacman -Sy

sudo pacman -S --noconfirm --needed nodejs
sudo pacman -S --noconfirm --needed npm
sudo pacman -S --noconfirm --needed xdg-utils

sudo npm -g install instant-markdown-d

cp -R ~/MEGA/Sync/st /home/scott/

echo
echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::;::::::::::::::::::::::::"
echo "st terminal copied to home directory, cd into the st folder and sudo make install"
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::;:::::::::::::::::::::::::"
echo

echo
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "::: vimrc files successfully linked to the /home directory. :::::::::::::"
echo "::: Instant markdown is isntalled. ::::::::::::::::::::::::::::::::::::::"
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo

