#!/bin/bash

# default .bashrc for code-server-persistent

# alias for python (if install)
alias python="python3"
alias pip="pip3"

# PATH
export PATH="$HOME/.local/bin:$HOME/tools:$HOME/tools/homebrew/bin:$PATH"

# run install.sh if it hasn't been ran yet
if [ ! -f "/usr/local/install_complete" ]; then
    /bin/bash $HOME/install.sh&
fi

# end default .bashrc