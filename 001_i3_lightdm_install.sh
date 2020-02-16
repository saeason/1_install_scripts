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
sudo pacman -S --noconfirm --needed acpi # client for battery, power and thermal readings
sudo pacman -S --noconfirm --needed calcurse # a text based personal organiser
sudo pacman -S --noconfirm --needed cmus # ncurses-based music player
sudo pacman -S --noconfirm --needed compton # x compositor
sudo pacman -S --noconfirm --needed curl # a url retrieval utility
sudo pacman -S --noconfirm --needed dmenu # dynamic menu
sudo pacman -S --noconfirm --needed dunst # notification daemon
sudo pacman -S --noconfirm --needed feh # image viewer
sudo pacman -S --noconfirm --needed firefox # web browser
sudo pacman -S --noconfirm --needed htop # monitoring tool and interactive process viewer
sudo pacman -S --noconfirm --needed lm_sensors # temperature monitoring sensors
sudo pacman -S --noconfirm --needed lsd # better version of the ls command
sudo pacman -S --noconfirm --needed man-db # a utility for reading man pages
sudo pacman -S --noconfirm --needed man-pages # Linux man pages
sudo pacman -S --noconfirm --needed mlocate # a merge of locate and updatedb
sudo pacman -S --noconfirm --needed neofetch # system information tool
sudo pacman -S --noconfirm --needed ranger # command line file manager
sudo pacman -S --noconfirm --needed rofi # a program switcher
sudo pacman -S --noconfirm --needed rxvt-unicode # terminal emualtor
sudo pacman -S --noconfirm --needed thunar # gui file mangager
sudo pacman -S --noconfirm --needed thunar-archive-plugin # create and extact archives in thunar
sudo pacman -S --noconfirm --needed thunar-volman # managemant of removable media in thunar
sudo pacman -S --noconfirm --needed gvfs # file manager funcitonality
sudo pacman -S --noconfirm --needed scrot # screenshot utility
sudo pacman -S --noconfirm --needed syncthing # syncronisation tool
sudo pacman -S --noconfirm --needed sysstat # a collection of performance monitoring tools
sudo pacman -S --noconfirm --needed tmux # terminal multiplexor
sudo pacman -S --noconfirm --needed tree # a graphical directory tree analyzer
sudo pacman -S --noconfirm --needed vim # text editor
sudo pacman -S --noconfirm --needed w3m # text based web browser
sudo pacman -S --noconfirm --needed wget # network utility to retrieve files from the web
sudo pacman -S --noconfirm --needed xorg-xbacklight # backligh contol application
sudo pacman -S --noconfirm --needed zsh # a shell interpreter


sudo pacman -S --noconfirm --needed lightdm # a login display manager and tools
sudo pacman -S --noconfirm --needed lightdm-gtk-greeter
sudo pacman -S --noconfirm --needed lightdm-gtk-greeter-settings

sudo systemctl enable lightdm.service -f
sudo systemctl set-default graphical.target

echo
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "::: i3 now installed, RESTART then sync MEGA and run install scripts. :::"
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo
