#!/bin/sh

# Install homebrew package manager in $HOME/tools
# https://brew.sh/

argument=$1

if [[ ${argument:="install"} = "--uninstall" ]]; then
    echo "Uninstalling homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"
    exit
fi

# install homebrew
git clone https://github.com/Homebrew/brew $HOME/tools/homebrew