#!/bin/bash

# Install prerequisites
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

# Open a new terminal, make it fullscreen, and run 'cbonsai -S'
gnome-terminal -- bash -c "sleep 1; wmctrl -r :ACTIVE: -b add,fullscreen; sleep 1; cbonsai -i -M 10 -L 75 -l; exec bash"
