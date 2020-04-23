#!/bin/sh

cp -r $HOME/Documents/dots/.zshrc $HOME/.zshrc
cp -r $HOME/Documents/dots/config $HOME/.config/i3/
cp -r $HOME/Documents/dots/i3blocks.conf /etc/

cp -r $HOME/Documents/dots/Wallpapers ~/Pictures/
CP -r $HOME/Documents/dots/i3blocks/ ~/.config/ | chmod +x ~/.config/scripts/fetch | chmod +x ~/.config/scripts/panes.sh
| chmod +x ~/.config/scripts/pipes.sh

