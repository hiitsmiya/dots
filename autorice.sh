#!/bin/sh

cp -r $HOME/Documents/dots/.zshrc $HOME/
cp -r $HOME/Documents/dots/config $HOME/.config/i3/
## doesn't wanna work atm cp -r $HOME/Documents/dots/i3blocks.conf /etc/

cp -r $HOME/Documents/dots/Wallpapers ~/Pictures/
cp -r $HOME/Documents/dots/i3blocks/ ~/.config/
chmod +x ~/.config/i3blocks/battery2.py
chmod +x ~/.config/i3blocks/volume
chmod +x ~/.config/i3blocks/corona

cp -r $HOME/Documents/dots/scripts/ $HOME/.config/
chmod +x ~/.config/scripts/fetch
chmod +x ~/.config/scripts/panes.sh
chmod +x ~/.config/scripts/pipes.sh
