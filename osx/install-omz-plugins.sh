#!/bin/sh

# Install oh-my-zsh plugins
OH_MY_ZSH_PLUGIN_DIR="${ZSH_CUSTOM:=$HOME/.oh-my-zsh/custom}"

folder=${OH_MY_ZSH_PLUGIN_DIR}/plugins/zsh-autosuggestions
url=https://github.com/zsh-users/zsh-autosuggestions
if ! git clone "${url}" "${folder}" 2>/dev/null && [ -d "${folder}" ] ; then
    echo "Skip git clone of ${url} because the folder ${folder} exists."
fi
