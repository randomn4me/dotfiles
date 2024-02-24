# shorten pwd \w
PROMPT_DIRTRIM=2

# Mimics zsh run-help
shopt -s autocd
shopt -s checkwinsize

# history settings
export HISTFILESIZE=200000
export HISTSIZE=10000
export HISTCONTROL="erasedups:ignoreboth"
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear"
shopt -s histappend

test -f /usr/share/fzf/key-bindings.bash && source /usr/share/fzf/key-bindings.bash
test -f /usr/share/fzf/completion.bash && source /usr/share/fzf/completion.bash

