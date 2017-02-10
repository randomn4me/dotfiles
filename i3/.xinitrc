#!/bin/sh

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources 
setxkbmap -option caps:none
xsetroot -cursor_name left_ptr

 # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# startup programs                                                            #
 # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

compton -c -r 15 -f -D5 &
mpd &
dunst &
unclutter --timeout 2 &
thunderbird &
/home/phil/bin/ownchrome &
wal -i ${HOME}/usr/pics/wallpapers -q &

exec i3
