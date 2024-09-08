#!/bin/bash

rm /home/$USER/.config/i3/config
cp config /home/$USER/.config/i3/

rm /etc/i3status.conf
cp i3status.conf /etc/

cp .Xresources /home/$USER

rm /etc/vimrc
cp vimrc /etc/

echo "w /sys/class/graphics/fbcon/cursor_blink - - - - 0" | sudo tee /etc/tmpfiles.d/cursor_blink.conf

pacman -Syu firefox vim redshift caja dosfstools ntfs-3g less arandr evince pavucontrol speedtest-cli feh htop neofetch flatpak picom gnome-disk-utility calcurse vlc yt-dlp ytfzf fzf mpv base-devel git links pamixer innoextract acpi flatpak fastfetch imagemagick --noconfirm

magick -size 1920x1920 xc:#000000 /home/$USER/.black.png
feh --bg-scale /home/$USER/.black.png

rm /etc/xdg/picom.conf
cp picom.conf /etc/xdg

//echo "All installed. Clean cashe?"

yes | pacman -Scc
