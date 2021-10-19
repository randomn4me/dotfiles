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

autorandr --change
hsetroot -tile ~/usr/pics/misc/patterns/flowers.jpg -tint \#202029
# hsetroot -center ~/usr/pics/misc/meerjungfraumann.jpg
bar &
xbindkeys

exec cwm
