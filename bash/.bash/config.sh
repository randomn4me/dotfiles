#set vi mode
#set -o vi

# shorten pwd \w
PROMPT_DIRTRIM=2

# Mimics zsh run-help
shopt -s autocd
shopt -s checkwinsize

# history settings
export HISTFILESIZE=200000
export HISTSIZE=10000
export HISTCONTROL="ignorespace:ignoredups"
shopt -s histappend

# setting urxvt window name to last executed command
trap 'echo -ne "\033]2;$(history 1 | sed "s/^[ ]*[0-9]*[ ]*//g")\007"' DEBUG
