#!/bin/sh

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources 
setxkbmap -option caps:none
xsetroot -cursor_name left_ptr

 # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# startup programs                                                            #
 # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

sxhkd &
reloadwal &
sstart bar 1 &
mpd &
firefox &
unclutter --timeout 2 &
lamas &
wmname LG3D &
xautolock -locker lock -corners 00-- -cornerdelay 5 -cornerredelay 10 -time 5 -notify 15 -notifier "notify locking" -detectsleep &

exec bspwm
