#!/bin/sh

yay -S brave-bin python-pywal python-pip ranger dunst redshift acpi i3blocks i3-gaps kitty scrot udiskie xorg-xbacklight ttf-font-awesome zsh


cp -r $HOME/Documents/dots/Wallpapers ~/Pictures/
cp -r $HOME/Documents/dots/config $HOME/.config/i3/

# dunst stuff
cp -r $HOME/Documents/dots/dunst/ $HOME/.config/
chmod +x $HOME/.config/dunst/launch.sh
sudo cp -r $HOME/Documents/dots/dunstwal /bin/
sudo chmod +x /bin/dunstwal

# i3blocks stuff
cp -r $HOME/Documents/dots/i3blocks/ ~/.config/
chmod +x $HOME/.config/i3blocks/battery2.py
chmod +x $HOME/.config/i3blocks/volume
chmod +x $HOME/.config/i3blocks/corona
sudo cp -r $HOME/Documents/dots/i3blocks.conf /etc/

# terminal stuff
cp -r $HOME/Documents/dots/scripts/ $HOME/.config/
chmod +x $HOME/.config/scripts/fetch
chmod +x $HOME/.config/scripts/panes.sh
chmod +x $HOME/.config/scripts/pipes.sh
cp -r $HOME/Documents/dots/.zshrc $HOME/

cp +r $HOME/Documents/dots/.vimrc ~/
sudo cp +r $HOME/Documents/dots/.xinitrc ~/

pip install pillow
pip install yaishoku
yay -Rcns python-pip

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


echo "done, enjoy your rice. use 'startx' to get hopping!"
