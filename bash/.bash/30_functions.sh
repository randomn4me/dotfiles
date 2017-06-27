wal() {
	test $# -ne 1 && printf "%s\n" "Usage: wal <path>" && return
	~/bin/wal -i $1 -o wal-after > /dev/null 2>&1 
}
