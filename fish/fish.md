# Fish shell setup

No shell framework or plugin manager is needed — `config.fish` in this
directory is self-contained. Everything comes from standalone tools:

- **directory jumping** → [zoxide](https://github.com/ajeetdsouza/zoxide)
  (`brew install zoxide`). Defines `z` and `zi` (interactive picker)
- **fzf key bindings** → shipped with fzf itself, loaded via `fzf --fish | source`
- **prompt** → [starship](https://starship.rs), installed via brew

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
