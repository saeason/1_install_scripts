#!/bin/bash
set -e
# set -e causes the shell to exit if any subcommand or pipeline returns a non-zero status.

echo
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "Symlinking .zshrc from Dropbox to the /home directory."
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
sleep 2

if [ -f ~/.zshrc ]; then
	rm -f ~/.zshrc
fi

if [ ! -e ~/.zscrc ]; then  
	cd $HOME && ln -s ~/Dropbox/Sync/.zshrc .
fi

if [ -f ~/.zshrc.pre-oh-my-zsh ]; then
	rm -f ~/.zshrc.pre-oh-my-zsh 
fi

#cd $HOME && ln -s ~/Dropbox/Sync/.zshrc .
#source ~/.zshrc
#sudo sed -i 's/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"nanotech\"/g' ~/.zshrc

echo
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo ".zshrc files successfully linked to the /home directory."
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo

