#!/bin/bash
set -e
# set -e causes the shell to exit if any subcommand or pipeline returns a non-zero status.

echo
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "::: Installing compton and rofi. ::::::::::::::::::::::::::::::::::::::::"
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo
sleep 2

sudo pacman -Sy

sudo pacman -S --noconfirm --needed compton
sudo pacman -S --noconfirm --needed rofi
sudo pacman -S --noconfirm --needed w3m

#yay --noconfirm --needed polybar

if [ -f /home/scott/.calcurse ]; then
		rm -f /home/scott/.calcurse
fi

if [ -f /home/scott/.tmux.conf ]; then
		rm -f /home/scott/.tmux.conf
fi

if [ -d /home/scott/.tmux ]; then
		rm -rf /home/scott/.tmux
fi

if [ -d /home/scott/.config/cmus ]; then
		rm -rf /home/scott/.config/cmus
fi
 
if [ -d /home/scott/.config/dunst ]; then
		rm -rf /home/scott/.config/dunst
fi

if [ -d /home/scott/.config/ ranger ]; then
		rm -rf /home/scott/.config/ranger
fi

ln -s ~/MEGA/.calcurse /home/scott/
ln -s ~/MEGA/.tmux.conf /home/scott/
ln -s ~/MEGA/.tmux /home/scott/
ln -s ~/MEGA/.config/cmus /home/scott/.config/
ln -s ~/MEGA/.config/dunst /home/scott/.config/
ln -s ~/MEGA/.config/ranger /home/scott/.config/

echo
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "::: Compton and rofi are now installed. :::::::::::::::::::::::::::::::::"
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo
