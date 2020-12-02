#!/bin/bash

#DOTFILE_DIR=$HOME/.dotfiles
DOTFILE_DIR=$(dirname "$0")/../

DOTFILES=(
	"git"
	"zsh"
)

cd $DOTFILE_DIR

for dotfile in "${DOTFILES[@]}";do
	echo "🔗 Linking dotfile: $HOME/${dotfile}"
	stow -vt $HOME $dotfile
done
