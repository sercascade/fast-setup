#!/bin/bash

# check if rustup is already installed
if command -v rustup &> /dev/null; then
    echo "rust is already installed."
    exit 0
fi

# install prerequisites
echo "installing prerequisites..."
sudo pacman -Sy --noconfirm curl

# download and install rustup
echo "downloading and installing rustup..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# add rust to PATH
source $HOME/.cargo/env

# donfirm installation
echo "rust installation completed."
echo "rust version:"
rustc --version
cargo --version
