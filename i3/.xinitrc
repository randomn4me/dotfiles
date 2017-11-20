#!/bin/sh

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources 
setxkbmap -option caps:none
xsetroot -cursor_name left_ptr


# ┬─┐┬─┐┬─┐┌┌┐┌─┐┌┐┐┐─┐
# │ ││─┤├─ ││││ ││││└─┐
# ┆─┘┘ ┆┴─┘┘ ┆┘─┘┆└┘──┘

redshift &
unclutter --timeout 2 &


# ┬  ┌─┐┌─┐┬┌ o┌┐┐┌─┐
# │  │ ││  ├┴┐│││││ ┬
# ┆─┘┘─┘└─┘┆ ┘┆┆└┘┆─┘

xset s 540 60 
xss-lock -n "bl 10 && notify 'locking soon'" -- slock &

# ┐ ┬┌┌┐
# ││││││
# └┴┆┘ ┆

i3bar &
hsetroot -tile $HOME/usr/pics/patterns/wool.png

exec i3
