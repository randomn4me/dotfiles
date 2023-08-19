export EDITOR="vim"
export VISUAL="vim"
export PAGER="less"

export LC_LANG="en_US.UTF-8"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

typeset -U PATH
export GOPATH=$HOME/src/go
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$GOPATH/bin:$PATH

export DMENU_PATH=$HOME/bin/menu
export PEASEC=$HOME/var/nextcloud
CHROOT=/home/phil/src/aur/chroot

export WORKON_HOME=$HOME/var/virtualenvs/

# msmtpq setup
export Q=$HOME/var/msmtpqueue
export LOG=$HOME/var/log

source ~/.config/themes/current

# rose pine dawn
#export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS"
# --color=fg:#575279,bg:#fffaf3,hl:#9893a5
# --color=fg+:#797593,bg+:#faf4ed,hl+:#797593
# --color=info:#56949f,prompt:#56949f,pointer:#907aa9
# --color=marker:#d7827e,spinner:#b4637a,header:#d7827e"

# rose pine
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS"
 --color=fg:#e0def4,bg:#1f1d2e,hl:#6e6a86
 --color=fg+:#908caa,bg+:#191724,hl+:#908caa
 --color=info:#9ccfd8,prompt:#f6c177,pointer:#c4a7e7
 --color=marker:#ebbcba,spinner:#eb6f92,header:#ebbcba"
