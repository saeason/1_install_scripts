#!/bin/bash
#set -e

# software from AUR (Arch User Repositories)
# https://aur.archlinux.org/packages/


sh AUR/install-conky-lua-archers-v*.sh
sh AUR/install-cool-retro-term-v*.sh
sh AUR/install-mintstick-git-v*.sh
sh AUR/install-temps-v*.sh

#sh AUR/install-brackets-v*.sh
sh AUR/install-sublime-text-v*.sh

sh AUR/install-dropbox-v*.sh
sh AUR/install-insync-v*.sh

sh AUR/install-gradio-v*.sh
sh AUR/install-peek-v*.sh
sh AUR/install-radiotray-v*.sh
sh AUR/install-spotify-v*.sh

sh AUR/install-arc-gtk-theme-git-v*.sh
sh AUR/install-downgrade-v*.sh
sh AUR/install-neofetch-v*.sh
sh AUR/install-numix-circle-icon-theme-git-v*.sh
sh AUR/install-pamac-aur-v*.sh
sh AUR/install-paper-icon-theme-git-v*.sh
sh AUR/install-papirus-icon-theme-git-v*.sh
sh AUR/install-sardi-icons-v*.sh
sh AUR/install-sardi-extra-icons-v*.sh
sh AUR/install-screenkey-v*.sh
sh AUR/install-surfn-icons-git-v*.sh
sh AUR/install-ttf-font-awesome-v*.sh
sh AUR/install-ttf-mac-fonts-v*.sh
sh AUR/install-virtualbox-for-linux-kernel-v*.sh
sh AUR/install-xcursor-breeze-v*.sh

# these come last always

sh AUR/install-hardcode-fixer-git-v*.sh
sudo hardcode-fixer

echo "################################################################"
echo "####        Software from AUR Repository installed        ######"
echo "################################################################"
