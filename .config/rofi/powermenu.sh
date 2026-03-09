#!/bin/bash

options=" Lock
󰍃 Logout
󰒲 Suspend
󰜉 Reboot
 Shutdown"

chosen=$(echo -e "$options" | rofi -dmenu -i -p "Power")

case "$chosen" in
    " Lock")
        ~/.config/i3/lock.sh
        ;;
    "󰍃 Logout")
        i3-msg exit
        ;;
    "󰒲 Suspend")
        systemctl suspend
        ;;
    "󰜉 Reboot")
        systemctl reboot
        ;;
    " Shutdown")
        systemctl poweroff
        ;;
esac
