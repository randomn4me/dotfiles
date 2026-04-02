alias cat="bat"
alias ls="eza"
alias la="ls -ahF --color=auto"
alias ll="ls -lhF --color=auto"
alias l="ls -1hF --color=auto"
alias lla="ls -lahF --color=auto"

# small protection before doing something really stupid
alias rm='rm -i'
alias mv='mv -i'

# cd
alias ".."="cd ../"
alias diss="cd $HOME/src/latex/diss"

# useful
alias mp3dl='yt-dlp -x --audio-format mp3'
alias csv='column -t -s\;'

# shorter
alias cp="cp -r"
alias mkdir="mkdir -p"
alias scp="scp -r"
alias rice="curl -L git.io/rice"
alias o='open'
alias starwars="telnet towel.blinkenlights.nl"
alias neomutt="TERM=xterm-direct neomutt"
alias mutt="TERM=xterm-direct neomutt"
alias todo="vim $HOME/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/obsidian/todo.md"

sanitize() {
    $(echo "$@" | tr [A-Z\ ] [a-z\-])
}
