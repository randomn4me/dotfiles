export EDITOR="nvim"
export VISUAL="nvim"
export PAGER="less"
export MANPAGER='nvim --cmd ":lua vim.g.noplugins=1" +Man!'
export MANWIDTH=80

export LC_LANG="en_US.UTF-8"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

typeset -U PATH
export GOPATH=$HOME/src/go
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$GOPATH/bin:$PATH

test -d $HOME/.cargo && test -f $HOME/.cargo/env && source $HOME/.cargo/env
