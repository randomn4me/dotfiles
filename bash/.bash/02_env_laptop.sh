echo $PATH | grep -q "$HOME/bin" || export PATH="$HOME/bin:$PATH"
echo $PATH | grep -q "$HOME/src/go/bin" || export PATH="$PATH:$HOME/src/go/bin"

export XDG_CONFIG_HOME="${HOME}/.config"
export GOPATH="$HOME/src/go"
export MAIL="$HOME/var/mail/Inbox"

export "$HOME/usr/docs/uni/paper"
