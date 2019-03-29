alias ls="ls --color=auto"
alias la="ls -ahF --color=auto"
alias ll="ls -lhF --color=auto"
alias l="ls -1hF --color=auto"
alias lla="ls -lahF --color=auto"

# small protection before doing something really stupid
alias rm='rm -i'
alias mv='mv -i'

# cd
alias ".."="cd ../"
alias "sit"="cd ~/usr/docs/work/sit"
alias "uni"="cd `curterm`"
alias "pics"="cd ~/usr/pics"
alias "paper"="test ! -z $PAPER_DIR && cd $PAPER_DIR"

# useful
alias mp3dl='youtube-dl -x --audio-format mp3'
alias rm-orphans='test -z "`aurman -Qdtq`" && echo "no orphan" || aurman -Rns $(aurman -Qdtq)'
alias wanip="curl -s https://4.ifcfg.me/ | grep -oE '\b([0-9]{1,3}\.){3}[0-9]{1,3}\b'"
alias kernelcodestyle="curl -s https://www.kernel.org/doc/Documentation/process/coding-style.rst | less"
alias csv='column -t -s\;'
alias disks='echo "╓───── m o u n t . p o i n t s"; echo "╙────────────────────────────────────── ─ ─ "; lsblk -a; echo ""; echo "╓───── d i s k . u s a g e"; echo "╙────────────────────────────────────── ─ ─ "; df -h;'

# shorter
alias cp="cp -r"
alias mkdir="mkdir -p"
alias scp="scp -r"
alias xsel="xsel -b"
alias pwgen='pwgen -s -n 30 1'
alias cal='cal -m'
alias shred='shred -u -n 15 -z'
alias psef="ps -ef"
alias future="toilet -t -f future"
alias ascii="toilet -t -f 3d"
alias rusto="toilet -t -f rusto"
alias rustofat="toilet -t -f rustofat"
alias antivirus="sudo freshclam && sudo clamscan"
alias rice="curl -L git.io/rice; tput sgr0"
alias music='tmx r'
alias twitch-curses='twitch-curses --player mpv'
alias s='signal'
alias wiki='wikicurses'

# for dir in `curterm`/*; do
# 	test -d "$dir" && alias "`basename $dir`"="cd $dir"
# done
