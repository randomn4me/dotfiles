#!/bin/sh

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
setxkbmap -option caps:none

# ┬─┐┬─┐┬─┐┌┌┐┌─┐┌┐┐┐─┐
# │ ││─┤├─ ││││ ││││└─┐
# ┆─┘┘ ┆┴─┘┘ ┆┘─┘┆└┘──┘

unclutter --timeout 2 &

# ┬  ┌─┐┌─┐┬┌ o┌┐┐┌─┐
# │  │ ││  ├┴┐│││││ ┬
# ┆─┘┘─┘└─┘┆ ┘┆┆└┘┆─┘

xss-lock -- lock &
xautolock -corners '000-' -locker lock -time 3 -notify 30 -notifier 'notify locking soon' &

# ┐ ┬┌┌┐
# ││││││
# └┴┆┘ ┆

hsetroot -tile ~/usr/pics/misc/patterns/flowers.jpg -tint \#101019
bar &
wew | wm &

exec sxhkd
