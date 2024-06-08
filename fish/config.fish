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

# walk plugin
function lk
  set loc (walk $argv); and cd $loc;
end
