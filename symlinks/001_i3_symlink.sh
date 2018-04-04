#!/bin/bash
set -e
# set -e causes the shell to exit if any subcommand or pipeline returns a non-zero status.

echo
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "Symlinking i3 from Dropbox to the /home directory."
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
sleep 2

if [ -d ~/.i3 ]; then
	if [ -L ~/.i3 ]; then
		# symbolic link specific commands go here
		rm ~/.i3
	else
		# directory commands go here
		rm -rf ~/.i3
	fi
fi

if [ -d ~/.config/i3 ]; then
	if [ -L ~/./config/i3 ]; then
		# symbolic link specific commands go here
		rm ~/.config/i3
	else
		# directory commands go here
		rm -rf ~/.config/i3
	fi
fi

cd $HOME && ln -s ~/Dropbox/Sync/.i3 .

echo
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "i3 files successfully linked to the /home directory."
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo
