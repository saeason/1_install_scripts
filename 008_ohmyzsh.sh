#!/bin/bash
#set -e
# set -e causes the shell to exit if any subcommand or pipeline returns a non-zero status.

echo
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "::: Installing oh-my-zsh and changing shell to zsh. :::::::::::::::::::::"
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
sleep 2

sudo pacman -Sy

sudo pacman -S --noconfirm --needed curl
sudo pacman -S --noconfirm --needed wget
sudo pacman -S --noconfirm --needed zsh

#sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sed "s/env zsh//g")"

#wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh
#sed -i.tmp 's:env zsh::g' install.sh
#sed -i.tmp 's:chsh -s .*$::g' install.sh
#sh install.sh

if [ -f ~/.zshrc ]; then
	rm -f ~/.zshrc
fi

if [ ! -e ~/.zscrc ]; then
	ln -s ~/MEGA/.zshrc /home/scott/
fi

if [ -f ~/.zshrc.pre-oh-my-zsh ]; then
	rm -f ~/.zshrc.pre-oh-my-zsh
fi

sudo chsh scott -s /usr/bin/zsh
source ~/.zshrc

echo
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "::: oh-my-zsh successfully installed. :::::::::::::::::::::::::::::::::::"
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo

sudo reboot
