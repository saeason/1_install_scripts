#!/bin/bash
set -e 
# set -e causes the shell to exit if any subcommand or pipeline returns a non-zero status.

echo ".....installing fonts"

sudo pacman -S --nonconfirm --needed awesome-terminal-fonts
sudo pacman -S --nonconfirm --needed adobe-source-sans-pro-fonts
sudo pacman -S --nonconfirm --needed cantarell-fonts
sudo pacman -S --nonconfirm --needed noto-fonts
sudo pacman -S --nonconfirm --needed terminus-font
sudo pacman -S --nonconfirm --needed ttf-bitstream-vera
sudo pacman -S --nonconfirm --needed ttf-dejavu
sudo pacman -S --nonconfirm --needed ttf-droid
sudo pacman -S --nonconfirm --needed ttf-hack
sudo pacman -S --nonconfirm --needed ttf-inconsolata
sudo pacman -S --nonconfirm --needed ttf-liberation
sudo pacman -S --nonconfirm --needed ttf-roboto
sudo pacman -S --nonconfirm --needed ttf-ubuntu-font-family

yaourt -S ttf-hack-powerline-git --noconfirm --needed

echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "::: Fonts have been installed. ::::::::::::::::::::::::::::::::::::::::::"
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
