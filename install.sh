#!/bin/zsh

CONFIG_DIR=$(dirname "$0")
echo "🔧 Setting up your Mac...\n"

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

echo "📲 Installing homebrew/app store packages..."
#sh $CONFIG_DIR/osx/brew/brew_setup.sh
echo "✅ Successful installed packages\n"

echo "📲 Installing oh-my-zsh package..."
sh $CONFIG_DIR/osx/install-oh-my-zsh.sh
sh $CONFIG_DIR/osx/install-omz-plugins.sh
sh $CONFIG_DIR/osx/install-oh-my-zsh-theme.sh
echo "✅ Successful installed oh-my-zsh\n"

echo "📁 Creating projects directory..."
sh $CONFIG_DIR/osx/create_projects.sh
echo "✅ Successful created projects directory\n"

echo "🔗 Linking configuration files..."
sh $CONFIG_DIR/osx/symlink.sh
echo "✅ Successful linked configuration files\n"

# Install configurations from zsh
echo "🔧 Setting configuration to iTerm2 and zsh..."
source $HOME/.zshrc
echo "✅ Successful configured iTerm2 and zsh\n"

echo "⚡️ All right! Restart your machine to complete the configuration."

#echo "ℰ Installing Doom Emacs"
#sh $CONFIG_DIR/common/doom_emacs_setup.sh
#echo "✅ Successful installed Doom Emacs"

# Add default apps to Dock
#echo "🖥 Setting apps to Mac dock..."
#sh $CONFIG_DIR/osx/dock/setup.sh
#echo "✅ Successful set apps to Mac dock"
