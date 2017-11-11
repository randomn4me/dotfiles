#!/bin/sh

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources 
setxkbmap -option caps:none
xsetroot -cursor_name left_ptr


# ┬─┐┬─┐┬─┐┌┌┐┌─┐┌┐┐┐─┐
# │ ││─┤├─ ││││ ││││└─┐
# ┆─┘┘ ┆┴─┘┘ ┆┘─┘┆└┘──┘

unclutter --timeout 2 &

# ┬  ┌─┐┌─┐┬┌ o┌┐┐┌─┐
# │  │ ││  ├┴┐│││││ ┬
# ┆─┘┘─┘└─┘┆ ┘┆┆└┘┆─┘

xset s 540 60 
xss-lock -n "xbacklight -set 10 && notify locking soon" -- slock &

# ┐ ┬┌┌┐
# ││││││
# └┴┆┘ ┆

hsetroot -tile $HOME/usr/pics/patterns/wool.png
bar &
wew | wm &

exec sxhkd
