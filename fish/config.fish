alias gib="git branch"
alias gic="git checkout"
alias gst="git status"
alias lg="lazygit"
alias ks="eza -l --grid"

# Starfish
starship init fish | source

# Go
set -x GOPATH $HOME/go
set -x PATH $PATH "$GOPATH/bin"

# Rust
set -x PATH $PATH "$HOME/.cargo/bin"

# Flutter (if installed)
set -x PATH $PATH "$HOME/flutter/bin"

# Node
fnm env --use-on-cd --corepack-enabled --resolve-engines | source

# walk plugin
function lk
  set loc (walk $argv); and cd $loc;
end
