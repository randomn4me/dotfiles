source_when_exists() {
    test -f $1 && source $1
}

fpath+=$HOME/.zsh/completion
fpath+=/opt/homebrew/share/zsh/site-functions
fpath+=/opt/homebrew/opt/task@2/share/zsh/site-functions 

autoload -Uz compinit
compinit

zstyle ':completion:*' menu select
setopt COMPLETE_ALIASES

source_when_exists /usr/share/fzf/key-bindings.zsh
source_when_exists /usr/share/fzf/completion.zsh
source_when_exists /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

setopt correct
