#!/bin/bash

echo "Setting up dotfile symlinks..."

DOTFILES="$HOME/dotfiles"

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
    if [ -e "$HOME/.config/$config" ]; then
        echo "Removing old config: $config"
        rm -rf "$HOME/.config/$config"
    fi

    echo "Linking $config"
    ln -s "$DOTFILES/.config/$config" "$HOME/.config/$config"
done

echo "Dotfiles linked successfully."
