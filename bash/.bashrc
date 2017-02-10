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
	times=()
	for file in "$@"; do
		times+=$(cat $file | cut -d# -f1 | paste -s -d+ | bc -l)
	done
	echo ${times[@]} | paste -s -d+ | bc -l
}
