#!/bin/sh
rm "./.config" -rf 2>/dev/null

mkdir "./.config/Code/User" -p
cp "$HOME/.config/Code/User/settings.json" "./.config/Code/User"

mkdir "./.config/btop"
cp "$HOME/.config/btop/btop.conf" "./.config/btop/btop.conf"

cp "$HOME/.config/kitty" "./.config" -r
cp "$HOME/.config/lsd" "./.config" -r
cp "$HOME/.config/mpv" "./.config" -r
cp "$HOME/.config/neofetch" "./.config" -r
cp "$HOME/.config/pip" "./.config" -r

cp "$HOME/.config/starship.toml" "./.config"
cp "$HOME/.config/mimeapps.list" "./.config"

cp "$HOME/.zshrc" .