#!/bin/bash

# Check for exactly one argument
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 {macos|server}"
    exit 1
fi

# Check if the argument is one of the allowed values
if [[ "$1" != "macos" && "$1" != "server" ]]; then
    echo "Invalid argument: $1"
    echo "Usage: $0 {macos|server}"
    exit 1
fi

# Create necessary directories
mkdir -p ~/.config/nvim
mkdir -p ~/.vim
mkdir -p ~/.hammerspoon

# Remove existing configurations if they exist
rm -rf ~/.config/nvim
rm -f ~/.vimrc
rm -f ~/.hammerspoon/init.lua

# Create symbolic links
ln -s ~/.dotfiles/nvim ~/.config/nvim
ln -s ~/.dotfiles/lazygit ~/.config/lazygit
ln -s ~/.dotfiles/vim/.vimrc ~/.vimrc
ln -s ~/.dotfilse/zsh/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf

# Print status
echo "Symbolic links created"

# Hammerspoon configuration
if [ "$1" == "macos" ]; then
    echo "Configuring Hammerspoon for macOS"
    ln -s ~/.dotfiles/hammerspoon/personal.lua ~/.hammerspoon/init.lua
else
    echo "Not 'work' or 'macos'. Skipping Hammerspoon"
fi

# Check for cargo and install ripgrep
if command -v rg &> /dev/null; then
    echo "ripgrep is already installed"
elif command -v cargo &> /dev/null; then
    echo "cargo found, installing ripgrep"
    cargo install ripgrep
else
    echo "cargo not found, skipping ripgrep installation"
fi
