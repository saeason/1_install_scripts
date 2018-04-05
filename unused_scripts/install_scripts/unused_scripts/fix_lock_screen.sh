#!/bin/bash
set -e


echo "Change lock screen to standard lock screen in ArchMerge ..."

sudo sed -i 's/current_theme       default/current_theme       archmerge_transfer/g' /etc/slim.conf

echo "################################################################"
echo "####               LOCK    SCREEN   APPLIED               ######"
echo "################################################################"
