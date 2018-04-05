#!/bin/bash
set -e


echo "Network Discovery"

sudo pacman -S avahi --noconfirm --needed
sudo systemctl enable avahi-daemon.service
sudo systemctl start avahi-daemon.service


echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "::: network discovery software installed ::::::::::::::::::::::::::::::::"
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
