Ok, let's go, first of all, install Arch Linux, you can use my guide, [archinstall](https://github.com/pzeadrian/archinstall). 
After you successfully installed Arch:

> [!NOTE]
> Now, there's a script on my repo that makes all that process semi automatic, 
> install git (sudo pacman -S git), clone my repo and run first.install from
> scripts folder, but just do it if you are installing my config for first time.

- Install some basic packages.
```sh
sudo pacman -S dunst libnotify hyprland hyprpaper xdg-desktop-portal-hyprland 
wayland xorg-xwayland cliphist wl-clipboard pipewire pipewire-alsa pipewire-pulse 
pipewire-jack wireplumber waybar alacritty git pcmanfm file-roller neovim 
bluez bluez-utils blueman network-manager-applet btop neofetch mpv imv 
grim slurp ranger exa bat pavucontrol nodejs yarn inxi alsa-tools alsa-utils 
kvantum gtk-engines gtk-engine-murrine lxappearance brightnessctl polkit-gnome xorg-xhost
firefox udisks2 swaylock swayidle libva-utils ttf-opensans noto-fonts-emoji gammastep
```

- Install an AUR helper, [paru](https://github.com/Morganamilo/paru), for example.
```sh
mkdir Documents
cd Documents
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```

- Install some AUR packages
```sh
paru -S rofi-lbonn-wayland-git
```

- Enable some basic services.
```sh
systemctl enable --user wireplumber
systemctl enable --user pipewire
sudo systemctl enable bluetooth
```

- Run some basic commands.
```sh
# This replaces dmenu with rofi, useful for some scripts.
sudo ln -s /usr/bin/rofi /usr/bin/dmenu
```

- Change a config setting to enable power menu
```sh
sudo nano /etc/systemd/logind.conf
# Add this line
HandlePowerKey=ignore
# Run this command
sudo systemctl kill -s HUP systemd-logind
```

- Reboot.
- Clone my repo [.files](https://github.com/pzeadrian/.files) and run some basic scripts.
```sh
cd Documents
git clone https://github.com/pzeadrian/.files
cd .files/scripts
./fonts.sh
./config.sh
```

9. Add some variables to /etc/environment.
```sh
QT_STYLE_OVERRIDE=kvantum
MOZ_ENABLE_WAYLAND=1
```
