for config (~/.zsh/*.sh) source $config

autoload -Uz compinit
zstyle ':completion:*' menu select
fpath+=~/.zfunc
