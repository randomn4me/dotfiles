#!/bin/sh

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources 
setxkbmap -option caps:none
xsetroot -cursor_name left_ptr

 # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# startup programs                                                            #
 # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

sxhkd &
compton -f -D 5 &
wal -i "${HOME}/usr/pics/wallpapers" -o wal-after &
mpd &
firefox &
unclutter --timeout 2 &
lamas &

exec bspwm
