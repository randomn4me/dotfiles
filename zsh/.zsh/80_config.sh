autoload -Uz compinit
compinit

zstyle ':completion:*' menu select
setopt COMPLETE_ALIASES

test -f /usr/share/fzf/key-bindings.zsh && source /usr/share/fzf/key-bindings.zsh
test -f /usr/share/fzf/completion.zsh && source /usr/share/fzf/completion.zsh

