#!/usr/bin/zsh

# Dock settings
defaults write com.apple.dock "orientation" -string "bottom" && killall Dock
defaults write com.apple.dock "tilesize" -int "54" && killall Dock
defaults write com.apple.dock "autohide" -bool "false" && killall Dock
defaults write com.apple.dock "show-recents" -bool "false" && killall Dock
defaults write com.apple.dock "mineffect" -string "genie" && killall Dock

# Screenshot settings
defaults write com.apple.screencapture "disable-shadow" -bool "true"
defaults write com.apple.screencapture "include-date" -bool "true" 
defaults write com.apple.screencapture "location" -string "~/Desktop" && killall SystemUIServer
defaults write com.apple.screencapture "show-thumbnail" -bool "true"
defaults write com.apple.screencapture "type" -string "png"

# File extension & Sidebar icon-size settings
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true" && killall Finder
defaults write NSGlobalDomain "NSTableViewDefaultSizeMode" -int "1" && killall Finder

# Finder GUI settings
defaults write com.apple.finder "ShowPathbar" -bool "true" && killall Finder
defaults write com.apple.finder "FXPreferredViewStyle" -string "clmv" && killall Finder
defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true" && killall Finder
defaults write com.apple.finder "FXEnableExtensionChangeWarning" -bool "false" && killall Finder

# Desktop Folder above & show Hard drives settings
defaults write com.apple.finder "_FXSortFoldersFirstOnDesktop" -bool "true" && killall Finder
defaults write com.apple.finder "ShowHardDrivesOnDesktop" -bool "true" && killall Finder
