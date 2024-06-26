#!/usr/bin/sh
export XDG_SESSION_TYPE=x11
#export XDG_CURRENT_DESKTOP=XFCE

export EDITOR="micro"
export QT_QPA_PLATFORMTHEME=qt5ct

# get color scheme via gsettings
# https://gitlab.gnome.org/GNOME/libadwaita/-/commit/e715fae6a509db006a805af816f9d163f81011ef
export ADW_DISABLE_PORTAL=1

if [ -n "$(command -v set-display-resolution)" ]; then
	set-display-resolution
fi

# Enable NumLock
setleds -D +num

# Set wallpaper
~/.fehbg &

exec startxfce4
