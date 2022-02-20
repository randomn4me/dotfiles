# set emacs keybinding mode
bindkey -e

my-backward-delete-word () {
	local WORDCHARS='~!#$%^&*(){}[]<>?+;'
	zle backward-delete-word
}
zle -N my-backward-delete-word

bindkey    '\e^?' my-backward-delete-word

