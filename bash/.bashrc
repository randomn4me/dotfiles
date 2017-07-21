# 
#  ██                        ██                    
# ░██                       ░██                    
# ░██       ██████    ██████░██      ██████  █████ 
# ░██████  ░░░░░░██  ██░░░░ ░██████ ░░██░░█ ██░░░██
# ░██░░░██  ███████ ░░█████ ░██░░░██ ░██ ░ ░██  ░░ 
# ░██  ░██ ██░░░░██  ░░░░░██░██  ░██ ░██   ░██   ██
# ░██████ ░░████████ ██████ ░██  ░██░███   ░░█████ 
# ░░░░░    ░░░░░░░░ ░░░░░░  ░░   ░░ ░░░     ░░░░░  
# 

for config in $(ls $HOME/.bash/*.sh); do
	source "$config"
done

# Auto start X.
[[ -z "$DISPLAY" && "$XDG_VTNR" -eq 1 ]] && exec startx -- vt1 &> /dev/null

test -f $HOME/.$USER && cat $HOME/etc/r4ndom
echo ""
echo "                                               Hi [32m$USER[0m"
echo "                                  You have [33m`ls $MAIL/new | wc -l`[0m new mails"
#echo ""
#echo "                                Your events today are:"
#echo "                              $(khal list | sponge | sed "1d")"
