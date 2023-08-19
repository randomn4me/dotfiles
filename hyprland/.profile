EDITOR=/usr/bin/nvim

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec Hyprland &> /dev/null
fi
