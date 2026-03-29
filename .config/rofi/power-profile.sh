#!/bin/bash

choice=$(echo -e "󰾆 Power Saver\n󰓅 Balanced\n󰓡 Performance" | rofi -dmenu -i -p "Power Mode" -theme ~/.config/rofi/bocchi_dark-theme.rasi)

case "$choice" in
    *Saver*)
        powerprofilesctl set power-saver
        ;;
    *Balanced*)
        powerprofilesctl set balanced
        ;;
    *Performance*)
        powerprofilesctl set performance
        ;;
esac
