#!/bin/bash
set -e
# set -e causes the shell to exit if any subcommand or pipeline returns a non-zero status.

echo
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "::: Installing compton, polybar and rofi. :::::::::::::::::::::::::::::::"
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo
sleep 2

sudo pacman -Sy

sudo pacman -S --noconfirm --needed compton
sudo pacman -S --noconfirm --needed rofi

yaourt --noconfirm --needed polybar

ln -s ~/Dropbox/Sync/.calcurse /home/scott/
ln -s ~/Dropbox/Sync/.tmux.conf /home/scott/
ln -s ~/Dropbox/Sync/.config/cmus /home/scott/.config/
ln -s ~/Dropbox/Sync/.config/polybar /home/scott/.config/
ln -s ~/Dropbox/Sync/.config/ranger /home/scott/.config/
ln -s ~/Dropbox/Sync/.config/dunst /home/scott/.config/

echo
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "::: Compton, polybar and rofi are now installed. ::::::::::::::::::::::::"
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo
