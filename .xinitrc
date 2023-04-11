#!/bin/sh

#userresources=$HOME/.Xresources
#usermodmap=$HOME/.Xmodmap
#sysresources=/etc/X11/xinit/.Xresources
#sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps


#unikey
ibus start &
#flameshot: snipping tool
flameshot &

#Compositor
picom &


#wallpaper
nitrogen --restore &

#DWM status
/home/quythuong/softwares/dwmbar/dwmbar &

# polybar
# polybar &

conky &

#WM execute
exec dwm





