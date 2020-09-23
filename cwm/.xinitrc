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

xss-lock -- lock &
xautolock -corners '000-' -locker lock -time 5 -notify 30 -notifier 'notify "sleeping soon"' &

# ┐ ┬┌┌┐
# ││││││
# └┴┆┘ ┆

autorandr --change
hsetroot -tile ~/usr/pics/misc/patterns/flowers.jpg -tint \#202029
bar &

exec cwm
