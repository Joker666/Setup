# Setup

Setup tools for a new machine.

## Install Homebrew

- [Homebrew](https://brew.sh/)

> Use the .pkg installer for Mac OS X

```bash
brew doctor
```

## Install fish shell

- [Instructions on how to install Fish shell on Mac OS X, including Oh My Fish!](https://gist.github.com/martelogan/97cfc998ade51b6dcf55423bbd50917c)

If the `ruby` installer was used to install Homebrew, `brew` needs to be added to fish path.

```bash
fish_add_path /opt/homebrew/bin
```

## Install fonts

- [Favorite fonts](https://gist.github.com/Joker666/344be44b6f397cba59645b205085bcd4)
- [Hack nerd font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack)

## Install mise version manager

- [mise](https://mise.jdx.dev/)

> Use Homebrew to install Mise in MacOS.
> Use CLI to install Mise in Linux.

```bash
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
- [Use corepack to install pnpm](https://pnpm.io/installation#using-corepack)

```bash
pnpm setup
```

## Command line tools

- [superfile](https://github.com/yorukot/superfile)
- [exa](https://github.com/ogham/exa)
  - Usage: `ks`
- [bat](https://github.com/sharkdp/bat)
- [lazygit](https://github.com/jesseduffield/lazygit)
  - Usage: `lg`
- [lazydocker](https://github.com/jesseduffield/lazydocker)
- [broot](https://github.com/Canop/broot)
  - Usage: `br -S`
- [walk](https://github.com/antonmedv/walk)
  - Usage: `lk`
- [starship](https://github.com/starship/starship)
- [btop](https://github.com/aristocratos/btop)
