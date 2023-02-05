#!/bin/sh

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
setxkbmap -option caps:none -layout de
xset -b

# ┬─┐┬─┐┬─┐┌┌┐┌─┐┌┐┐┐─┐
# │ ││─┤├─ ││││ ││││└─┐
# ┆─┘┘ ┆┴─┘┘ ┆┘─┘┆└┘──┘

unclutter --timeout 2 &

# ┬  ┌─┐┌─┐┬┌ o┌┐┐┌─┐
# │  │ ││  ├┴┐│││││ ┬
# ┆─┘┘─┘└─┘┆ ┘┆┆└┘┆─┘

sv 1

# ┐ ┬┌┌┐
# ││││││
# └┴┆┘ ┆

source ~/.config/themes/current

autorandr --change
hsetroot -fill $HOME/usr/pics/misc/wallpapers/current
bar &
xbindkeys

exec cwm
