#
# ~/.bashrc
#

export PS1="\w >> "

export EDITOR="vim"
export PATH="$PATH:${HOME}/bin"
export XDG_CONFIG_HOME="${HOME}/.config"

# ignore duplicate commands
export HISTCONTROL=ignoredups

# shorten pwd \w
PROMPT_DIRTRIM=2

[[ -f ${HOME}/.aliases ]] && source ${HOME}/.aliases

source ${HOME}/.cache/wal/colors.sh

# History completion.
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# Mimics zsh run-help
shopt -s autocd
shopt -s checkwinsize

# Import colorscheme from 'wal'
[[ -z "$VTE_VERSION" ]] && (wal -r &)

# Auto start X.
[[ -z "$DISPLAY" && "$XDG_VTNR" -eq 1 ]] && exec startx -- vt1 &> /dev/null

t() {
	# summing numbers of files with format (num # comment\n)*
	test "$#" = "0" && printf "%s\n" "Usage : t file file [..]" 1>&2 && return
	time=0
	for file in "$@"; do
		newtime="$(cat $file | sed 's/#.*$//' | paste -s -d+ | bc -l)"
		time=$(echo "$time + $newtime" | bc -l)
	done
	echo "$time"
}

short() {
  curl -F"shorten=$*" https://0x0.st
}

md() {
    pandoc -s -f markdown -t man "$*" | man -l -
}

trap 'echo -ne "\033]2;$(history 1 | sed "s/^[ ]*[0-9]*[ ]*//g")\007"' DEBUG

