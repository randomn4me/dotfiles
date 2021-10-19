test -f $HOME/.zshrc && source $HOME/.zshrc

[[ -z "$DISPLAY" && "$XDG_VTNR" -eq 1 ]] && exec startx &> /dev/null
