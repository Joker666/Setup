# Alias
alias gib="git branch"
alias gic="git checkout"
alias gst="git status"
alias lg="lazygit"
alias ks="eza -l --grid --icons"
alias ducks="du -ckhs ./* | sort -h"
alias showpath="echo $PATH | tr ':' '\n' | nl"

# Starfish
starship init fish | source

# Sublime
set -x PATH $PATH "/Applications/Sublime Text.app/Contents/SharedSupport/bin"

# Set up fzf key bindings
fzf --fish | source

# Go
set -x GOPATH $HOME/go
set -x PATH $PATH "$GOPATH/bin"

# Flutter (if installed)
set -x PATH $PATH "$HOME/flutter/bin"

# walk plugin (if installed)
function lk
  set loc (walk $argv); and cd $loc;
end
