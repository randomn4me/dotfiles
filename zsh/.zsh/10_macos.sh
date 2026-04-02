export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/opt/task@2/bin:$PATH"
export PATH="/usr/local/texlive/2025/bin/universal-darwin:$PATH"
export PATH="/opt/homebrew/opt/uutils-coreutils/libexec/uubin:$PATH"
export PATH="/Users/pkuehn/.antigravity/antigravity/bin:$PATH"
export PATH="/Users/pkuehn/.cargo/bin:$PATH"
export PATH="/Applications/Obsidian.app/Contents/MacOS:$PATH"

export XDG_DESKTOP_DIR="$HOME/Desktop"
export XDG_DOCUMENTS_DIR="$HOME/Documents"
export XDG_DOWNLOAD_DIR="$HOME/Downloads"
export XDG_MUSIC_DIR="$HOME/Music"
export XDG_PICTURES_DIR="$HOME/Pictures"
export XDG_PUBLICSHARE_DIR="$HOME/Public"
export XDG_VIDEOS_DIR="$HOME/Movies"

if type brew &>/dev/null; then
    eval "$(brew shellenv)"
    export PATH="$PATH:/run/current-system/sw/bin"
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
fi

fpath+=/opt/homebrew/share/zsh/site-functions

if which task &>/dev/null; then
    fpath+=/opt/homebrew/opt/task@2/share/zsh/site-functions 
fi

eval "$(direnv hook zsh)"

export JAVA_HOME=$(/usr/libexec/java_home)
