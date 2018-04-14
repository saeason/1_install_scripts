#!/bin/bash
set -e 
# set -e causes the shell to exit if any subcommand or pipeline returns a non-zero status.

echo
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "::: Installing programs for lightdm configuration. ::::::::::::::::::::::"
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo
sleep 2

sudo pacman -Sy

sudo pacman -S --noconfirm --needed lxappearance
sudo pacman -S --noconfirm --needed polkit-gnome
sudo pacman -S --noconfirm --needed qt5-styleplugins
sudo pacman -S --noconfirm --needed qt5ct

yaourt -S --noconfirm --needed papirus-icon-theme
yaourt -S --noconfirm --needed damadamas-icon-theme-git
yaourt -S --noconfirm --needed gtk-theme-numix-solarized

echo
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "::: Copying themes and wallpapers, this may take a while. :::::::::::::::"
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo
sleep 2


sudo cp -r ~/Dropbox/Sync/5_themes/* /usr/share/themes/

sudo mkdir /usr/share/wallpapers
sudo cp -r ~/Dropbox/Wallpapers/* /usr/share/wallpapers/

ln -s ~/Dropbox/Sync/.xinitrc /home/scott/

echo
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "::: Use lightdm greeter settings to configure. ::::::::::::::::::::::::::"
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo

# change theme with lxappearance
 
# Appearance / Theme			/ Arc-Numix-Dark
# Appearance / Icons			/ Papirus-Dark
# Appearance / Font				/ Sans Regular 10 
# Appearance / Image			/ /usr/share/wallpapers/earth-view...
# Appearance / Colour			/ Black
# Appearance / Use wallpape		/ Yes
# Appearance / Use image		/ Yes
# Appearance / Icon				/ /usr/share/icons/Papirus/48x48

# Clock format: %a,%H:%M

# Panel / Host name:X220
# Panel / Spacer
# Panel / Clock
# Panel / Spacer
# Panel / Languages menu
# Panel / Session menu
# Panel / Accessibility menu
# Panel / Power menu

# Window position:
# ---------------
# |O     O     O|
# |             |
# |O     X     O|
# |             |
# |O     O     O|
# ---------------
# Horizontal:	26
# Vertical:	37

# Misc / Default settings
