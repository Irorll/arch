#!/bin/sh

pacman -Rns nvidia nvidia-utils nvidia-settings

rm /etc/mkinitcpio.conf
cp mkinitcpioei.conf /etc/mkinitcpio.conf
mkinitcpio
i3-msg restart
i3-msg reload
