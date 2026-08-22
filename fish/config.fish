# ── Environment ──────────────────────────────────────────────
set -gx GOPATH $HOME/go

# ── PATH ─────────────────────────────────────────────────────
# fish_add_path is idempotent; prepends unless --append is given
fish_add_path ~/.local/bin
fish_add_path --append $GOPATH/bin
fish_add_path --append "/Applications/Sublime Text.app/Contents/SharedSupport/bin"
fish_add_path --append ~/flutter/bin

# ── Interactive shells only ──────────────────────────────────
if status is-interactive
    # mise: activates runtimes (go, node, pnpm, python, ruby)
    type -q mise; and mise activate fish | source

    type -q starship; and starship init fish | source
    type -q zoxide; and zoxide init fish | source # defines z and zi
    type -q fzf; and fzf --fish | source # fzf key bindings

    # Git abbreviations (expand in place at the prompt)
    abbr -a gib git branch
    abbr -a gic git checkout
    abbr -a gst git status

    # Aliases
    alias lg "lazygit"
    alias ks "eza -l --grid --icons"
    alias ducks 'du -ckhs ./* | sort -h'
    alias showpath 'string join \n $PATH | nl'
else
    # Non-interactive: mise shims so tool versions resolve in scripts
    type -q mise; and mise activate fish --shims | source
end

# walk (if installed): cd to the directory picked in walk
function lk
    set loc (walk $argv); and cd $loc
end
