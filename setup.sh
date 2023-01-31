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

echo -n "Restoring previous system settings...\nProceed [[y]/N]: "
read RESTORE
if [[ "$RESTORE" == "y" || "$RESTORE" == "N" ]]; then
    if [ "$RESTORE" = "N" ]; then
        echo "No changes made"
    else
        zsh ./settings.sh
    fi
fi

echo "Installing tensorflow...\nProceed [[y]/N]: "
read INSTALL_TENSORFLOW
if [[ "$INSTALL_TENSORFLOW" == "y" || "$INSTALL_TENSORFLOW" == "N" ]]; then
    if [ "$INSTALL_TENSORFLOW" = "N" ]; then
        echo "No changes made"
    else
        zsh ./tensorflow.sh
    fi
fi