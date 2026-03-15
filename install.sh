#!/bin/bash

set -e

echo "Installing ExelIce Arch i3 Rice..."

########################################
# UPDATE SYSTEM
########################################

echo "Updating system..."
sudo pacman -Syu --noconfirm

########################################
# CORE PACMAN PACKAGES
########################################

echo "Installing core packages..."

PACMAN_PACKAGES=(
i3-wm
polybar
rofi
picom
dunst
alacritty
feh
xss-lock
flameshot
brightnessctl
dex
thunar
thunar-archive-plugin
networkmanager
network-manager-applet
bluez
bluez-utils
blueman
pipewire
pipewire-pulse
wireplumber
pavucontrol
lxqt-policykit
ttf-jetbrains-mono-nerd
xorg-server
xorg-xinit
greetd
greetd-tuigreet
)

sudo pacman -S --needed --noconfirm "${PACMAN_PACKAGES[@]}"

########################################
# INSTALL YAY (AUR HELPER)
########################################

if ! command -v yay &> /dev/null
then
    echo "Installing yay..."

    sudo pacman -S --needed --noconfirm git base-devel

    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm
    cd ..
    rm -rf yay
fi

########################################
# AUR PACKAGES
########################################

echo "Installing AUR packages..."

AUR_PACKAGES=(
i3lock-color
)

yay -S --needed --noconfirm "${AUR_PACKAGES[@]}"

########################################
# ENABLE SERVICES
########################################

echo "Enabling services..."

sudo systemctl enable NetworkManager
sudo systemctl enable bluetooth
sudo systemctl enable greetd

########################################
# LINK DOTFILES
########################################

echo "Linking dotfiles..."

DOTFILES="$(cd "$(dirname "$0")" && pwd)"

CONFIGS=(
i3
polybar
rofi
picom
alacritty
dunst
)

mkdir -p ~/.config

for config in "${CONFIGS[@]}"; do

TARGET="$HOME/.config/$config"
SOURCE="$DOTFILES/.config/$config"

rm -rf "$TARGET"
ln -s "$SOURCE" "$TARGET"

done

########################################
# INSTALL X11 CONFIGS
########################################

echo "Installing X11 configs..."

sudo mkdir -p /etc/X11/xorg.conf.d
sudo cp etc/X11/xorg.conf.d/* /etc/X11/xorg.conf.d/

########################################
# INSTALL XINIT
########################################

cp .xinitrc ~

########################################
# DONE
########################################

echo ""
echo "Setup complete."
echo "Reboot recommended."
