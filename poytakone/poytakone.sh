#!/bin/bash

rm /home/$USER/.config/i3/config
cp config /home/$USER/.config/i3/

rm /etc/i3status.conf
cp i3status.conf /etc/

cp .Xresources /home/$USER

rm /etc/vimrc
cp vimrc /etc/

echo "w /sys/class/graphics/fbcon/cursor_blink - - - - 0" | sudo tee /etc/tmpfiles.d/cursor_blink.conf

pacman -Syu firefox vim redshift caja dosfstools ntfs-3g less arandr irssi evince steam pavucontrol qbittorrent speedtest-cli nethack feh htop neofetch flatpak picom gnome-disk-utility calcurse vlc yt-dlp ytfzf fzf mpv obs-studio audacity tenacity base-devel git links dosbox pamixer innoextract acpi flatpak fastfetch imagemagick android-file-transfer nemo psensor flameshot mtpaint nitrogen libdvdcss --noconfirm

magick -size 1920x1920 xc:#000000 /home/$USER/.black.png
feh --bg-scale /home/$USER/.black.png

rm /etc/xdg/picom.conf
cp picom.conf /etc/xdg/

echo "MAKEFLAGS=\"-j$(nproc)\"" >> /etc/makepkg.conf
i3-msg restart
i3-msg reload

//echo "All installed. Clean cashe?" 

yes | pacman -Scc
