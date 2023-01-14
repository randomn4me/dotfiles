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
