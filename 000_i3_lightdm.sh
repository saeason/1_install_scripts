#!/bin/bash
set -e
# set -e causes the shell to exit if any subcommand or pipeline returns a non-zero status.

echo ".....installing i3WM environment and lightdm login manager"

sudo pacman -S --noconfirm --needed i3-gaps i3status i3blocks dmenu rxvt-unicode 

sudo pacman -S --noconfirm --needed lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings
sudo systemctl enable lightdm.service

echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "::: i3 and lightdm are now instlaled. :::::::::::::::::::::::::::::::::::: "
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
