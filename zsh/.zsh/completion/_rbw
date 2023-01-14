#compdef rbw

autoload -U is-at-least

_rbw() {
    typeset -A opt_args
    typeset -a _arguments_options
    local ret=1

    if is-at-least 5.2; then
        _arguments_options=(-s -S -C)
    else
        _arguments_options=(-s -C)
    fi

    local context curcontext="$curcontext" state line
    _arguments "${_arguments_options[@]}" \
'-h[Prints help information]' \
'--help[Prints help information]' \
'-V[Prints version information]' \
'--version[Prints version information]' \
":: :_rbw_commands" \
"*::: :->rbw" \
&& ret=0
    case $state in
    (rbw)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:rbw-command-$line[1]:"
        case $line[1] in
            (config)
_arguments "${_arguments_options[@]}" \
'-h[Prints help information]' \
'--help[Prints help information]' \
'-V[Prints version information]' \
'--version[Prints version information]' \
":: :_rbw__config_commands" \
"*::: :->config" \
&& ret=0
case $state in
    (config)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:rbw-config-command-$line[1]:"
        case $line[1] in
            (show)
_arguments "${_arguments_options[@]}" \
'-h[Prints help information]' \
'--help[Prints help information]' \
'-V[Prints version information]' \
'--version[Prints version information]' \
&& ret=0
;;
(set)
_arguments "${_arguments_options[@]}" \
'-h[Prints help information]' \
'--help[Prints help information]' \
'-V[Prints version information]' \
'--version[Prints version information]' \
':key -- Configuration key to set:_files' \
':value -- Value to set the configuration option to:_files' \
&& ret=0
;;
(unset)
_arguments "${_arguments_options[@]}" \
'-h[Prints help information]' \
'--help[Prints help information]' \
'-V[Prints version information]' \
'--version[Prints version information]' \
':key -- Configuration key to unset:_files' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" \
'-h[Prints help information]' \
'--help[Prints help information]' \
'-V[Prints version information]' \
'--version[Prints version information]' \
&& ret=0
;;
        esac
    ;;
esac
;;
(register)
_arguments "${_arguments_options[@]}" \
'-h[Prints help information]' \
'--help[Prints help information]' \
'-V[Prints version information]' \
'--version[Prints version information]' \
&& ret=0
;;
(login)
_arguments "${_arguments_options[@]}" \
'-h[Prints help information]' \
'--help[Prints help information]' \
'-V[Prints version information]' \
'--version[Prints version information]' \
&& ret=0
;;
(unlock)
_arguments "${_arguments_options[@]}" \
'-h[Prints help information]' \
'--help[Prints help information]' \
'-V[Prints version information]' \
'--version[Prints version information]' \
&& ret=0
;;
(unlocked)
_arguments "${_arguments_options[@]}" \
'-h[Prints help information]' \
'--help[Prints help information]' \
'-V[Prints version information]' \
'--version[Prints version information]' \
&& ret=0
;;
(sync)
_arguments "${_arguments_options[@]}" \
'-h[Prints help information]' \
'--help[Prints help information]' \
'-V[Prints version information]' \
'--version[Prints version information]' \
&& ret=0
;;
(ls)
_arguments "${_arguments_options[@]}" \
'*--fields=[Fields to display. Available options are id, name, user, folder. Multiple fields will be separated by tabs.]' \
'-h[Prints help information]' \
'--help[Prints help information]' \
'-V[Prints version information]' \
'--version[Prints version information]' \
&& ret=0
;;
(list)
_arguments "${_arguments_options[@]}" \
'*--fields=[Fields to display. Available options are id, name, user, folder. Multiple fields will be separated by tabs.]' \
'-h[Prints help information]' \
'--help[Prints help information]' \
'-V[Prints version information]' \
'--version[Prints version information]' \
&& ret=0
;;
(get)
_arguments "${_arguments_options[@]}" \
'--folder=[Folder name to search in]' \
'--full[Display the notes in addition to the password]' \
'-h[Prints help information]' \
'--help[Prints help information]' \
'-V[Prints version information]' \
'--version[Prints version information]' \
':name -- Name or UUID of the entry to display:_files' \
'::user -- Username of the entry to display:_files' \
&& ret=0
;;
(code)
_arguments "${_arguments_options[@]}" \
'--folder=[Folder name to search in]' \
'-h[Prints help information]' \
'--help[Prints help information]' \
'-V[Prints version information]' \
'--version[Prints version information]' \
':name -- Name or UUID of the entry to display:_files' \
'::user -- Username of the entry to display:_files' \
&& ret=0
;;
(add)
_arguments "${_arguments_options[@]}" \
'*--uri=[URI for the password entry]' \
'--folder=[Folder for the password entry]' \
'-h[Prints help information]' \
'--help[Prints help information]' \
'-V[Prints version information]' \
'--version[Prints version information]' \
':name -- Name of the password entry:_files' \
'::user -- Username for the password entry:_files' \
&& ret=0
;;
(gen)
_arguments "${_arguments_options[@]}" \
'*--uri=[URI for the password entry]' \
'--folder=[Folder for the password entry]' \
'--no-symbols[Generate a password with no special characters]' \
'--only-numbers[Generate a password consisting of only numbers]' \
'--nonconfusables[Generate a password without visually similar characters (useful for passwords intended to be written down)]' \
'--diceware[Generate a password of multiple dictionary words chosen from the EFF word list. The len parameter for this option will set the number of words to generate, rather than characters.]' \
'-h[Prints help information]' \
'--help[Prints help information]' \
'-V[Prints version information]' \
'--version[Prints version information]' \
':len -- Length of the password to generate:_files' \
'::name -- Name of the password entry:_files' \
'::user -- Username for the password entry:_files' \
&& ret=0
;;
(generate)
_arguments "${_arguments_options[@]}" \
'*--uri=[URI for the password entry]' \
'--folder=[Folder for the password entry]' \
'--no-symbols[Generate a password with no special characters]' \
'--only-numbers[Generate a password consisting of only numbers]' \
'--nonconfusables[Generate a password without visually similar characters (useful for passwords intended to be written down)]' \
'--diceware[Generate a password of multiple dictionary words chosen from the EFF word list. The len parameter for this option will set the number of words to generate, rather than characters.]' \
'-h[Prints help information]' \
'--help[Prints help information]' \
'-V[Prints version information]' \
'--version[Prints version information]' \
':len -- Length of the password to generate:_files' \
'::name -- Name of the password entry:_files' \
'::user -- Username for the password entry:_files' \
&& ret=0
;;
(edit)
_arguments "${_arguments_options[@]}" \
'--folder=[Folder name to search in]' \
'-h[Prints help information]' \
'--help[Prints help information]' \
'-V[Prints version information]' \
'--version[Prints version information]' \
':name -- Name or UUID of the password entry:_files' \
'::user -- Username for the password entry:_files' \
&& ret=0
;;
(rm)
_arguments "${_arguments_options[@]}" \
'--folder=[Folder name to search in]' \
'-h[Prints help information]' \
'--help[Prints help information]' \
'-V[Prints version information]' \
'--version[Prints version information]' \
':name -- Name or UUID of the password entry:_files' \
'::user -- Username for the password entry:_files' \
&& ret=0
;;
(remove)
_arguments "${_arguments_options[@]}" \
'--folder=[Folder name to search in]' \
'-h[Prints help information]' \
'--help[Prints help information]' \
'-V[Prints version information]' \
'--version[Prints version information]' \
':name -- Name or UUID of the password entry:_files' \
'::user -- Username for the password entry:_files' \
&& ret=0
;;
(history)
_arguments "${_arguments_options[@]}" \
'--folder=[Folder name to search in]' \
'-h[Prints help information]' \
'--help[Prints help information]' \
'-V[Prints version information]' \
'--version[Prints version information]' \
':name -- Name or UUID of the password entry:_files' \
'::user -- Username for the password entry:_files' \
&& ret=0
;;
(lock)
_arguments "${_arguments_options[@]}" \
'-h[Prints help information]' \
'--help[Prints help information]' \
'-V[Prints version information]' \
'--version[Prints version information]' \
&& ret=0
;;
(purge)
_arguments "${_arguments_options[@]}" \
'-h[Prints help information]' \
'--help[Prints help information]' \
'-V[Prints version information]' \
'--version[Prints version information]' \
&& ret=0
;;
(stop-agent)
_arguments "${_arguments_options[@]}" \
'-h[Prints help information]' \
'--help[Prints help information]' \
'-V[Prints version information]' \
'--version[Prints version information]' \
&& ret=0
;;
(gen-completions)
_arguments "${_arguments_options[@]}" \
'-h[Prints help information]' \
'--help[Prints help information]' \
'-V[Prints version information]' \
'--version[Prints version information]' \
':shell:_files' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" \
'-h[Prints help information]' \
'--help[Prints help information]' \
'-V[Prints version information]' \
'--version[Prints version information]' \
&& ret=0
;;
        esac
    ;;
esac
}

