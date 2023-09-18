#!/bin/bash

# Based on https://github.com/pawelgrzybek/dotfiles/blob/master/setup-macos.sh

################################################################################
# System Preferences > Desktop & Dock
################################################################################

# Dock > Size:
defaults write com.apple.dock tilesize -int 36

# Dock > Magnification
defaults write com.apple.dock largesize -int 54

# Dock > Magnification
defaults write com.apple.dock magnification -bool true

# Dock > Minimize windows using: Scale effect
defaults write com.apple.dock mineffect -string "scale"

# Dock > Minimize windows into application icon
defaults write com.apple.dock minimize-to-application -bool true

# Dock > Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Dock > Automatically hide and show the Dock (duration)
defaults write com.apple.dock autohide-time-modifier -float 0.4

# Dock > Automatically hide and show the Dock (delay)
defaults write com.apple.dock autohide-delay -float 0

# Show recent applications in Dock
defaults write com.apple.dock show-recents  -bool true


# Kill affected apps
for app in "Dock" "Finder"; do
  killall "${app}" > /dev/null 2>&1
done

# Done
echo "Done. Note that some of these changes require a logout/restart to take effect."
