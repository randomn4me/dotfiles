export EDITOR="vim"
export VISUAL="vim"
export PAGER="less"
export MANPAGER='nvim --cmd ":lua vim.g.noplugins=1" +Man!'

export LC_LANG="en_US.UTF-8"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  --color=fg:#c0caf5,bg:#1a1b26,hl:#ff9e64 \
  --color=fg+:#c0caf5,bg+:#292e42,hl+:#ff9e64 \
  --color=info:#7aa2f7,prompt:#7dcfff,pointer:#7dcfff \
  --color=marker:#9ece6a,spinner:#9ece6a,header:#9ece6a"
