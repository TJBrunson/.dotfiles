#!/bin/bash

# Create necessary directories
mkdir -p ~/.config/nvim
mkdir -p ~/.vim

# Remove existing configurations if they exist
rm -rf ~/.config/nvim
rm -f ~/.vimrc

# Create symbolic links
ln -s ~/.dotfiles/nvim ~/.config/nvim
ln -s ~/.dotfiles/vim/.vimrc ~/.vimrc
ln -s ~/.dotfilse/zsh/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf

# Print status
echo "Symbolic links created"

