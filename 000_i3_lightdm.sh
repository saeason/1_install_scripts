#!/bin/bash
set -e
# set -e causes the shell to exit if any subcommand or pipeline returns a non-zero status.

echo ".....sym-linking .i3 to the home folder"
sleep 1

cd $HOME && ln -s ~/Dropbox/Sync/.zshrc .

echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "::: .i3 folder sym-linked to the home folder. :::::::::::::::::::::::::::: "
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
sleep 1
