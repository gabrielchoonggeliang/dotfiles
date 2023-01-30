#!/usr/bin/zsh

echo -n "Installing previous software...\nProceed [[y]/N]: "
read INSTALL
if [[ "$INSTALL" == "y" || "$INSTALL" == "N" ]]; then
    if [ "$INSTALL" = "N" ]; then
        echo "No changes made"
    else
        ln -s ~/.dotfiles/.zshrc ~/.zshrc
        ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        brew bundle --file ~/.dotfiles/Brewfile
        cd ~/.dotfiles
        brew bundle
    fi
else
    return 1
fi
