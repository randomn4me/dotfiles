if [[ "$EUID" -ne "0" ]]; then
	LEVEL="%F{white}"
else
	LEVEL="%F{red}"
fi

# prompt
PS1="%(4~|../%3~|%~) ${LEVEL}>>%f "

