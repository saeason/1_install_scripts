#!/bin/bash
set -e 
# set -e causes the shell to exit if any subcommand or pipeline returns a non-zero status.

echo
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "::: Configuring lightdm. ::::::::::::::::::::::::::::::::::::::::::::::::"
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo
sleep 2

sudo pacman -Sy --noconfirm --needed lxappearance
sudo pacman -Sy --noconfirm --needed polkit-gnome

echo
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "::: Copying themes, this may take a while. ::::::::::::::::::::::::::::::"
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo
Sleep 2


sudo cp -r ~/Dropbox/Sync/5_themes/* /usr/share/themes/

sudo mkdir /usr/share/wallpapers
sudo cp -r ~/Dropbox/Wallpapers/* /usr/share/wallpapers/

echo
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "::: Use lightdm greeter settings to configure. ::::::::::::::::::::::::::"
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo

# Appearance / Theme			/ Arc-Numix-Dark
# Appearance / Icons			/ Papirus-Dark
# Appearance / Font				/ Sans Regular 10 
# Appearance / Image			/ /usr/share/wallpapers/earth-view...
# Appearance / Colour			/ Black
# Appearance / Use wallpaper	/ Yes
# Appearance / Use image		/ Yes
# Appearance / Icon				/ /usr/share/icons/media-floppy...

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
# Vertical:		37

# Misc / Default settings
