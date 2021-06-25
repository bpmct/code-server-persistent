#!/bin/bash

# Install NodeJS and nvm in $HOME/tools
# https://github.com/nvm-sh/nvm#about 

argument=$1

if [[ ${argument:="install"} = "--uninstall" ]]; then
    echo "Uninstalling nvm..."
    rm -rf "$NVM_DIR"
    source ~/.bashrc
    exit
fi

# install nvm
export NVM_DIR=$HOME/tools/nvm 
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
source ~/.bashrc
nvm install 16
nvm alias default 16
nvm use default