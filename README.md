# Setup

Setup tools for a new machine.

## Install Homebrew

- [Homebrew](https://brew.sh/)

> Use the .pkg installer for Mac OS X

```bash
brew doctor
```

## Install fish shell

```bash
brew install fish
echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/fish
```

No shell framework or plugin manager is needed — see [fish/fish.md](fish/fish.md).
Copy [fish/config.fish](fish/config.fish) to `~/.config/fish/config.fish`.

If `brew` is not on fish's path yet:

```bash
fish_add_path /opt/homebrew/bin
```

## Install fonts

- [Favorite fonts](https://gist.github.com/Joker666/344be44b6f397cba59645b205085bcd4)
- [MartianMono nerd font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/MartianMono.zip)

## Install mise version manager

- [mise](https://mise.jdx.dev/)

Use the standalone installer on both macOS and Linux (not Homebrew — this
installs to `~/.local/bin/mise` and lets mise update itself with
`mise self-update`, decoupled from brew's upgrade cycle):

```bash
curl https://mise.run | sh
mise doctor
```

# Programming languages

## Go

- [Use Mise to install go](https://mise.jdx.dev/lang/go.html)

## Rust

Use `rustup` to install Rust.

## Python

- [Use Mise to install python](https://mise.jdx.dev/lang/python.html)

## Ruby

- [Use Mise to install ruby](https://mise.jdx.dev/lang/ruby.html)

## Node

- [Use Mise to install node](https://mise.jdx.dev/lang/node.html)
- Use Mise to install pnpm

```bash
mise use -g node@latest pnpm@latest
```

## Command line tools

- [superfile](https://github.com/yorukot/superfile)
- [eza](https://github.com/eza-community/eza)
  - Usage: `ks`
- [bat](https://github.com/sharkdp/bat)
- [fzf](https://junegunn.github.io/fzf/)
- [lazygit](https://github.com/jesseduffield/lazygit)
  - Usage: `lg`
- [lazydocker](https://github.com/jesseduffield/lazydocker)
- [broot](https://github.com/Canop/broot)
  - Usage: `br -S`
- [walk](https://github.com/antonmedv/walk)
  - Usage: `lk`
- [starship](https://github.com/starship/starship)
- [zoxide](https://github.com/ajeetdsouza/zoxide)
  - Usage: `z` / `zi`
- [uv](https://github.com/astral-sh/uv)
  - Install CLI tools with `uv tool install --python <version> <tool>` (pinning
    a uv-managed Python keeps tools working when mise prunes old runtimes)
- [cargo-cache](https://github.com/matthiaskrgr/cargo-cache)
  - Used by `prune-all` to trim the cargo registry
- [btop](https://github.com/aristocratos/btop)
- [onefetch](https://github.com/o2sh/onefetch)
- [fastfetch](https://github.com/fastfetch-cli/fastfetch)

## Mac Apps

- [IINA](https://iina.io)
- [Klack](https://tryklack.com)
- [Krisp](https://krisp.ai)
- [Yaak](https://yaak.app)
- [Stats](https://github.com/exelban/stats)
- [Image Optim](https://imageoptim.com)
- [Daisy Disk](https://daisydiskapp.com)
- [LM Studio](https://lmstudio.ai)
- [Pear Cleaner](https://itsalin.com/appInfo/?id=pearcleaner)
- [Mos](https://mos.caldis.me)
- [Quick Recorder](https://lihaoyun6.github.io/quickrecorder)
- [Latest](https://max.codes/latest)
- [Self Control](https://selfcontrolapp.com)
- [Wipr 2](https://apps.apple.com/us/app/wipr-2/id1662217862)
- [Mouse Jiggler](https://apps.apple.com/us/app/mouse-jiggler-mouse-mover/id6740313656?mt=12)
- [Cap](https://cap.so)

# Maintenance

Two fish scripts in [scripts/](scripts/) keep the machine current. Install them once:

```bash
cp scripts/update-all scripts/prune-all ~/.local/bin/
chmod +x ~/.local/bin/update-all ~/.local/bin/prune-all
```

- `update-all` — upgrades brew (formulae + greedy casks), mise + its runtimes, rust, uv tools, go binaries, and npm + pnpm + pip globals. `update-all --dry` previews without changing anything.
- `prune-all` — clears caches and leftovers (brew, mise, uv, pnpm, npm, pip, go, docker, cargo) and reports disk freed. `prune-all --deep` also wipes rebuildable caches entirely.
