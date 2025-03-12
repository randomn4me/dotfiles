#compdef himalaya

autoload -U is-at-least

_himalaya() {
    typeset -A opt_args
    typeset -a _arguments_options
    local ret=1

    if is-at-least 5.2; then
        _arguments_options=(-s -S -C)
    else
        _arguments_options=(-s -C)
    fi

    local context curcontext="$curcontext" state line
    _arguments "${_arguments_options[@]}" : \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
":: :_himalaya_commands" \
"*::: :->himalaya" \
&& ret=0
    case $state in
    (himalaya)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:himalaya-command-$line[1]:"
        case $line[1] in
            (account)
_arguments "${_arguments_options[@]}" : \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
":: :_himalaya__account_commands" \
"*::: :->account" \
&& ret=0

    case $state in
    (account)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:himalaya-account-command-$line[1]:"
        case $line[1] in
            (configure)
_arguments "${_arguments_options[@]}" : \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
':account_name -- The name of the account:_default' \
&& ret=0
;;
(doctor)
_arguments "${_arguments_options[@]}" : \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'-f[Try to fix the given account]' \
'--fix[Try to fix the given account]' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
'::account_name -- The name of the account:_default' \
&& ret=0
;;
(list)
_arguments "${_arguments_options[@]}" : \
'-w+[The maximum width the table should not exceed]:PIXELS:_default' \
'--max-width=[The maximum width the table should not exceed]:PIXELS:_default' \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_himalaya__account__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:himalaya-account-help-command-$line[1]:"
        case $line[1] in
            (configure)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(doctor)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(list)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
;;
(folder)
_arguments "${_arguments_options[@]}" : \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
":: :_himalaya__folder_commands" \
"*::: :->folder" \
&& ret=0

    case $state in
    (folder)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:himalaya-folder-command-$line[1]:"
        case $line[1] in
            (add)
_arguments "${_arguments_options[@]}" : \
'-a+[Override the default account]:NAME:_default' \
'--account=[Override the default account]:NAME:_default' \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
':folder_name -- The name of the folder:_default' \
&& ret=0
;;
(create)
_arguments "${_arguments_options[@]}" : \
'-a+[Override the default account]:NAME:_default' \
'--account=[Override the default account]:NAME:_default' \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
':folder_name -- The name of the folder:_default' \
&& ret=0
;;
(list)
_arguments "${_arguments_options[@]}" : \
'-a+[Override the default account]:NAME:_default' \
'--account=[Override the default account]:NAME:_default' \
'-w+[The maximum width the table should not exceed]:PIXELS:_default' \
'--max-width=[The maximum width the table should not exceed]:PIXELS:_default' \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
&& ret=0
;;
(expunge)
_arguments "${_arguments_options[@]}" : \
'-a+[Override the default account]:NAME:_default' \
'--account=[Override the default account]:NAME:_default' \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
':folder_name -- The name of the folder:_default' \
&& ret=0
;;
(purge)
_arguments "${_arguments_options[@]}" : \
'-a+[Override the default account]:NAME:_default' \
'--account=[Override the default account]:NAME:_default' \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'-y[]' \
'--yes[]' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
':folder_name -- The name of the folder:_default' \
&& ret=0
;;
(delete)
_arguments "${_arguments_options[@]}" : \
'-a+[Override the default account]:NAME:_default' \
'--account=[Override the default account]:NAME:_default' \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'-y[]' \
'--yes[]' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
':folder_name -- The name of the folder:_default' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_himalaya__folder__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:himalaya-folder-help-command-$line[1]:"
        case $line[1] in
            (add)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(list)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(expunge)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(purge)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(delete)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
;;
(mailbox)
_arguments "${_arguments_options[@]}" : \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
":: :_himalaya__folder_commands" \
"*::: :->folder" \
&& ret=0

    case $state in
    (folder)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:himalaya-folder-command-$line[1]:"
        case $line[1] in
            (add)
_arguments "${_arguments_options[@]}" : \
'-a+[Override the default account]:NAME:_default' \
'--account=[Override the default account]:NAME:_default' \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
':folder_name -- The name of the folder:_default' \
&& ret=0
;;
(create)
_arguments "${_arguments_options[@]}" : \
'-a+[Override the default account]:NAME:_default' \
'--account=[Override the default account]:NAME:_default' \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
':folder_name -- The name of the folder:_default' \
&& ret=0
;;
(list)
_arguments "${_arguments_options[@]}" : \
'-a+[Override the default account]:NAME:_default' \
'--account=[Override the default account]:NAME:_default' \
'-w+[The maximum width the table should not exceed]:PIXELS:_default' \
'--max-width=[The maximum width the table should not exceed]:PIXELS:_default' \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
&& ret=0
;;
(expunge)
_arguments "${_arguments_options[@]}" : \
'-a+[Override the default account]:NAME:_default' \
'--account=[Override the default account]:NAME:_default' \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
':folder_name -- The name of the folder:_default' \
&& ret=0
;;
(purge)
_arguments "${_arguments_options[@]}" : \
'-a+[Override the default account]:NAME:_default' \
'--account=[Override the default account]:NAME:_default' \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'-y[]' \
'--yes[]' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
':folder_name -- The name of the folder:_default' \
&& ret=0
;;
(delete)
_arguments "${_arguments_options[@]}" : \
'-a+[Override the default account]:NAME:_default' \
'--account=[Override the default account]:NAME:_default' \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'-y[]' \
'--yes[]' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
':folder_name -- The name of the folder:_default' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_himalaya__folder__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:himalaya-folder-help-command-$line[1]:"
        case $line[1] in
            (add)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(list)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(expunge)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(purge)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(delete)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
;;
(envelope)
_arguments "${_arguments_options[@]}" : \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
":: :_himalaya__envelope_commands" \
"*::: :->envelope" \
&& ret=0

    case $state in
    (envelope)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:himalaya-envelope-command-$line[1]:"
        case $line[1] in
            (list)
_arguments "${_arguments_options[@]}" : \
'-f+[The name of the folder]:NAME:_default' \
'--folder=[The name of the folder]:NAME:_default' \
'-p+[The page number]:NUMBER:_default' \
'--page=[The page number]:NUMBER:_default' \
'-s+[The page size]:NUMBER:_default' \
'--page-size=[The page size]:NUMBER:_default' \
'-a+[Override the default account]:NAME:_default' \
'--account=[Override the default account]:NAME:_default' \
'-w+[The maximum width the table should not exceed]:PIXELS:_default' \
'--max-width=[The maximum width the table should not exceed]:PIXELS:_default' \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
'*::query -- The list envelopes filter and sort query:_default' \
&& ret=0
;;
(thread)
_arguments "${_arguments_options[@]}" : \
'-f+[The name of the folder]:NAME:_default' \
'--folder=[The name of the folder]:NAME:_default' \
'-a+[Override the default account]:NAME:_default' \
'--account=[Override the default account]:NAME:_default' \
'-i+[Show only threads that contain the given envelope identifier]:ID:_default' \
'--id=[Show only threads that contain the given envelope identifier]:ID:_default' \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
'*::query -- The list envelopes filter and sort query:_default' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_himalaya__envelope__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:himalaya-envelope-help-command-$line[1]:"
        case $line[1] in
            (list)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(thread)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
;;
(flag)
_arguments "${_arguments_options[@]}" : \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
":: :_himalaya__flag_commands" \
"*::: :->flag" \
&& ret=0

    case $state in
    (flag)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:himalaya-flag-command-$line[1]:"
        case $line[1] in
            (add)
_arguments "${_arguments_options[@]}" : \
'-f+[The name of the folder]:NAME:_default' \
'--folder=[The name of the folder]:NAME:_default' \
'-a+[Override the default account]:NAME:_default' \
'--account=[Override the default account]:NAME:_default' \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
'*::ids_and_flags -- The list of ids and/or flags:_default' \
&& ret=0
;;
(set)
_arguments "${_arguments_options[@]}" : \
'-f+[The name of the folder]:NAME:_default' \
'--folder=[The name of the folder]:NAME:_default' \
'-a+[Override the default account]:NAME:_default' \
'--account=[Override the default account]:NAME:_default' \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
'*::ids_and_flags -- The list of ids and/or flags:_default' \
&& ret=0
;;
(remove)
_arguments "${_arguments_options[@]}" : \
'-f+[The name of the folder]:NAME:_default' \
'--folder=[The name of the folder]:NAME:_default' \
'-a+[Override the default account]:NAME:_default' \
'--account=[Override the default account]:NAME:_default' \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
'*::ids_and_flags -- The list of ids and/or flags:_default' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_himalaya__flag__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:himalaya-flag-help-command-$line[1]:"
        case $line[1] in
            (add)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(set)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(remove)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
;;
(message)
_arguments "${_arguments_options[@]}" : \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
":: :_himalaya__message_commands" \
"*::: :->message" \
&& ret=0

    case $state in
    (message)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:himalaya-message-command-$line[1]:"
        case $line[1] in
            (read)
_arguments "${_arguments_options[@]}" : \
'-f+[The name of the folder]:NAME:_default' \
'--folder=[The name of the folder]:NAME:_default' \
'(--no-headers)*-H+[List of headers that should be visible at the top of the message]:NAME:_default' \
'(--no-headers)*--header=[List of headers that should be visible at the top of the message]:NAME:_default' \
'-a+[Override the default account]:NAME:_default' \
'--account=[Override the default account]:NAME:_default' \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'-p[Read the message without applying the "seen" flag to its corresponding envelope]' \
'--preview[Read the message without applying the "seen" flag to its corresponding envelope]' \
'(-H --header)--no-headers[Read only the body of the message]' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
'*::ids -- The list of envelopes ids:_default' \
&& ret=0
;;
(export)
_arguments "${_arguments_options[@]}" : \
'-f+[The name of the folder]:NAME:_default' \
'--folder=[The name of the folder]:NAME:_default' \
'-d+[Where the message should be exported to]:DESTINATION:_files' \
'--destination=[Where the message should be exported to]:DESTINATION:_files' \
'-a+[Override the default account]:NAME:_default' \
'--account=[Override the default account]:NAME:_default' \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'-F[Export the full raw message as one unique .eml file]' \
'--full[Export the full raw message as one unique .eml file]' \
'-O[Try to open the exported message, when applicable]' \
'--open[Try to open the exported message, when applicable]' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
':id -- The envelope id:_default' \
&& ret=0
;;
(thread)
_arguments "${_arguments_options[@]}" : \
'-f+[The name of the folder]:NAME:_default' \
'--folder=[The name of the folder]:NAME:_default' \
'(--no-headers)*-H+[List of headers that should be visible at the top of the message]:NAME:_default' \
'(--no-headers)*--header=[List of headers that should be visible at the top of the message]:NAME:_default' \
'-a+[Override the default account]:NAME:_default' \
'--account=[Override the default account]:NAME:_default' \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'-p[Thread the message without applying the "seen" flag to its corresponding envelope]' \
'--preview[Thread the message without applying the "seen" flag to its corresponding envelope]' \
'(-H --header)--no-headers[Thread only the body of the message]' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
':id -- The envelope id:_default' \
&& ret=0
;;
(write)
_arguments "${_arguments_options[@]}" : \
'*-H+[Prefill the template with custom headers]:KEY:VAL:_default' \
'*--header=[Prefill the template with custom headers]:KEY:VAL:_default' \
'-a+[Override the default account]:NAME:_default' \
'--account=[Override the default account]:NAME:_default' \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
'*::body_raw -- Prefill the template with a custom body:_default' \
&& ret=0
;;
(reply)
_arguments "${_arguments_options[@]}" : \
'-f+[The name of the folder]:NAME:_default' \
'--folder=[The name of the folder]:NAME:_default' \
'*-H+[Prefill the template with custom headers]:KEY:VAL:_default' \
'*--header=[Prefill the template with custom headers]:KEY:VAL:_default' \
'-a+[Override the default account]:NAME:_default' \
'--account=[Override the default account]:NAME:_default' \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'-A[Reply to all recipients]' \
'--all[Reply to all recipients]' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
':id -- The envelope id:_default' \
'*::body_raw -- Prefill the template with a custom body:_default' \
&& ret=0
;;
(forward)
_arguments "${_arguments_options[@]}" : \
'-f+[The name of the folder]:NAME:_default' \
'--folder=[The name of the folder]:NAME:_default' \
'*-H+[Prefill the template with custom headers]:KEY:VAL:_default' \
'*--header=[Prefill the template with custom headers]:KEY:VAL:_default' \
'-a+[Override the default account]:NAME:_default' \
'--account=[Override the default account]:NAME:_default' \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
':id -- The envelope id:_default' \
'*::body_raw -- Prefill the template with a custom body:_default' \
&& ret=0
;;
(edit)
_arguments "${_arguments_options[@]}" : \
'-f+[The name of the folder]:NAME:_default' \
'--folder=[The name of the folder]:NAME:_default' \
'*-H+[List of headers that should be visible at the top of the message]:NAME:_default' \
'*--header=[List of headers that should be visible at the top of the message]:NAME:_default' \
'-a+[Override the default account]:NAME:_default' \
'--account=[Override the default account]:NAME:_default' \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'-p[Edit the message on place]' \
'--on-place[Edit the message on place]' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
':id -- The envelope id:_default' \
&& ret=0
;;
(mailto)
_arguments "${_arguments_options[@]}" : \
'-a+[Override the default account]:NAME:_default' \
'--account=[Override the default account]:NAME:_default' \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
':url -- The mailto url:_default' \
&& ret=0
;;
(save)
_arguments "${_arguments_options[@]}" : \
'-f+[The name of the folder]:NAME:_default' \
'--folder=[The name of the folder]:NAME:_default' \
'-a+[Override the default account]:NAME:_default' \
'--account=[Override the default account]:NAME:_default' \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
'*::message_raw -- The raw message, including headers and body:_default' \
&& ret=0
;;
(send)
_arguments "${_arguments_options[@]}" : \
'-a+[Override the default account]:NAME:_default' \
'--account=[Override the default account]:NAME:_default' \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
'*::message_raw -- The raw message, including headers and body:_default' \
&& ret=0
;;
(copy)
_arguments "${_arguments_options[@]}" : \
'-f+[The name of the source folder]:SOURCE:_default' \
'--folder=[The name of the source folder]:SOURCE:_default' \
'-a+[Override the default account]:NAME:_default' \
'--account=[Override the default account]:NAME:_default' \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
':target_folder_name -- The name of the target folder:_default' \
'*::ids -- The list of envelopes ids:_default' \
&& ret=0
;;
(move)
_arguments "${_arguments_options[@]}" : \
'-f+[The name of the source folder]:SOURCE:_default' \
'--folder=[The name of the source folder]:SOURCE:_default' \
'-a+[Override the default account]:NAME:_default' \
'--account=[Override the default account]:NAME:_default' \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
':target_folder_name -- The name of the target folder:_default' \
'*::ids -- The list of envelopes ids:_default' \
&& ret=0
;;
(delete)
_arguments "${_arguments_options[@]}" : \
'-f+[The name of the folder]:NAME:_default' \
'--folder=[The name of the folder]:NAME:_default' \
'-a+[Override the default account]:NAME:_default' \
'--account=[Override the default account]:NAME:_default' \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
'*::ids -- The list of envelopes ids:_default' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_himalaya__message__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:himalaya-message-help-command-$line[1]:"
        case $line[1] in
            (read)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(export)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(thread)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(write)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(reply)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(forward)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(edit)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(mailto)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(save)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(send)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(copy)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(delete)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
;;
(attachment)
_arguments "${_arguments_options[@]}" : \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
":: :_himalaya__attachment_commands" \
"*::: :->attachment" \
&& ret=0

    case $state in
    (attachment)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:himalaya-attachment-command-$line[1]:"
        case $line[1] in
            (download)
_arguments "${_arguments_options[@]}" : \
'-f+[The name of the folder]:NAME:_default' \
'--folder=[The name of the folder]:NAME:_default' \
'-a+[Override the default account]:NAME:_default' \
'--account=[Override the default account]:NAME:_default' \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
'*::ids -- The list of envelopes ids:_default' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_himalaya__attachment__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:himalaya-attachment-help-command-$line[1]:"
        case $line[1] in
            (download)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
;;
(template)
_arguments "${_arguments_options[@]}" : \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
":: :_himalaya__template_commands" \
"*::: :->template" \
&& ret=0

    case $state in
    (template)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:himalaya-template-command-$line[1]:"
        case $line[1] in
            (write)
_arguments "${_arguments_options[@]}" : \
'*-H+[Prefill the template with custom headers]:KEY:VAL:_default' \
'*--header=[Prefill the template with custom headers]:KEY:VAL:_default' \
'-a+[Override the default account]:NAME:_default' \
'--account=[Override the default account]:NAME:_default' \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
'*::body_raw -- Prefill the template with a custom MML body:_default' \
&& ret=0
;;
(reply)
_arguments "${_arguments_options[@]}" : \
'-f+[The name of the folder]:NAME:_default' \
'--folder=[The name of the folder]:NAME:_default' \
'*-H+[Prefill the template with custom headers]:KEY:VAL:_default' \
'*--header=[Prefill the template with custom headers]:KEY:VAL:_default' \
'-a+[Override the default account]:NAME:_default' \
'--account=[Override the default account]:NAME:_default' \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'-A[Reply to all recipients]' \
'--all[Reply to all recipients]' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
':id -- The envelope id:_default' \
'*::body_raw -- Prefill the template with a custom body:_default' \
&& ret=0
;;
(forward)
_arguments "${_arguments_options[@]}" : \
'-f+[The name of the folder]:NAME:_default' \
'--folder=[The name of the folder]:NAME:_default' \
'*-H+[Prefill the template with custom headers]:KEY:VAL:_default' \
'*--header=[Prefill the template with custom headers]:KEY:VAL:_default' \
'-a+[Override the default account]:NAME:_default' \
'--account=[Override the default account]:NAME:_default' \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
':id -- The envelope id:_default' \
'*::body_raw -- Prefill the template with a custom body:_default' \
&& ret=0
;;
(save)
_arguments "${_arguments_options[@]}" : \
'-f+[The name of the folder]:NAME:_default' \
'--folder=[The name of the folder]:NAME:_default' \
'-a+[Override the default account]:NAME:_default' \
'--account=[Override the default account]:NAME:_default' \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
'*::template_raw -- The raw template, including headers and MML body:_default' \
&& ret=0
;;
(send)
_arguments "${_arguments_options[@]}" : \
'-a+[Override the default account]:NAME:_default' \
'--account=[Override the default account]:NAME:_default' \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
'*::template_raw -- The raw template, including headers and MML body:_default' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_himalaya__template__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:himalaya-template-help-command-$line[1]:"
        case $line[1] in
            (write)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(reply)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(forward)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(save)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(send)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
;;
(manual)
_arguments "${_arguments_options[@]}" : \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
':dir -- Directory where man files should be generated in:_files' \
&& ret=0
;;
(completion)
_arguments "${_arguments_options[@]}" : \
'*-c+[Override the default configuration file path]:PATH:_files' \
'*--config=[Override the default configuration file path]:PATH:_files' \
'-o+[Customize the output format]:FORMAT:(plain json)' \
'--output=[Customize the output format]:FORMAT:(plain json)' \
'(--trace)--debug[Enable logs with spantrace]' \
'(--debug)--trace[Enable verbose logs with backtrace]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
':shell -- Shell for which completion script should be generated for:(bash elvish fish powershell zsh)' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_himalaya__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:himalaya-help-command-$line[1]:"
        case $line[1] in
            (account)
_arguments "${_arguments_options[@]}" : \
":: :_himalaya__help__account_commands" \
"*::: :->account" \
&& ret=0

    case $state in
    (account)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:himalaya-help-account-command-$line[1]:"
        case $line[1] in
            (configure)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(doctor)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(list)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(folder)
_arguments "${_arguments_options[@]}" : \
":: :_himalaya__help__folder_commands" \
"*::: :->folder" \
&& ret=0

    case $state in
    (folder)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:himalaya-help-folder-command-$line[1]:"
        case $line[1] in
            (add)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(list)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(expunge)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(purge)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(delete)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(envelope)
_arguments "${_arguments_options[@]}" : \
":: :_himalaya__help__envelope_commands" \
"*::: :->envelope" \
&& ret=0

    case $state in
    (envelope)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:himalaya-help-envelope-command-$line[1]:"
        case $line[1] in
            (list)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(thread)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(flag)
_arguments "${_arguments_options[@]}" : \
":: :_himalaya__help__flag_commands" \
"*::: :->flag" \
&& ret=0

    case $state in
    (flag)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:himalaya-help-flag-command-$line[1]:"
        case $line[1] in
            (add)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(set)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(remove)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(message)
_arguments "${_arguments_options[@]}" : \
":: :_himalaya__help__message_commands" \
"*::: :->message" \
&& ret=0

    case $state in
    (message)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:himalaya-help-message-command-$line[1]:"
        case $line[1] in
            (read)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(export)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(thread)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(write)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(reply)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(forward)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(edit)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(mailto)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(save)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(send)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(copy)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(delete)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(attachment)
_arguments "${_arguments_options[@]}" : \
":: :_himalaya__help__attachment_commands" \
"*::: :->attachment" \
&& ret=0

    case $state in
    (attachment)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:himalaya-help-attachment-command-$line[1]:"
        case $line[1] in
            (download)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(template)
_arguments "${_arguments_options[@]}" : \
":: :_himalaya__help__template_commands" \
"*::: :->template" \
&& ret=0

    case $state in
    (template)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:himalaya-help-template-command-$line[1]:"
        case $line[1] in
            (write)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(reply)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(forward)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(save)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(send)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(manual)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(completion)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
}

(( $+functions[_himalaya_commands] )) ||
_himalaya_commands() {
    local commands; commands=(
'account:Configure, list and diagnose your accounts' \
'folder:Create, list and purge your folders (as known as mailboxes)' \
'mailbox:Create, list and purge your folders (as known as mailboxes)' \
'envelope:List, search and sort your envelopes' \
'flag:Add, change and remove your envelopes flags' \
'message:Read, write, send, copy, move and delete your messages' \
'attachment:Download your message attachments' \
'template:Generate, save and send message templates' \
'manual:Generate manual pages to the given directory' \
'completion:Print completion script for the given shell to stdout' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'himalaya commands' commands "$@"
}
(( $+functions[_himalaya__account_commands] )) ||
_himalaya__account_commands() {
    local commands; commands=(
'configure:Configure the given account' \
'doctor:Diagnose and fix the given account' \
'list:List all existing accounts' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'himalaya account commands' commands "$@"
}
(( $+functions[_himalaya__account__configure_commands] )) ||
_himalaya__account__configure_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya account configure commands' commands "$@"
}
(( $+functions[_himalaya__account__doctor_commands] )) ||
_himalaya__account__doctor_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya account doctor commands' commands "$@"
}
(( $+functions[_himalaya__account__help_commands] )) ||
_himalaya__account__help_commands() {
    local commands; commands=(
'configure:Configure the given account' \
'doctor:Diagnose and fix the given account' \
'list:List all existing accounts' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'himalaya account help commands' commands "$@"
}
(( $+functions[_himalaya__account__help__configure_commands] )) ||
_himalaya__account__help__configure_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya account help configure commands' commands "$@"
}
(( $+functions[_himalaya__account__help__doctor_commands] )) ||
_himalaya__account__help__doctor_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya account help doctor commands' commands "$@"
}
(( $+functions[_himalaya__account__help__help_commands] )) ||
_himalaya__account__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya account help help commands' commands "$@"
}
(( $+functions[_himalaya__account__help__list_commands] )) ||
_himalaya__account__help__list_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya account help list commands' commands "$@"
}
(( $+functions[_himalaya__account__list_commands] )) ||
_himalaya__account__list_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya account list commands' commands "$@"
}
(( $+functions[_himalaya__attachment_commands] )) ||
_himalaya__attachment_commands() {
    local commands; commands=(
'download:Download all attachments found in the given message' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'himalaya attachment commands' commands "$@"
}
(( $+functions[_himalaya__attachment__download_commands] )) ||
_himalaya__attachment__download_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya attachment download commands' commands "$@"
}
(( $+functions[_himalaya__attachment__help_commands] )) ||
_himalaya__attachment__help_commands() {
    local commands; commands=(
'download:Download all attachments found in the given message' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'himalaya attachment help commands' commands "$@"
}
(( $+functions[_himalaya__attachment__help__download_commands] )) ||
_himalaya__attachment__help__download_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya attachment help download commands' commands "$@"
}
(( $+functions[_himalaya__attachment__help__help_commands] )) ||
_himalaya__attachment__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya attachment help help commands' commands "$@"
}
(( $+functions[_himalaya__completion_commands] )) ||
_himalaya__completion_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya completion commands' commands "$@"
}
(( $+functions[_himalaya__envelope_commands] )) ||
_himalaya__envelope_commands() {
    local commands; commands=(
'list:Search and sort envelopes as a list' \
'thread:Search and sort envelopes as a thread' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'himalaya envelope commands' commands "$@"
}
(( $+functions[_himalaya__envelope__help_commands] )) ||
_himalaya__envelope__help_commands() {
    local commands; commands=(
'list:Search and sort envelopes as a list' \
'thread:Search and sort envelopes as a thread' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'himalaya envelope help commands' commands "$@"
}
(( $+functions[_himalaya__envelope__help__help_commands] )) ||
_himalaya__envelope__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya envelope help help commands' commands "$@"
}
(( $+functions[_himalaya__envelope__help__list_commands] )) ||
_himalaya__envelope__help__list_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya envelope help list commands' commands "$@"
}
(( $+functions[_himalaya__envelope__help__thread_commands] )) ||
_himalaya__envelope__help__thread_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya envelope help thread commands' commands "$@"
}
(( $+functions[_himalaya__envelope__list_commands] )) ||
_himalaya__envelope__list_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya envelope list commands' commands "$@"
}
(( $+functions[_himalaya__envelope__thread_commands] )) ||
_himalaya__envelope__thread_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya envelope thread commands' commands "$@"
}
(( $+functions[_himalaya__flag_commands] )) ||
_himalaya__flag_commands() {
    local commands; commands=(
'add:Add flag(s) to the given envelope' \
'set:Replace flag(s) of a given envelope' \
'remove:Remove flag(s) from a given envelope' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'himalaya flag commands' commands "$@"
}
(( $+functions[_himalaya__flag__add_commands] )) ||
_himalaya__flag__add_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya flag add commands' commands "$@"
}
(( $+functions[_himalaya__flag__help_commands] )) ||
_himalaya__flag__help_commands() {
    local commands; commands=(
'add:Add flag(s) to the given envelope' \
'set:Replace flag(s) of a given envelope' \
'remove:Remove flag(s) from a given envelope' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'himalaya flag help commands' commands "$@"
}
(( $+functions[_himalaya__flag__help__add_commands] )) ||
_himalaya__flag__help__add_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya flag help add commands' commands "$@"
}
(( $+functions[_himalaya__flag__help__help_commands] )) ||
_himalaya__flag__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya flag help help commands' commands "$@"
}
(( $+functions[_himalaya__flag__help__remove_commands] )) ||
_himalaya__flag__help__remove_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya flag help remove commands' commands "$@"
}
(( $+functions[_himalaya__flag__help__set_commands] )) ||
_himalaya__flag__help__set_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya flag help set commands' commands "$@"
}
(( $+functions[_himalaya__flag__remove_commands] )) ||
_himalaya__flag__remove_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya flag remove commands' commands "$@"
}
(( $+functions[_himalaya__flag__set_commands] )) ||
_himalaya__flag__set_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya flag set commands' commands "$@"
}
(( $+functions[_himalaya__folder_commands] )) ||
_himalaya__folder_commands() {
    local commands; commands=(
'add:Create the given folder' \
'create:Create the given folder' \
'list:List all folders' \
'expunge:Expunge the given folder' \
'purge:Purge the given folder' \
'delete:Delete the given folder' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'himalaya folder commands' commands "$@"
}
(( $+functions[_himalaya__folder__add_commands] )) ||
_himalaya__folder__add_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya folder add commands' commands "$@"
}
(( $+functions[_himalaya__folder__delete_commands] )) ||
_himalaya__folder__delete_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya folder delete commands' commands "$@"
}
(( $+functions[_himalaya__folder__expunge_commands] )) ||
_himalaya__folder__expunge_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya folder expunge commands' commands "$@"
}
(( $+functions[_himalaya__folder__help_commands] )) ||
_himalaya__folder__help_commands() {
    local commands; commands=(
'add:Create the given folder' \
'list:List all folders' \
'expunge:Expunge the given folder' \
'purge:Purge the given folder' \
'delete:Delete the given folder' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'himalaya folder help commands' commands "$@"
}
(( $+functions[_himalaya__folder__help__add_commands] )) ||
_himalaya__folder__help__add_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya folder help add commands' commands "$@"
}
(( $+functions[_himalaya__folder__help__delete_commands] )) ||
_himalaya__folder__help__delete_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya folder help delete commands' commands "$@"
}
(( $+functions[_himalaya__folder__help__expunge_commands] )) ||
_himalaya__folder__help__expunge_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya folder help expunge commands' commands "$@"
}
(( $+functions[_himalaya__folder__help__help_commands] )) ||
_himalaya__folder__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya folder help help commands' commands "$@"
}
(( $+functions[_himalaya__folder__help__list_commands] )) ||
_himalaya__folder__help__list_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya folder help list commands' commands "$@"
}
(( $+functions[_himalaya__folder__help__purge_commands] )) ||
_himalaya__folder__help__purge_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya folder help purge commands' commands "$@"
}
(( $+functions[_himalaya__folder__list_commands] )) ||
_himalaya__folder__list_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya folder list commands' commands "$@"
}
(( $+functions[_himalaya__folder__purge_commands] )) ||
_himalaya__folder__purge_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya folder purge commands' commands "$@"
}
(( $+functions[_himalaya__help_commands] )) ||
_himalaya__help_commands() {
    local commands; commands=(
'account:Configure, list and diagnose your accounts' \
'folder:Create, list and purge your folders (as known as mailboxes)' \
'envelope:List, search and sort your envelopes' \
'flag:Add, change and remove your envelopes flags' \
'message:Read, write, send, copy, move and delete your messages' \
'attachment:Download your message attachments' \
'template:Generate, save and send message templates' \
'manual:Generate manual pages to the given directory' \
'completion:Print completion script for the given shell to stdout' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'himalaya help commands' commands "$@"
}
(( $+functions[_himalaya__help__account_commands] )) ||
_himalaya__help__account_commands() {
    local commands; commands=(
'configure:Configure the given account' \
'doctor:Diagnose and fix the given account' \
'list:List all existing accounts' \
    )
    _describe -t commands 'himalaya help account commands' commands "$@"
}
(( $+functions[_himalaya__help__account__configure_commands] )) ||
_himalaya__help__account__configure_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya help account configure commands' commands "$@"
}
(( $+functions[_himalaya__help__account__doctor_commands] )) ||
_himalaya__help__account__doctor_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya help account doctor commands' commands "$@"
}
(( $+functions[_himalaya__help__account__list_commands] )) ||
_himalaya__help__account__list_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya help account list commands' commands "$@"
}
(( $+functions[_himalaya__help__attachment_commands] )) ||
_himalaya__help__attachment_commands() {
    local commands; commands=(
'download:Download all attachments found in the given message' \
    )
    _describe -t commands 'himalaya help attachment commands' commands "$@"
}
(( $+functions[_himalaya__help__attachment__download_commands] )) ||
_himalaya__help__attachment__download_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya help attachment download commands' commands "$@"
}
(( $+functions[_himalaya__help__completion_commands] )) ||
_himalaya__help__completion_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya help completion commands' commands "$@"
}
(( $+functions[_himalaya__help__envelope_commands] )) ||
_himalaya__help__envelope_commands() {
    local commands; commands=(
'list:Search and sort envelopes as a list' \
'thread:Search and sort envelopes as a thread' \
    )
    _describe -t commands 'himalaya help envelope commands' commands "$@"
}
(( $+functions[_himalaya__help__envelope__list_commands] )) ||
_himalaya__help__envelope__list_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya help envelope list commands' commands "$@"
}
(( $+functions[_himalaya__help__envelope__thread_commands] )) ||
_himalaya__help__envelope__thread_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya help envelope thread commands' commands "$@"
}
(( $+functions[_himalaya__help__flag_commands] )) ||
_himalaya__help__flag_commands() {
    local commands; commands=(
'add:Add flag(s) to the given envelope' \
'set:Replace flag(s) of a given envelope' \
'remove:Remove flag(s) from a given envelope' \
    )
    _describe -t commands 'himalaya help flag commands' commands "$@"
}
(( $+functions[_himalaya__help__flag__add_commands] )) ||
_himalaya__help__flag__add_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya help flag add commands' commands "$@"
}
(( $+functions[_himalaya__help__flag__remove_commands] )) ||
_himalaya__help__flag__remove_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya help flag remove commands' commands "$@"
}
(( $+functions[_himalaya__help__flag__set_commands] )) ||
_himalaya__help__flag__set_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya help flag set commands' commands "$@"
}
(( $+functions[_himalaya__help__folder_commands] )) ||
_himalaya__help__folder_commands() {
    local commands; commands=(
'add:Create the given folder' \
'list:List all folders' \
'expunge:Expunge the given folder' \
'purge:Purge the given folder' \
'delete:Delete the given folder' \
    )
    _describe -t commands 'himalaya help folder commands' commands "$@"
}
(( $+functions[_himalaya__help__folder__add_commands] )) ||
_himalaya__help__folder__add_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya help folder add commands' commands "$@"
}
(( $+functions[_himalaya__help__folder__delete_commands] )) ||
_himalaya__help__folder__delete_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya help folder delete commands' commands "$@"
}
(( $+functions[_himalaya__help__folder__expunge_commands] )) ||
_himalaya__help__folder__expunge_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya help folder expunge commands' commands "$@"
}
(( $+functions[_himalaya__help__folder__list_commands] )) ||
_himalaya__help__folder__list_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya help folder list commands' commands "$@"
}
(( $+functions[_himalaya__help__folder__purge_commands] )) ||
_himalaya__help__folder__purge_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya help folder purge commands' commands "$@"
}
(( $+functions[_himalaya__help__help_commands] )) ||
_himalaya__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya help help commands' commands "$@"
}
(( $+functions[_himalaya__help__manual_commands] )) ||
_himalaya__help__manual_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya help manual commands' commands "$@"
}
(( $+functions[_himalaya__help__message_commands] )) ||
_himalaya__help__message_commands() {
    local commands; commands=(
'read:Read a human-friendly version of the message associated to the given envelope id(s)' \
'export:Export the message associated to the given envelope id' \
'thread:Read human-friendly version of messages associated to the given envelope id'\''s thread' \
'write:Compose a new message, from scratch' \
'reply:Reply to the message associated to the given envelope id' \
'forward:Forward the message associated to the given envelope id' \
'edit:Edit the message associated to the given envelope id' \
'mailto:Parse and edit a message from the given mailto URL string' \
'save:Save the given raw message to the given folder' \
'send:Send the given raw message' \
'copy:Copy the message associated to the given envelope id(s) to the given target folder' \
'move:Move the message associated to the given envelope id(s) to the given target folder' \
'delete:Mark as deleted the message associated to the given envelope id(s)' \
    )
    _describe -t commands 'himalaya help message commands' commands "$@"
}
(( $+functions[_himalaya__help__message__copy_commands] )) ||
_himalaya__help__message__copy_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya help message copy commands' commands "$@"
}
(( $+functions[_himalaya__help__message__delete_commands] )) ||
_himalaya__help__message__delete_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya help message delete commands' commands "$@"
}
(( $+functions[_himalaya__help__message__edit_commands] )) ||
_himalaya__help__message__edit_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya help message edit commands' commands "$@"
}
(( $+functions[_himalaya__help__message__export_commands] )) ||
_himalaya__help__message__export_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya help message export commands' commands "$@"
}
(( $+functions[_himalaya__help__message__forward_commands] )) ||
_himalaya__help__message__forward_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya help message forward commands' commands "$@"
}
(( $+functions[_himalaya__help__message__mailto_commands] )) ||
_himalaya__help__message__mailto_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya help message mailto commands' commands "$@"
}
(( $+functions[_himalaya__help__message__move_commands] )) ||
_himalaya__help__message__move_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya help message move commands' commands "$@"
}
(( $+functions[_himalaya__help__message__read_commands] )) ||
_himalaya__help__message__read_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya help message read commands' commands "$@"
}
(( $+functions[_himalaya__help__message__reply_commands] )) ||
_himalaya__help__message__reply_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya help message reply commands' commands "$@"
}
(( $+functions[_himalaya__help__message__save_commands] )) ||
_himalaya__help__message__save_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya help message save commands' commands "$@"
}
(( $+functions[_himalaya__help__message__send_commands] )) ||
_himalaya__help__message__send_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya help message send commands' commands "$@"
}
(( $+functions[_himalaya__help__message__thread_commands] )) ||
_himalaya__help__message__thread_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya help message thread commands' commands "$@"
}
(( $+functions[_himalaya__help__message__write_commands] )) ||
_himalaya__help__message__write_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya help message write commands' commands "$@"
}
(( $+functions[_himalaya__help__template_commands] )) ||
_himalaya__help__template_commands() {
    local commands; commands=(
'write:Generate a template for writing a new message from scratch' \
'reply:Generate a template for replying to a message' \
'forward:Generate a template for forwarding a message' \
'save:Save a template to a folder' \
'send:Send a template' \
    )
    _describe -t commands 'himalaya help template commands' commands "$@"
}
(( $+functions[_himalaya__help__template__forward_commands] )) ||
_himalaya__help__template__forward_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya help template forward commands' commands "$@"
}
(( $+functions[_himalaya__help__template__reply_commands] )) ||
_himalaya__help__template__reply_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya help template reply commands' commands "$@"
}
(( $+functions[_himalaya__help__template__save_commands] )) ||
_himalaya__help__template__save_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya help template save commands' commands "$@"
}
(( $+functions[_himalaya__help__template__send_commands] )) ||
_himalaya__help__template__send_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya help template send commands' commands "$@"
}
(( $+functions[_himalaya__help__template__write_commands] )) ||
_himalaya__help__template__write_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya help template write commands' commands "$@"
}
(( $+functions[_himalaya__manual_commands] )) ||
_himalaya__manual_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya manual commands' commands "$@"
}
(( $+functions[_himalaya__message_commands] )) ||
_himalaya__message_commands() {
    local commands; commands=(
'read:Read a human-friendly version of the message associated to the given envelope id(s)' \
'export:Export the message associated to the given envelope id' \
'thread:Read human-friendly version of messages associated to the given envelope id'\''s thread' \
'write:Compose a new message, from scratch' \
'reply:Reply to the message associated to the given envelope id' \
'forward:Forward the message associated to the given envelope id' \
'edit:Edit the message associated to the given envelope id' \
'mailto:Parse and edit a message from the given mailto URL string' \
'save:Save the given raw message to the given folder' \
'send:Send the given raw message' \
'copy:Copy the message associated to the given envelope id(s) to the given target folder' \
'move:Move the message associated to the given envelope id(s) to the given target folder' \
'delete:Mark as deleted the message associated to the given envelope id(s)' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'himalaya message commands' commands "$@"
}
(( $+functions[_himalaya__message__copy_commands] )) ||
_himalaya__message__copy_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya message copy commands' commands "$@"
}
(( $+functions[_himalaya__message__delete_commands] )) ||
_himalaya__message__delete_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya message delete commands' commands "$@"
}
(( $+functions[_himalaya__message__edit_commands] )) ||
_himalaya__message__edit_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya message edit commands' commands "$@"
}
(( $+functions[_himalaya__message__export_commands] )) ||
_himalaya__message__export_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya message export commands' commands "$@"
}
(( $+functions[_himalaya__message__forward_commands] )) ||
_himalaya__message__forward_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya message forward commands' commands "$@"
}
(( $+functions[_himalaya__message__help_commands] )) ||
_himalaya__message__help_commands() {
    local commands; commands=(
'read:Read a human-friendly version of the message associated to the given envelope id(s)' \
'export:Export the message associated to the given envelope id' \
'thread:Read human-friendly version of messages associated to the given envelope id'\''s thread' \
'write:Compose a new message, from scratch' \
'reply:Reply to the message associated to the given envelope id' \
'forward:Forward the message associated to the given envelope id' \
'edit:Edit the message associated to the given envelope id' \
'mailto:Parse and edit a message from the given mailto URL string' \
'save:Save the given raw message to the given folder' \
'send:Send the given raw message' \
'copy:Copy the message associated to the given envelope id(s) to the given target folder' \
'move:Move the message associated to the given envelope id(s) to the given target folder' \
'delete:Mark as deleted the message associated to the given envelope id(s)' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'himalaya message help commands' commands "$@"
}
(( $+functions[_himalaya__message__help__copy_commands] )) ||
_himalaya__message__help__copy_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya message help copy commands' commands "$@"
}
(( $+functions[_himalaya__message__help__delete_commands] )) ||
_himalaya__message__help__delete_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya message help delete commands' commands "$@"
}
(( $+functions[_himalaya__message__help__edit_commands] )) ||
_himalaya__message__help__edit_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya message help edit commands' commands "$@"
}
(( $+functions[_himalaya__message__help__export_commands] )) ||
_himalaya__message__help__export_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya message help export commands' commands "$@"
}
(( $+functions[_himalaya__message__help__forward_commands] )) ||
_himalaya__message__help__forward_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya message help forward commands' commands "$@"
}
(( $+functions[_himalaya__message__help__help_commands] )) ||
_himalaya__message__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya message help help commands' commands "$@"
}
(( $+functions[_himalaya__message__help__mailto_commands] )) ||
_himalaya__message__help__mailto_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya message help mailto commands' commands "$@"
}
(( $+functions[_himalaya__message__help__move_commands] )) ||
_himalaya__message__help__move_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya message help move commands' commands "$@"
}
(( $+functions[_himalaya__message__help__read_commands] )) ||
_himalaya__message__help__read_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya message help read commands' commands "$@"
}
(( $+functions[_himalaya__message__help__reply_commands] )) ||
_himalaya__message__help__reply_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya message help reply commands' commands "$@"
}
(( $+functions[_himalaya__message__help__save_commands] )) ||
_himalaya__message__help__save_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya message help save commands' commands "$@"
}
(( $+functions[_himalaya__message__help__send_commands] )) ||
_himalaya__message__help__send_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya message help send commands' commands "$@"
}
(( $+functions[_himalaya__message__help__thread_commands] )) ||
_himalaya__message__help__thread_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya message help thread commands' commands "$@"
}
(( $+functions[_himalaya__message__help__write_commands] )) ||
_himalaya__message__help__write_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya message help write commands' commands "$@"
}
(( $+functions[_himalaya__message__mailto_commands] )) ||
_himalaya__message__mailto_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya message mailto commands' commands "$@"
}
(( $+functions[_himalaya__message__move_commands] )) ||
_himalaya__message__move_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya message move commands' commands "$@"
}
(( $+functions[_himalaya__message__read_commands] )) ||
_himalaya__message__read_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya message read commands' commands "$@"
}
(( $+functions[_himalaya__message__reply_commands] )) ||
_himalaya__message__reply_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya message reply commands' commands "$@"
}
(( $+functions[_himalaya__message__save_commands] )) ||
_himalaya__message__save_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya message save commands' commands "$@"
}
(( $+functions[_himalaya__message__send_commands] )) ||
_himalaya__message__send_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya message send commands' commands "$@"
}
(( $+functions[_himalaya__message__thread_commands] )) ||
_himalaya__message__thread_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya message thread commands' commands "$@"
}
(( $+functions[_himalaya__message__write_commands] )) ||
_himalaya__message__write_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya message write commands' commands "$@"
}
(( $+functions[_himalaya__template_commands] )) ||
_himalaya__template_commands() {
    local commands; commands=(
'write:Generate a template for writing a new message from scratch' \
'reply:Generate a template for replying to a message' \
'forward:Generate a template for forwarding a message' \
'save:Save a template to a folder' \
'send:Send a template' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'himalaya template commands' commands "$@"
}
(( $+functions[_himalaya__template__forward_commands] )) ||
_himalaya__template__forward_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya template forward commands' commands "$@"
}
(( $+functions[_himalaya__template__help_commands] )) ||
_himalaya__template__help_commands() {
    local commands; commands=(
'write:Generate a template for writing a new message from scratch' \
'reply:Generate a template for replying to a message' \
'forward:Generate a template for forwarding a message' \
'save:Save a template to a folder' \
'send:Send a template' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'himalaya template help commands' commands "$@"
}
(( $+functions[_himalaya__template__help__forward_commands] )) ||
_himalaya__template__help__forward_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya template help forward commands' commands "$@"
}
(( $+functions[_himalaya__template__help__help_commands] )) ||
_himalaya__template__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya template help help commands' commands "$@"
}
(( $+functions[_himalaya__template__help__reply_commands] )) ||
_himalaya__template__help__reply_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya template help reply commands' commands "$@"
}
(( $+functions[_himalaya__template__help__save_commands] )) ||
_himalaya__template__help__save_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya template help save commands' commands "$@"
}
(( $+functions[_himalaya__template__help__send_commands] )) ||
_himalaya__template__help__send_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya template help send commands' commands "$@"
}
(( $+functions[_himalaya__template__help__write_commands] )) ||
_himalaya__template__help__write_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya template help write commands' commands "$@"
}
(( $+functions[_himalaya__template__reply_commands] )) ||
_himalaya__template__reply_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya template reply commands' commands "$@"
}
(( $+functions[_himalaya__template__save_commands] )) ||
_himalaya__template__save_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya template save commands' commands "$@"
}
(( $+functions[_himalaya__template__send_commands] )) ||
_himalaya__template__send_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya template send commands' commands "$@"
}
(( $+functions[_himalaya__template__write_commands] )) ||
_himalaya__template__write_commands() {
    local commands; commands=()
    _describe -t commands 'himalaya template write commands' commands "$@"
}

if [ "$funcstack[1]" = "_himalaya" ]; then
    _himalaya "$@"
else
    compdef _himalaya himalaya
fi
