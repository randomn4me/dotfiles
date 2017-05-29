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

# read markdown files like manpages
md() {
	test $# -eq 0 && exit 1
	for f in "$@"; do
		test ! -f $f && exit 1
	done
	pandoc -s -f markdown -t man "$@" | man -l -
}

# read webpage like manpages
url() {
	curl -s "$*" | pandoc -s -f html -t man | man -l -
}

