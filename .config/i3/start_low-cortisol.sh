#!/bin/bash
# 1. Сетка
i3-msg "workspace 10; append_layout $HOME/.config/i3/low-cortisol_layout.json"

# 2. Spotify
spotify-launcher &
sleep 2

# 3. Терминалы (используем --class вместо --name)
alacritty --class dance_term -e "$HOME/.config/i3/low_cortisol.sh" &
sleep 0.5
alacritty --class cava_term -e cava &
