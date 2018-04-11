#!/bin/bash
set -e
# set -e causes the shell to exit if any subcommand or pipeline returns a non-zero status.

echo
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "::: Sym-linking the .Xresources file from Dropbox. ::::::::::::::::::::::"
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo
sleep 2

cd $HOME
ln -s /home/scott/Dropbox/Sync/.Xresources /home/scott/

echo
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "::: Executing xrdb -load ~/.Xresources. :::::::::::::::::::::::::::::::::"
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo
sleep 2

xrdb -load ~/.Xresources

echo
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "::: Running scripts to install fonts and create personal folders. :::::::"
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo

cd /home/scott/Dropbox/Sync/1_install_scripts

./004_zshrc_config_symlink.sh
./005_polybar_rofi_compton.sh
./006_vim.sh
./101_create_personal_folders.sh
./102_fonts.sh
./140_sound.sh
./401_use_all_cores.sh
./402_fix_firefox_dark_themes.sh
