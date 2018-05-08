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

# xset s 180 60 &
xss-lock -- lock &
xautolock -corners '000-' -locker lock -time 3 -notify 30 -notifier 'notify "sleeping soon"' &

# ┐ ┬┌┌┐
# ││││││
# └┴┆┘ ┆

wallpaper &
bar &
wew | wm &

exec sxhkd
