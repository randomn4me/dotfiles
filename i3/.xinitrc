systemctl --user import-environment DISPLAY

unclutter --timeout 2 --hide-on-touch &

exec i3
