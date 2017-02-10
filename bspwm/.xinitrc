#!/bin/sh

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources 
setxkbmap -option caps:none
xsetroot -cursor_name left_ptr

 # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# startup programs                                                            #
 # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

sxhkd &
wal -i ${HOME}/usr/pics/wallpapers -o wal-after &
compton -f -D 5 &
mpd &
ownchrome &
thunderbird &
unclutter --timeout 2 &

exec bspwm
