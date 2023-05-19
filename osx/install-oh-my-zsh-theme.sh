#!/bin/bash

DOTFILE_DIR=$(dirname "$0")/../
ZSH_CUSTOM_DIR=".oh-my-zsh/custom/"

# Copy custom omz files bc oh-my-zsh can't follow symlinks
echo "📁 Copy oh-my-zsh customisations: $HOME/${dotfile}"
rsync --progress -ravh $DOTFILE_DIR/oh-my-zsh/$ZSH_CUSTOM_DIR $HOME/$ZSH_CUSTOM_DIR
