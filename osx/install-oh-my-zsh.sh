#!/bin/sh

# install oh-my-zsh
if [ -d ~/.oh-my-zsh ]; then
    echo "🔄 Update oh-my-zsh, as it is already installed..."
    sh -c "$ZSH/tools/upgrade.sh"
  else
    echo "⤵️ Install oh-my-zsh..."
 	  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

