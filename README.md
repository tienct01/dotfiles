# Dotfiles

Personal dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/).

Run commands from the repository root, usually `~/.dotfiles`. Stow creates symlinks from each package into your home directory.

## Packages

| Package | Installs | Notes |
| --- | --- | --- |
| `zshrc` | `~/.zshrc` | Oh My Zsh setup, aliases, Starship, zoxide, language/tool paths |
| `tmux` | `~/.tmux.conf` | TPM plugins, Catppuccin theme, `sesh` session picker |
| `ghostty` | `~/.config/ghostty` | Ghostty terminal config |
| `starship` | `~/.config/starship.toml` | Starship prompt config |
| `nvim` | `~/.config/nvim` | Main AstroNvim-based profile |
| `lazy-nvim` | `~/.config/lazy-nvim` | Optional LazyVim profile |
| `kickstart-nvim` | `~/.config/kickstart-nvim` | Optional kickstart.nvim profile |
| `aerospace` | `~/.config/aerospace` | AeroSpace window manager config for macOS |
| `zed` | `~/.config/zed` | Zed settings and keymap |
| `codex` | `~/.codex` | Codex CLI config |
| `opencode` | `~/.config/opencode` | OpenCode config |

## Prerequisites

### macOS

```sh
brew install stow fzf fd zoxide zsh tmux ripgrep neovim git make unzip tree-sitter starship
```

### Debian/Ubuntu

```sh
sudo apt install stow fzf fd-find zoxide zsh tmux ripgrep neovim git make unzip gcc tree-sitter-cli xclip
```

Notes:

- `fd` is packaged as `fd-find` on Debian/Ubuntu.
- `rg` is provided by the `ripgrep` package.
- `xclip` is a common Linux clipboard provider for Neovim. Wayland users may prefer `wl-clipboard`.
- `tree-sitter` or `tree-sitter-cli` is used by some Neovim plugins.
- Some Neovim language tooling may also need `node`/`npm`, `python`, `go`, `rust`, or other language runtimes.
- The `zshrc` package expects Oh My Zsh and the `zsh-autosuggestions` and `zsh-syntax-highlighting` plugins to be installed.

## Install

Clone the repo:

```sh
git clone <repo-url> ~/.dotfiles
cd ~/.dotfiles
```

Install the default set used by `setup.sh`:

```sh
./setup.sh
```

Or install packages manually:

```sh
stow zshrc tmux ghostty starship nvim
```

Install any optional package the same way:

```sh
stow aerospace zed codex opencode
```

If Stow reports a conflict, move or back up the existing target file first, then rerun the `stow` command.

## Neovim Profiles

This repo contains three Neovim profiles. The default profile uses the normal `nvim` app name:

```sh
stow nvim
nvim
```

Optional profiles use separate app names so they can coexist with the default profile:

```sh
stow lazy-nvim
NVIM_APPNAME=lazy-nvim nvim
```

```sh
stow kickstart-nvim
NVIM_APPNAME=kickstart-nvim nvim
```

The `zshrc` package also defines convenience aliases:

```sh
lazy-nvim
kickstart-nvim
```

## Tmux Plugins

Install Tmux Plugin Manager if it is not already installed:

```sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Then start tmux and press `prefix + I` to install plugins.

## Updating Symlinks

After changing package contents, restow the affected package:

```sh
stow -R <package>
```

Remove a package's symlinks with:

```sh
stow -D <package>
```
