#!/bin/bash

set -euo pipefail

if ! command -v chezmoi >/dev/null; then
    echo "Installing Chezmoi"
    sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply https://github.com/MorielMauni/dotfiles.git
fi

exit 0
