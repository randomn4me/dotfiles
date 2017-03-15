alias ls="ls -hF --color=auto"
alias la="ls -ahF --color=auto"
alias ll="ls -lhF --color=auto"
alias l="ls -1hF --color=auto"
alias lla="ls -lahF --color=auto"

# small protection before doing something really stupid
alias rm='rm -i'
alias mv='mv -i'

# cd aliases
alias hda='cd ${HOME}/usr/docs/work/hda/'
alias dots='cd ${HOME}/etc/bspwm_dots'
alias uni='cd ${HOME}/usr/docs/uni/msc_itsec'
alias copl='cd ${HOME}/usr/docs/uni/msc_itsec/copl'
alias tep='cd ${HOME}/usr/docs/work/hda/hda_edv_hiwi/tep_tool'

# useful
alias ".."="cd ../"
alias musicdl='youtube-dl -x --audio-format mp3'
alias rm-orphans='pacaur -R $(pacaur -Qdt | cut -d" " -f1)'
alias wanip="curl -s https://4.ifcfg.me/ | grep -oE '\b([0-9]{1,3}\.){3}[0-9]{1,3}\b'"

# renew commands
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
alias o='xdg-open'
alias open='xdg-open'
alias pipes='pipes -f 25 -r 3000'
alias twitch-curses='twitch-curses --player mpv'

# shorter
alias psef="ps -ef"
alias tree='tree -CAFa -I "CVS|*.*.package|.svn|.git|.hg|node_modules|bower_components" --dirsfirst'
alias matrix="cmatrix"
alias tempwatch="while :; do clear && sensors; sleep 1; done;"
alias future="toilet -t -f future"
alias ascii="toilet -t -f 3d"
alias rusto="toilet -t -f rusto"
alias rustofat="toilet -t -f rustofat"
alias disks='echo "╓───── m o u n t . p o i n t s"; echo "╙────────────────────────────────────── ─ ─ "; lsblk -a; echo ""; echo "╓───── d i s k . u s a g e"; echo "╙────────────────────────────────────── ─ ─ "; df -h;'
alias antivirus="sudo freshclam && sudo clamscan"
alias rice="curl -L git.io/rice"

# read markdown files like manpages
md() {
    pandoc -s -f markdown -t man "$*" | man -l -
}

# nullpointer url shortener
short() {
  curl -F"shorten=$*" https://0x0.st
}
