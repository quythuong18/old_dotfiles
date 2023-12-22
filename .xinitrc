#!/bin/sh

#Compositor
picom --experimental-backends &

#wallpaper
nitrogen --restore &

#DWM status
/home/quythuong/softwares/dwmbar/dwmbar &

# go tieng Viet
ibus start &
#flameshot: snipping tool
flameshot &

# monitor for desktop
conky -q -p 1 &

#WM execute
export GLFW_IM_MODULE=ibus
exec dwm
# polybar &
# sxhkd &
# exec bspwm
