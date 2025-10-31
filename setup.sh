#!/usr/bin/env bash

curl -sS https://starship.rs/install.sh | sh

stow zshrc tmux ghostty starship nvim

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
