#!/bin/bash
set -e

cd /home/scott/Dropbox/Sync/1_install_scripts

./002_ohmyzsh.sh

nohup ./005_zshrc_config_symlink.sh
