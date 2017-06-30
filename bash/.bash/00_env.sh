export EDITOR="vim"
export VISUAL="vim"
export PAGER="less"

export LC_LANG="en_US.UTF-8"

echo $PATH | grep -q "$HOME/bin" || export PATH="$HOME/bin:$PATH"
export XDG_CONFIG_HOME="${HOME}/.config"
export GOPATH="$HOME/src/go"
export MAIL="$HOME/var/mail/Inbox"

PAPER_DIR="$HOME/usr/docs/uni/paper"
test -d "$PAPER_DIR" && export PAPER_DIR

export BAR_FONT="misc ohsnap:size=7"
export COLOR_FILE="$HOME/.config/colors"
export GAPS=10
export TOP_PADDING=20
export BORDER_WIDTH=2
