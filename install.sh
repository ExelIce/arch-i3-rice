#!/bin/bash

echo "Installing ExelIce Arch i3 rice..."

# user configs
echo "Installing user configs..."
mkdir -p ~/.config
cp -r .config/* ~/.config/
cp .xinitrc ~

# X11 configs
echo "Installing X11 configs..."
sudo mkdir -p /etc/X11/xorg.conf.d
sudo cp etc/X11/xorg.conf.d/* /etc/X11/xorg.conf.d/

echo ""
echo "Done!"
echo ""
echo "Make sure repository is located at:"
echo "~/arch-i3-rice"
echo ""
echo "Wallpaper path depends on this location."
