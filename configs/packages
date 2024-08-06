sudo pacman -S egl-wayland vi pipewire qt5-wayland qt6-wayland hyprland xdg-desktop-portal-hyprland polkit-kde-agent ufw keyd ly openssh wireless_tools xdg-utils iwd pavucontrol smartmontools wpa_supplicant net-tools wget git pipewire-pulse wireplumber slurp mpv ncspot nsxiv wofi grim kitty hyprpaper fastfetch blender waybar dunst htop btop flatpak rust fcitx5-im fcitx5-mozc fcitx5-pinyin-zhwiki fcitx5-hangul freecad krita firefox

sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable
sudo systemctl enable --now ufw.service
sudo systemctl enable keyd
sudo systemctl enable ly.service

sudo pacman -S cantarell-fonts noto-fonts noto-fonts-cjk noto-fonts-emoji ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-common ttf-nerd-fonts-symbols-mono ttf-font-awesome otf-font-awesome awesome-terminal-fonts

flatpak remote-add flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.github.tchx84.Flatseal com.obsproject.Studio com.usebottles.bottles io.github.aandrew_me.ytdn com.brave.Browser

sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd
sudo rm -r paru
paru -S vesktop-bin
paru -S minecraft-launcher
paru -S zoom
paru -S anki-bin
