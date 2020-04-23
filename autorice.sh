#!/bin/sh

cp $HOME/Documents/dots/Wallpapers $HOME/Pictures/

cp -r $HOME/Documents/dots/i3blocks/ $HOME/.config/i3blocks/
chmod +x ~/.config/i3blocks/battery2.py
chmod +x ~/.config/i3blocks/volume
chmod +x ~/.config/i3blocks/corona


mkdir ~/.config/scripts
cp $HOME/Documents/dots/scripts/ $HOME/.config/scripts/
chmod +x ~/.config/scripts/fetch
chmod +x ~/.config/scripts/panes.sh
chmod +x ~/.config/scripts/pipes.sh
cp -r $HOME/Documents/dots/.zshrc $HOME/.zshrc

cp $-r HOME/Documents/dots/config $HOME/.config/i3/

cp -r $HOME/Documents/dots/dunstwal /bin/
chmod +x /bin/dunstwal
cp -r $HOME/Documents/dots/dunst/ $HOME/.config/
chmod +x $HOME/.config/dunst/launch.sh

cp -r $HOME/Documents/dots/i3blocks.conf /etc/

cp -r $HOME/Documents/dots/kitty.conf $HOME/.config/kitty/

