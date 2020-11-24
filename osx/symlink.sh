#!/bin/bash

#DOTFILE_DIR=$HOME/.dotfiles
DOTFILE_DIR=$(dirname "$0")

DOTFILES=(
	"git"
)

cd $DOTFILE_DIR

for dotfile in "${DOTFILES[@]}";do
	echo "🔗 Linking dotfile: $HOME/${dotfile}"
	stow -nvt $HOME $dotfile
done
