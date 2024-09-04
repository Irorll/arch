#!/bin/bash

rm /home/$USER/.config/i3/config  #su:n home ei ole sama kuin normikäyttäjän home, huom!
cp config /home/$USER/.config/i3/

rm /etc/i3status.conf
cp i3status.conf /etc/

cp .Xresources /home/$USER/

rm /etc/vimrc
cp vimrc /etc/

rm /home/$USER/.bashrc
cp .bashrc /home/$USER/

cp .wifi2g.sh /home/$USER/
cp .wifi5g.sh /home/$USER/
cp .wifiscan.sh /home/$USER/
cp .wificonnect2.sh /home/$USER/
cp .wificonnect5.sh /home/$USER/

chmod +x /home/$USER/.wifi2g.sh
chmod +x /home/$USER/.wifi5g.sh
chmod +x /home/$USER/.wifiscan.sh
chmod +x /home/$USER/.wificonnect2.sh
chmod +x /home/$USER/.wificonnect5.sh

echo "w /sys/class/graphics/fbcon/cursor_blink - - - - 0" | sudo tee /etc/tmpfiles.d/cursor_blink.conf

pacman -Syu firefox vim redshift caja dosfstools ntfs-3g less arandr irssi evince steam pavucontrol qbittorrent speedtest-cli nethack feh htop neofetch flatpak picom gnome-disk-utility calcurse vlc yt-dlp ytfzf fzf mpv obs-studio audacity tenacity base-devel git links dosbox pamixer innoextract acpi flatpak fastfetch --noconfirm

rm /etc/xdg/picom.conf
cp picom.conf /etc/xdg/

iwctl station wlan0 scan

//echo "All installed. Clean cashe?"

yes | pacman -Scc
