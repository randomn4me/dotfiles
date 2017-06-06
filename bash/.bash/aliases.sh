alias ls="ls --color=auto"
alias la="ls -ahF --color=auto"
alias ll="ls -lhF --color=auto"
alias l="ls -1hF --color=auto"
alias lla="ls -lahF --color=auto"

# small protection before doing something really stupid
alias rm='rm -i'
alias mv='mv -i'

# cd aliases
alias uni='cd $(curterm)'

# useful
alias ".."="cd ../"
alias musicdl='youtube-dl -x --audio-format mp3'
alias rm-orphans='test -z "`pacaur -Qdtq`" && echo "no orphan" || pacaur -R $(pacaur -Qdtq)'
alias wanip="curl -s https://4.ifcfg.me/ | grep -oE '\b([0-9]{1,3}\.){3}[0-9]{1,3}\b'"
alias kernelcodestyle="curl -s https://www.kernel.org/doc/Documentation/process/coding-style.rst | less"
alias weather="weather Darmstadt"

# shorter
alias open="xdg-open"
alias cp="cp -r"
alias mkdir="mkdir -p"
alias scp="scp -r"
alias xsel="xsel -b"
alias xclip="xclip -selection clipboard"
alias pwgen='pwgen -s -n 30 1'
alias cal='cal -m'
alias shred='shred -u -n 15 -z'
alias ping='ping -c 5'
alias pingt='ping 8.8.8.8'
alias psef="ps -ef"
alias matrix="cmatrix"
alias future="toilet -t -f future"
alias ascii="toilet -t -f 3d"
alias rusto="toilet -t -f rusto"
alias rustofat="toilet -t -f rustofat"
alias disks='echo "╓───── m o u n t . p o i n t s"; echo "╙────────────────────────────────────── ─ ─ "; lsblk -a; echo ""; echo "╓───── d i s k . u s a g e"; echo "╙────────────────────────────────────── ─ ─ "; df -h;'
alias antivirus="sudo freshclam && sudo clamscan"
alias rice="curl -L git.io/rice"
alias tty-clock="tty-clock -c -b -t"
