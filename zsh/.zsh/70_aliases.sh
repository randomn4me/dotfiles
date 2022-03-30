alias ls="ls --color=auto"
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
alias "mutt"="neomutt"

# useful
alias mp3dl='youtube-dl -x --audio-format mp3'
alias rm-orphans='test -z "`paru -Qdtq`" && echo "no orphan" || paru -Rns $(paru -Qdtq)'
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
alias wiki='wikicurses'
alias ccm='sudo ccm'
alias o='open'
alias tt="notify !!! Just Don\'t !!!"
alias chrome="firefox"
alias mkdate="mkdir $(date +%F); cd $(date +%F)"

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
