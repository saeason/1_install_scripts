#!/bin/bash
set -e
# set -e causes the shell to exit if any subcommand or pipeline returns a non-zero status.

echo
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "::: Installing i3WM environment and lightdm login manager. ::::::::::::::"
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo
sleep 2

sudo pacman -Syyu

sudo pacman -S --noconfirm --needed i3-gaps
sudo pacman -S --noconfirm --needed i3status
sudo pacman -S --noconfirm --needed i3blocks
# sudo pacman -S --noconfirm --needed i3lock
sudo pacman -S --noconfirm --needed i3lock-color


# supporting packages for immediate i3 functionality
sudo pacman -S --noconfirm --needed acpi
sudo pacman -S --noconfirm --needed calcurse
sudo pacman -S --noconfirm --needed cmus
sudo pacman -S --noconfirm --needed dmenu
sudo pacman -S --noconfirm --needed dunst
sudo pacman -S --noconfirm --needed evince
sudo pacman -S --noconfirm --needed feh
sudo pacman -S --noconfirm --needed firefox
sudo pacman -S --noconfirm --needed glances
sudo pacman -S --noconfirm --needed htop
sudo pacman -S --noconfirm --needed imagemagick
sudo pacman -S --noconfirm --needed lm_sensors
sudo pacman -S --noconfirm --needed lsd
sudo pacman -S --noconfirm --needed man-db
sudo pacman -S --noconfirm --needed man-pages
sudo pacman -S --noconfirm --needed mlocate
sudo pacman -S --noconfirm --needed neofetch
sudo pacman -S --noconfirm --needed ranger
sudo pacman -S --noconfirm --needed rxvt-unicode
sudo pacman -S --noconfirm --needed thunar
sudo pacman -S --noconfirm --needed thunar-archive-plugin
sudo pacman -S --noconfirm --needed thunar-volman
sudo pacman -S --noconfirm --needed gvfs
sudo pacman -S --noconfirm --needed scrot
sudo pacman -S --noconfirm --needed syncthing
sudo pacman -S --noconfirm --needed sysstat
sudo pacman -S --noconfirm --needed tmux
sudo pacman -S --noconfirm --needed tree
sudo pacman -S --noconfirm --needed vim
sudo pacman -S --noconfirm --needed xorg-xbacklight


sudo pacman -S --noconfirm --needed lightdm
sudo pacman -S --noconfirm --needed lightdm-gtk-greeter
sudo pacman -S --noconfirm --needed lightdm-gtk-greeter-settings

sudo systemctl enable lightdm.service -f
sudo systemctl set-default graphical.target

echo
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "::: i3 now installed, RESTART then sync MEGA and run install scripts. :::"
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo
