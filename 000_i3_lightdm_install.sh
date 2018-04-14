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
sudo pacman -S --noconfirm --needed i3lock

# supporting packages for immediate i3 functionality
sudo pacman -S --noconfimr --needed calcurse
sudo pacman -S --noconfimr --needed cmus
sudo pacman -S --noconfimr --needed dmenu
sudo pacman -S --noconfimr --needed dunst
sudo pacman -S --noconfimr --needed evince
sudo pacman -S --noconfirm --needed feh
sudo pacman -S --noconfirm --needed glances
sudo pacman -S --noconfirm --needed htop
sudo pacman -S --noconfirm --needed imagemagick
sudo pacman -S --noconfirm --needed ranger
sudo pacman -S --noconfirm --needed rxvt-unicode
sudo pacman -S --noconfimr --needed thunar
sudo pacman -S --noconfimr --needed thunar-archive-plugin
sudo pacman -S --noconfimr --needed thunar-volman
sudo pacman -S --noconfirm --needed scrot
sudo pacman -S --noconfirm --needed tmux
sudo pacman -S --noconfirm --needed tree


sudo pacman -S --noconfirm --needed lightdm
sudo pacman -S --noconfirm --needed lightdm-gtk-greeter
sudo pacman -S --noconfirm --needed lightdm-gtk-greeter-settings
sudo systemctl enable lightdm.service -f
sudo systemctl set-default graphical.target

echo
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "::: i3 now installed, RESTART then sync Dropbox and install scripts. ::::"
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo
