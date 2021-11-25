sudo pacman -Syu --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

paru -S --noconfirm alacritty auto-cpufreq backlight_control bluez bluez-utils bspwm btop cmatrix discord dunst figlet firefox-developer-edition fluent-gtk-theme-git fluent-cursor-theme-git i3lock-color lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings lolcat lollypop lxappearance maim mpv neofetch nerd-fonts-complete network-manager-applet nitrogen noto-fonts-emoji pavucontrol picom-jonaburg-git polybar pulseaudio pulseaudio-alsa pulseaudio-bluetooth pulseuadio-jack qbittorrent-dark-git qogir-gtk-theme-git refind rofi spotify stacer-git sxhkd teams-for-linux tela-icon-theme thunar touchegg touche ttc-iosevka ttf-material-design-icons ttf-unifont ttf-ms-fonts viewnior vscodium-bin whatsapp-nativefier-dark xclip xorg zoom

for service in bluetooth lightdm NetworkManager touchegg.service; do
  sudo systemctl enable --now $service
done

git clone https://github.com/Z-8Bit/Bspwm.git ~/Downloads/Bspwm

mkdir -p ~/.config/{alacritty,bspwm,cava,dunst,polybar,rofi,neofetch,sxhkd,touchegg}

cp ~/Downloads/Bspwm/alacritty/alacritty.yml ~/.config/alacritty/
cp ~/Downloads/Bspwm/bspwm/bspwmrc ~/.config/bspwm/
cp ~/Downloads/Bspwm/dunst/dunstrc ~/.config/dunst/
cp ~/Downloads/Bspwm/sxhkd/sxhkdrc ~/.config/sxhkd/

cp ~/Downloads/Bspwm/polybar/* ~/.config/polybar/
cp ~/Downloads/Bspwm/rofi/* ~/.config/rofi/
cp ~/Downloads/Bspwm/neofetch/config.conf ~/.config/neofetch/
cp ~/Downloads/Bspwm/picom.conf ~/.config/
cp ~/Downloads/Bspwm/touchegg/touchegg.conf ~/.config/touchegg/

chmod +x ~/.config/bspwm/bspwmrc
chmod +x ~/.config/sxhkd/sxhkdrc
chmod +x ~/.config/polybar/launch.sh
sudo systemctl start touchegg
refind-install

git clone https://github.com/Z-8Bit/Wallpapers ~/Pictures/Wallpapers
sleep 5
RED='\033[0;31m'
echo -e "${RED}Please add ~/Pictures/Wallpapers in nitrogen's preferences"

sudo cp ~/Downloads/Bspwm/lightdm-gtk-greeter.conf /etc/lightdm/
sudo cp ~/Pictures/Wallpapers/ARTWORK-wanderer-above-the-sea-of-fog.jpg /etc/lightdm/

sleep 5
echo -e  "${RED}PLEASE REBOOT NOW"


