#!/bin/sh

rm .config/i3/config
cp config $HOME/.config/i3/

rm /etc/i3status.conf
cp i3status.conf /etc/

cp .Xresources $HOME

rm /etc/vimrc
cp vimrc /etc/

rm $HOME/.bashrc
cp .bashrc $HOME/

cp .wifi2g.sh $HOME/
cp .wifi5g.sh $HOME/
cp .wifiscan.sh $HOME/
cp .wificonnect2.sh $HOME/
cp .wificonnect5.sh $HOME/

chmod +x $HOME/.wifi2g.sh
chmod +x $HOME/.wifi5g.sh
chmod +x $HOME/.wifiscan.sh
chmod +x $HOME/.wificonnect2.sh
chmod +x $HOME/.wificonnect5.sh

echo "w /sys/class/graphics/fbcon/cursor_blink - - - - 0" | sudo tee /etc/tmpfiles.d/cursor_blink.conf

pacman -Syu firefox vim redshift caja dosfstools ntfs-3g less arandr irssi evince steam pavucontrol qbittorrent speedtest-cli nethack feh htop neofetch flatpak picom gnome-disk-utility calcurse vlc yt-dlp ytfzf fzf mpv obs-studio audacity tenacity base-devel git links dosbox pamixer innoextract acpi flatpak --noconfirm

rm /etc/xdg/picom.conf
cp picom.conf /etc/xdg/

iwctl station wlan0 scan

echo "All installed. Clean cashe?"

pacman -Scc
