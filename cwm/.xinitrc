#!/bin/sh

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
#setxkbmap -option caps:none -layout de
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

/etc/X11/xinit/xinitrc.d/50-systemd-user.sh

source ~/.config/themes/current

autorandr --change
#hsetroot -fill $HOME/usr/pics/misc/wallpapers/current
hsetroot -solid $(grep SURFACE .config/themes/rose-pine | cut -d'=' -f2) -full usr/pics/misc/wallpapers/bone-transparent.png
bar &
xbindkeys

exec cwm > /dev/null
