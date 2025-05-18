#!/bin/bash

# Install prerequisites for cbonsai animation
echo "Installing prerequisites..."
sudo apt update
sudo apt install -y gnome-terminal wmctrl git build-essential

# Check if cbonsai is already installed
if ! command -v cbonsai &> /dev/null; then
    echo "cbonsai not found. Installing cbonsai..."
    git clone https://github.com/mcpcpc/cbonsai.git
    cd cbonsai
    make
    sudo make install
    cd ..
    rm -rf cbonsai
else
    echo "cbonsai is already installed."
fi

echo "All prerequisites installed successfully."
