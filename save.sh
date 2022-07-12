#!/bin/sh

rm "./config" -rf 2>/dev/null

mkdir "./config"

mkdir "./config/Code/User" -p
cp ~/".config/Code/User/settings.json" "./config/Code/User"

cp ~/".config/btop" "./config" -r
cp ~/".config/kitty" "./config" -r
cp ~/".config/mpv" "./config" -r
cp ~/".config/neofetch" "./config" -r
cp ~/".config/pip" "./config" -r

cp ~/".config/starship.toml" "./config"
cp ~/".config/mimeapps.list" "./config"
