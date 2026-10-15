# ── Environment ──────────────────────────────────────────────
set -gx GOPATH $HOME/go

# ── PATH ─────────────────────────────────────────────────────
# fish_add_path is idempotent; prepends unless --append is given
fish_add_path ~/.local/bin
fish_add_path --append $GOPATH/bin

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
else
    # Non-interactive: mise shims so tool versions resolve in scripts
    type -q mise; and mise activate fish --shims | source
end