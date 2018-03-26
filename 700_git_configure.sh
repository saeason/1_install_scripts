#!/bin/bash
set -e
# set -e causes the shell to exit if any subcommand or pipeline returns a non-zero status.

git init
git config --global user.name "scott eason"
git config --global user.email "saeason72@googlemail.com"
sudo git config --system core.editor vim
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=25000'
git config --global push.default simple


echo "#################################################################"
echo "###################     git configured     ######################"
echo "#################################################################"
