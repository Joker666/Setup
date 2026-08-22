# Fish shell setup

No shell framework or plugin manager is needed anymore — `config.fish` in this
directory is self-contained. Oh My Fish and fisher were previously used and
have been dropped; everything they provided now comes from standalone tools:

- **z** (directory jumping) → [zoxide](https://github.com/ajeetdsouza/zoxide)
  (`brew install zoxide`). Defines `z` and `zi` (interactive picker), and can
  import an old z database: `zoxide import --merge z < ~/.local/share/z/data`
- **fzf key bindings** → shipped with fzf itself, loaded via `fzf --fish | source`
- **prompt** → [starship](https://starship.rs), installed via brew

If a bash script ever needs sourcing in fish, [bass](https://github.com/edc/bass)
still exists, but it needs fisher — prefer porting the script instead.

## Abbreviations vs aliases

Git shortcuts (`gib`, `gic`, `gst`) are `abbr`s, not aliases: they expand to
the full command at the prompt before running, so shell history stays readable.

## Functions

### fish_remove_path

```bash
fish_remove_path <path>
```

Removes a path from the `$fish_user_paths` array.

#### Example

```fish
fish_remove_path /usr/local/bin
```
