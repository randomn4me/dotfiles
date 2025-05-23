alias cat="bat"
alias ls="eza"
alias la="ls -ahF --color=auto"
alias ll="ls -lhF --color=auto"
alias l="ls -1hF --color=auto"
alias lla="ls -lahF --color=auto"

alias ssh="TERM=linux ssh"

# small protection before doing something really stupid
alias rm='rm -i'
alias mv='mv -i'

# cd
alias ".."="cd ../"
alias diss="cd $HOME/src/latex/diss"

# useful
alias mp3dl='yt-dlp -x --audio-format mp3'
alias kernelcodestyle="curl -s https://www.kernel.org/doc/Documentation/process/coding-style.rst | less"
alias csv='column -t -s\;'
alias disks='echo "╓───── m o u n t . p o i n t s"; echo "╙────────────────────────────────────── ─ ─ "; lsblk -a; echo ""; echo "╓───── d i s k . u s a g e"; echo "╙────────────────────────────────────── ─ ─ "; df -h;'

# shorter
alias cp="cp -r"
alias mkdir="mkdir -p"
alias scp="scp -r"
alias xsel="xsel -b"
alias pwgen='pwgen -s -n 50 1'
alias cal='cal -m'
alias shred='shred -u -n 15 -z'
alias antivirus="sudo freshclam && sudo clamscan"
alias rice="curl -L git.io/rice"
alias ccm='sudo ccm'
alias o='open'
alias chrome="firefox"
#alias mkdate="mkdir $(date +%F); cd $(date +%F)"
alias starwars="telnet towel.blinkenlights.nl"
alias task5="task limit:5"
alias mutt="neomutt"

sanitize() {
    $(echo "$@" | tr [A-Z\ ] [a-z\-])
}

mkdate() {
    if [[ $# -ge 1 ]]; then
        dirname=$(date +%F)_"$(echo $@ | tr '[A-Z\ ]' '[a-z\-]')"
    else
        dirname="$(date +%F)"
    fi
    mkdir $dirname && cd $dirname
}

mvtodo() {
	for f in $@; do
		test -f "$f" || (echo "$f is no file" && exit 1)
		mv "$f" $PEASEC/todo
	done
}

pdfreduce() {
	test ! -f $1 && echo "Usage: pdfreduce <file>" && exit 1

	filename="${1%.*}"

	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen \
		-dNOPAUSE -dQUIET -dBATCH -sOutputFile="${filename}_reduced.pdf" "$1"
}
