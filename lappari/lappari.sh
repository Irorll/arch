#!/bin/sh

rm .config/i3/config
cp config /home/irorll/.config/i3/

rm /etc/i3status.conf
cp i3status.conf /etc/

cp .Xresources /home/irorll

rm /etc/vimrc
cp vimrc /etc/

rm /home/irorll/.bashrc
cp .bashrc /home/irorll/

cp .wifi2g.sh /home/irorll/
cp .wifi5g.sh /home/irorll/
cp .wifiscan.sh /home/irorll/
cp .wificonnect2.sh /home/irorll/
cp .wificonnect5.sh /home/irorll/

chmod +x /home/irorll/.wifi2g.sh
chmod +x /home/irorll/.wifi5g.sh
chmod +x /home/irorll/.wifiscan.sh
chmod +x /home/irorll/.wificonnect2.sh
chmod +x /home/irorll/.wificonnect5.sh

echo "w /sys/class/graphics/fbcon/cursor_blink - - - - 0" | sudo tee /etc/tmpfiles.d/cursor_blink.conf

pacman -Syu firefox vim redshift caja dosfstools ntfs-3g less arandr irssi evince steam pavucontrol qbittorrent speedtest-cli nethack feh htop neofetch flatpak picom gnome-disk-utility calcurse vlc yt-dlp ytfzf fzf mpv obs-studio audacity tenacity base-devel git links dosbox pamixer innoextract acpi --noconfirm

rm /etc/xdg/picom.conf
cp picom.conf /etc/xdg/

iwctl station wlan0 scan

echo "All installed. Clean cashe?"

pacman -Scc
