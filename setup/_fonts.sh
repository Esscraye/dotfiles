#!/usr/bin/env bash
# --------------------------------------------------------------
# Fonts
# --------------------------------------------------------------

sudo cp -rf $SCRIPT_DIR/fonts/* /usr/share/fonts/TTF/
sudo fc-cache -fv
sudo mkfontscale /usr/share/fonts/TTF/
sudo mkfontdir /usr/share/fonts/TTF/
sudo fc-cache -fv

echo "Fonts installed successfully"