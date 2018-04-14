#!/bin/bash
set -e
# set -e causes the shell to exit if any subcommand or pipeline returns a non-zero status.

echo
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "::: Sym-linking .zshrc from Dropbox to the /home directory. ::::::::::::::"
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo
sleep 2

if [ -f ~/.zshrc ]; then
	rm -f ~/.zshrc
fi

if [ ! -e ~/.zscrc ]; then  
	ln -s ~/Dropbox/Sync/.zshrc /home/scott/
fi

if [ -f ~/.zshrc.pre-oh-my-zsh ]; then
	rm -f ~/.zshrc.pre-oh-my-zsh 
fi

echo
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "::: .zshrc files successfully linked to the /home directory. ::::::::::::"
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo

