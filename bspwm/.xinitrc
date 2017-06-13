#!/bin/sh

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources 
setxkbmap -option caps:none
xsetroot -cursor_name left_ptr

 # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# startup programs                                                            #
 # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 


# ┬─┐┬─┐┬─┐┌┌┐┌─┐┌┐┐┐─┐
# │ ││─┤├─ ││││ ││││└─┐
# ┆─┘┘ ┆┴─┘┘ ┆┘─┘┆└┘──┘

redshift &
wendy -m 128 -f "$MAIL/new" notimail &
unclutter --timeout 2 &


# ┬  ┌─┐┌─┐┬┌ o┌┐┐┌─┐
# │  │ ││  ├┴┐│││││ ┬
# ┆─┘┘─┘└─┘┆ ┘┆┆└┘┆─┘

xset s 540 60 
xss-lock -n "xbacklight -set 10 && notify locking soon" -- lock &

# ┐ ┬┌┌┐
# ││││││
# └┴┆┘ ┆

sxhkd &
bar &
reloadwal &

exec bspwm
