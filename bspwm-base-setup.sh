sudo pacman -Syu --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

paru -S --noconfirm alacritty backlight_control bspwm cava cmatrix dunst figlet fluent-cursor-theme-git lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings lolcat lxappearance maim neofetch nerd-fonts-complete network-manager-applet nitrogen noto-fonts-emoji pavucontrol picom-jonaburg-git polybar pulseaudio pulseaudio-alsa pulseaudio-bluetooth qogir-gtk-theme-git rofi sxhkd tela-icon-theme touchegg touche thunar ttf-ms-fonts ttc-iosevka xclip xorg 

for service in bluetooth lightdm NetworkManager touchegg.service; do
  sudo systemctl enable --now $service
done

git clone https://github.com/Z-8Bit/Bspwm.git ~/Downloads/Bspwm

mkdir -p ~/.config/{alacritty,bspwm,cava,dunst,polybar,rofi,neofetch,sxhkd}

cp ~/Downloads/Bspwm/alacritty/alacritty.yml ~/.config/alacritty/
cp ~/Downloads/Bspwm/bspwm/bspwmrc ~/.config/bspwm/
cp ~/Downloads/Bspwm/cava/config ~/.config/cava/
cp ~/Downloads/Bspwm/dunst/dunstrc ~/.config/dunst/
cp ~/Downloads/Bspwm/sxhkd/sxhkdrc ~/.config/sxhkd/

cp ~/Downloads/Bspwm/polybar/* ~/.config/polybar/
cp ~/Downloads/Bspwm/rofi/*. ~/.config/rofi/
cp ~/Downloads/Bspwm/neofetch/config.conf ~/.config/neofetch/
cp ~/Downloads/Bspwm/picom.conf ~/.config/

chmod +x ~/.config/bspwm/bspwmrc
chmod +x ~/.config/sxhkd/sxhkdrc
chmod +x ~/.config/polybar/launch.sh
sudo systemctl start touchegg

sleep 5
RED='\033[0;31m'
echo -e  "${RED}PLEASE REBOOT NOW"