(( $+functions[_rbw_commands] )) ||
_rbw_commands() {
    local commands; commands=(
        "config:Get or set configuration options" \
"register:Register this device with the Bitwarden server" \
"login:Log in to the Bitwarden server" \
"unlock:Unlock the local Bitwarden database" \
"unlocked:Check if the local Bitwarden database is unlocked" \
"sync:Update the local copy of the Bitwarden database" \
"list:List all entries in the local Bitwarden database" \
"ls:List all entries in the local Bitwarden database" \
"get:Display the password for a given entry" \
"code:Display the authenticator code for a given entry" \
"add:Add a new password to the database" \
"generate:Generate a new password" \
"gen:Generate a new password" \
"edit:Modify an existing password" \
"remove:Remove a given entry" \
"rm:Remove a given entry" \
"history:View the password history for a given entry" \
"lock:Lock the password database" \
"purge:Remove the local copy of the password database" \
"stop-agent:Terminate the background agent" \
"gen-completions:Generate completion script for the given shell" \
"help:Prints this message or the help of the given subcommand(s)" \
    )
    _describe -t commands 'rbw commands' commands "$@"
}
(( $+functions[_rbw__add_commands] )) ||
_rbw__add_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rbw add commands' commands "$@"
}
(( $+functions[_rbw__code_commands] )) ||
_rbw__code_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rbw code commands' commands "$@"
}
(( $+functions[_rbw__config_commands] )) ||
_rbw__config_commands() {
    local commands; commands=(
        "show:Show the values of all configuration settings" \
"set:Set a configuration option" \
"unset:Reset a configuration option to its default" \
"help:Prints this message or the help of the given subcommand(s)" \
    )
    _describe -t commands 'rbw config commands' commands "$@"
}
(( $+functions[_rbw__edit_commands] )) ||
_rbw__edit_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rbw edit commands' commands "$@"
}
(( $+functions[_gen_commands] )) ||
_gen_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'gen commands' commands "$@"
}
(( $+functions[_rbw__gen_commands] )) ||
_rbw__gen_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rbw gen commands' commands "$@"
}
(( $+functions[_rbw__gen-completions_commands] )) ||
_rbw__gen-completions_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rbw gen-completions commands' commands "$@"
}
(( $+functions[_rbw__generate_commands] )) ||
_rbw__generate_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rbw generate commands' commands "$@"
}
(( $+functions[_rbw__get_commands] )) ||
_rbw__get_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rbw get commands' commands "$@"
}
(( $+functions[_rbw__config__help_commands] )) ||
_rbw__config__help_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rbw config help commands' commands "$@"
}
(( $+functions[_rbw__help_commands] )) ||
_rbw__help_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rbw help commands' commands "$@"
}
(( $+functions[_rbw__history_commands] )) ||
_rbw__history_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rbw history commands' commands "$@"
}
(( $+functions[_rbw__list_commands] )) ||
_rbw__list_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rbw list commands' commands "$@"
}
(( $+functions[_rbw__lock_commands] )) ||
_rbw__lock_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rbw lock commands' commands "$@"
}
(( $+functions[_rbw__login_commands] )) ||
_rbw__login_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rbw login commands' commands "$@"
}
(( $+functions[_ls_commands] )) ||
_ls_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'ls commands' commands "$@"
}
(( $+functions[_rbw__ls_commands] )) ||
_rbw__ls_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rbw ls commands' commands "$@"
}
(( $+functions[_rbw__purge_commands] )) ||
_rbw__purge_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rbw purge commands' commands "$@"
}
(( $+functions[_rbw__register_commands] )) ||
_rbw__register_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rbw register commands' commands "$@"
}
(( $+functions[_rbw__remove_commands] )) ||
_rbw__remove_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rbw remove commands' commands "$@"
}
(( $+functions[_rbw__rm_commands] )) ||
_rbw__rm_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rbw rm commands' commands "$@"
}
(( $+functions[_rm_commands] )) ||
_rm_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rm commands' commands "$@"
}
(( $+functions[_rbw__config__set_commands] )) ||
_rbw__config__set_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rbw config set commands' commands "$@"
}
(( $+functions[_rbw__config__show_commands] )) ||
_rbw__config__show_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rbw config show commands' commands "$@"
}
(( $+functions[_rbw__stop-agent_commands] )) ||
_rbw__stop-agent_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rbw stop-agent commands' commands "$@"
}
(( $+functions[_rbw__sync_commands] )) ||
_rbw__sync_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rbw sync commands' commands "$@"
}
(( $+functions[_rbw__unlock_commands] )) ||
_rbw__unlock_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rbw unlock commands' commands "$@"
}
(( $+functions[_rbw__unlocked_commands] )) ||
_rbw__unlocked_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rbw unlocked commands' commands "$@"
}
(( $+functions[_rbw__config__unset_commands] )) ||
_rbw__config__unset_commands() {
    local commands; commands=(
        
    )
    _describe -t commands 'rbw config unset commands' commands "$@"
}

_rbw "$@"