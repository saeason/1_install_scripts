#!/bin/bash
set -e
# set -e causes the shell to exit if any subcommand or pipeline returns a non-zero status.

echo "Sym-linking the .Xresources file from Dropbox."
cd /home/scott && rm .Xresources
ln -s /home/scott/Dropbox/Sync/.Xresources /home/scott/

echo "Executing xrdb -load ~/.Xresources"
xrdb -load /home/scott/.Xresources

echo "Running scripts to install required software."
cd /home/scott/Dropbox/Sync/1_install_scripts

./101_create_personal_folders.sh
./120_bluetooth.sh
./130_fonts.sh
./140_sound.sh
