EDITOR=/usr/bin/nvim

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx -- vt1 &> /dev/null
fi

source ~/.config/themes/rose-pine
