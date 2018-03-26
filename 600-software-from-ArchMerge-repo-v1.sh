#!/bin/bash
set -e

echo "ArchMerge Repository"

sudo pacman -S archmerge-arc-themes-git --noconfirm --needed
sudo pacman -S archmerge-i3wm-git --noconfirm --needed
sudo pacman -S archmerge-iso-skel-git --noconfirm --needed
#sudo pacman -S archmerge-oblogout-themes-git --noconfirm --needed
sudo pacman -S archmerge-polybar-git --noconfirm --needed
sudo pacman -S archmerge-root-git --noconfirm --needed
sudo pacman -S archmerge-termite-themes-git --noconfirm --needed
#sudo pacman -S archmerge-tint2-themes-git --noconfirm --needed
sudo pacman -S archmerge-wallpapers-git --noconfirm --needed
sudo pacman -S archmerge-xfce-thunar-git --noconfirm --needed


