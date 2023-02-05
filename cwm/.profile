EDITOR=/usr/bin/nvim

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi

source ~/.config/themes/rose-pine
