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

short() {
  curl -F"shorten=$*" https://0x0.st
}

md() {
    pandoc -s -f markdown -t man "$*" | man -l -
}
