#!/bin/sh

rm .config/i3/config
cp config /home/irorll/.config/i3/

rm /etc/i3status.conf
cp i3status.conf /etc/

cp .Xresources /home/irorll

rm /etc/vimrc
cp vimrc /etc/

echo "w /sys/class/graphics/fbcon/cursor_blink - - - - 0" | sudo tee /etc/tmpfiles.d/cursor_blink.conf

pacman -Syu firefox vim redshift caja dosfstools ntfs-3g less arandr evince pavucontrol speedtest-cli feh htop neofetch flatpak picom gnome-disk-utility calcurse vlc yt-dlp ytfzf fzf mpv base-devel git links pamixer innoextract acpi --noconfirm

echo "All installed. Clean cashe?"

pacman -Scc
