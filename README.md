### Prerequisites

## Tools you need to install

Linux:
```
sudo apt install stow fzf fd-find zoxide zsh tmux ripgrep neovim git make unzip gcc tree-sitter-cli xclip
```

Macos:
```
brew install stow fzf fd zoxide zsh tmux ripgrep neovim git make unzip tree-sitter
```

Notes:
- `fd` is `fd-find` on Debian/Ubuntu.
- `rg` is provided by the `ripgrep` package.
- `xclip` is a common Linux clipboard provider for Neovim (Wayland users may prefer `wl-clipboard`).
- `tree-sitter`/`tree-sitter-cli` is used by some Neovim setups/plugins.

## Install 
```
stow <config-want-to-install>
```

## Neovim configs in this repo

This repo contains multiple Neovim profiles:

- `nvim/` (AstroNvim-based) stow with `stow nvim` then run `nvim`
- `lazy-nvim/` (LazyVim-based) stow with `stow lazy-nvim` then run `NVIM_APPNAME=lazy-nvim nvim`
- `kickstart-nvim/` (kickstart.nvim) stow with `stow kickstart-nvim` then run `NVIM_APPNAME=kickstart-nvim nvim`

Optional (depends on what languages/tools you use in Neovim): `node`/`npm`, `python`, `go`, etc.

## After install all, install Tmux Plugin Manager
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
