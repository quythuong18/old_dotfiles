#!/bin/sh

# monitor for desktop
conky &

# go tieng Viet
ibus start &
#flameshot: snipping tool
flameshot &

#wallpaper
nitrogen --restore &

#DWM status
/home/quythuong/softwares/dwmbar/dwmbar &

#Compositor
picom --experimental-backends &

#WM execute
exec dwm

