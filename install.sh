#!/bin/bash

set -euo pipefail

# Making ZSH default shell
if command -v zsh >/dev/null; then
    sudo chsh -s $(command -v zsh) $USER
fi

# Check if there is a .zsh dir
if [ ! -d "$HOME/.zsh" ]; then
  mkdir -p "$HOME/.zsh"
fi

# Check if pure is already installed
if [ ! -d "$HOME/.zsh/pure" ]; then
  git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
fi

# Install chezmoi
if ! command -v chezmoi >/dev/null; then
    echo "Installing Chezmoi"
    sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply https://github.com/MorielMauni/dotfiles.git
fi

exit 0
