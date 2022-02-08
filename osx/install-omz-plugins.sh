#!/bin/sh

# Install oh-my-zsh plugins
OH_MY_ZSH_PLUGIN_DIR="${ZSH_CUSTOM:=$HOME/.oh-my-zsh/custom}"

git clone https://github.com/zsh-users/zsh-autosuggestions ${OH_MY_ZSH_PLUGIN_DIR}/plugins/zsh-autosuggestions
