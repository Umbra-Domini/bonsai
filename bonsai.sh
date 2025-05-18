#!/bin/bash

# Open a new terminal, make it fullscreen, and run 'cbonsai -S'
gnome-terminal -- bash -c "sleep 1; wmctrl -r :ACTIVE: -b add,fullscreen; sleep 1; cbonsai -i -M 10 -L 75 -l; exec bash"
