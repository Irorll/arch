#!/bin/sh

pacman -Syu nvidia nvidia-utils nvidia-settings

rm /etc/mkinitcpio.conf
cp mkinitcpionvidia.conf /etc/mkinitcpio.conf
mkinitcpio
i3-msg restart
i3-msg reload
