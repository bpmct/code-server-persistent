#!/bin/bash

# Install Rust and rustup in $HOME/tools
# https://www.rust-lang.org/tools/install

argument=$1

if [[ ${argument:="install"} = "--uninstall" ]]; then
    export RUSTUP_HOME=$HOME/tools/rustup
    export CARGO_HOME=$HOME/tools/cargo
    echo "Uninstalling rustup..."
    rustup self uninstall
    exit
fi

# install rust
export RUSTUP_HOME=$HOME/tools/rustup
export CARGO_HOME=$HOME/tools/cargo
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh