test -f $HOME/.zsh && souce $HOME/.zsh

[[ -z "$DISPLAY" && "$XDG_VTNR" -eq 1 ]] && exec startx &> /dev/null
