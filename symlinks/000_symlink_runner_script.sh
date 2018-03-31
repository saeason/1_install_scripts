#!/bin/bash
set -e
# set -e causes the shell to exit if any subcommand or pipeline returns a non-zero status.

echo
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "Linking config files and directories to their relevant locations."
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
sleep 2

cd ~/Dropbox/Sync/1_install_scripts/symlinks
./100_i3_symlink.sh

echo
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "Configuration set up, reload i3 for changes to take effect!"
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo
