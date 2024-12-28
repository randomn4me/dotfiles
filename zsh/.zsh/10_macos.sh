if type brew &>/dev/null; then
    eval "$(brew shellenv)"
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
    export PATH="/opt/homebrew/bin:$PATH"
    export PATH="/opt/homebrew/opt/task@2/bin:$PATH"
fi

fpath+=/opt/homebrew/share/zsh/site-functions

if which task &>/dev/null; then
    fpath+=/opt/homebrew/opt/task@2/share/zsh/site-functions 
fi

export JAVA_HOME=$(/usr/libexec/java_home)
