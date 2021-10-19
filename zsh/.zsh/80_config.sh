fpath+=$HOME/.zsh/completion

autoload -Uz compinit
compinit

zstyle ':completion:*' menu select
setopt COMPLETE_ALIASES

# ignore duplicates in history file (duplicates are still inserted in file)
setopt HIST_IGNORE_ALL_DUPS

test -f /usr/share/fzf/key-bindings.zsh && source /usr/share/fzf/key-bindings.zsh
test -f /usr/share/fzf/completion.zsh && source /usr/share/fzf/completion.zsh

