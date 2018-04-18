#!/bin/bash
set -e

echo
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "::: Making sure firefox looks great in dark themes like Arc-Dark. :::::::"
echo "::: Start firefox once. The directory will not exist otherwise. :::::::::"
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo 
sleep 2

cd $HOME/.mozilla/firefox/*.default/
mkdir chrome
ln -s ~/Dropbox/Sync/userContent.css ~/.mozilla/firefox/*.default/chrome/

echo
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "::: Restart firefox for changes to take effect. :::::::::::::::::::::::::"
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo
