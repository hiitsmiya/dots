#!/bin/sh


#  ▓█████▄ ▓█████ ██▒   █▓  ██████     ▄▄▄       █    ██ ▄▄▄█████▓ ▒█████   ██▀███   ██▓ ▄████▄  ▓█████ 
#  ▒██▀ ██▌▓█   ▀▓██░   █▒▒██    ▒    ▒████▄     ██  ▓██▒▓  ██▒ ▓▒▒██▒  ██▒▓██ ▒ ██▒▓██▒▒██▀ ▀█  ▓█   ▀ 
#  ░██   █▌▒███   ▓██  █▒░░ ▓██▄      ▒██  ▀█▄  ▓██  ▒██░▒ ▓██░ ▒░▒██░  ██▒▓██ ░▄█ ▒▒██▒▒▓█    ▄ ▒███   
#  ░▓█▄   ▌▒▓█  ▄  ▒██ █░░  ▒   ██▒   ░██▄▄▄▄██ ▓▓█  ░██░░ ▓██▓ ░ ▒██   ██░▒██▀▀█▄  ░██░▒▓▓▄ ▄██▒▒▓█  ▄ 
#  ░▒████▓ ░▒████▒  ▒▀█░  ▒██████▒▒    ▓█   ▓██▒▒▒█████▓   ▒██▒ ░ ░ ████▓▒░░██▓ ▒██▒░██░▒ ▓███▀ ░░▒████▒
#   ▒▒▓  ▒ ░░ ▒░ ░  ░ ▐░  ▒ ▒▓▒ ▒ ░    ▒▒   ▓▒█░░▒▓▒ ▒ ▒   ▒ ░░   ░ ▒░▒░▒░ ░ ▒▓ ░▒▓░░▓  ░ ░▒ ▒  ░░░ ▒░ ░
#   ░ ▒  ▒  ░ ░  ░  ░ ░░  ░ ░▒  ░ ░     ▒   ▒▒ ░░░▒░ ░ ░     ░      ░ ▒ ▒░   ░▒ ░ ▒░ ▒ ░  ░  ▒    ░ ░  ░
#   ░ ░  ░    ░       ░░  ░  ░  ░       ░   ▒    ░░░ ░ ░   ░      ░ ░ ░ ▒    ░░   ░  ▒ ░░           ░   
#     ░       ░  ░     ░        ░           ░  ░   ░                  ░ ░     ░      ░  ░ ░         ░  ░
#   ░                 ░                                                                 ░               
#    ██████  ▄████▄   ██▀███   ██▓ ██▓███  ▄▄▄█████▓                                                    
#  ▒██    ▒ ▒██▀ ▀█  ▓██ ▒ ██▒▓██▒▓██░  ██▒▓  ██▒ ▓▒                                                    
#  ░ ▓██▄   ▒▓█    ▄ ▓██ ░▄█ ▒▒██▒▓██░ ██▓▒▒ ▓██░ ▒░                                                    
#    ▒   ██▒▒▓▓▄ ▄██▒▒██▀▀█▄  ░██░▒██▄█▓▒ ▒░ ▓██▓ ░                                                     
#  ▒██████▒▒▒ ▓███▀ ░░██▓ ▒██▒░██░▒██▒ ░  ░  ▒██▒ ░                                                     
#  ▒ ▒▓▒ ▒ ░░ ░▒ ▒  ░░ ▒▓ ░▒▓░░▓  ▒▓▒░ ░  ░  ▒ ░░                                                       
#  ░ ░▒  ░ ░  ░  ▒     ░▒ ░ ▒░ ▒ ░░▒ ░         ░                                                        
#  ░  ░  ░  ░          ░░   ░  ▒ ░░░         ░                                                          
#        ░  ░ ░         ░      ░                                                                        
#           ░                                                                                           
                        
                        
                                                                                                                                
                                                                                                                                
# install the programs
yay -S brave-bin python-pywal python-pip ranger dunst redshift acpi i3blocks i3-gaps kitty scrot udiskie xorg-xbacklight ttf-font-awesome zsh
broadcom-wl xf86-input-mtrack-git mbpfan-git cpupower

sudo systemctl enable mbpfan
sudo systemctl enable cpupower


# install for pywal backend and for kitty to display images in ranger
pip install pillow
# it doesn't matter if you remove once a pip program is on your machine.
yay -Rcns python-pip

# bullshit apple shit

sudo cp -r $HOME/Documents/dots/macbook-files/90-xhc_sleep.rules /etc/udev/rules.d/
sudo cp -r $HOME/Documents/dots/macbook-files/cpupower /etc/default/
sudo cp -r $HOME/Documents/dots/macbook-files/snd_hda_intel.conf /etc/modprobe.d/
sudo cp -r $HOME/Documents/dots/macbook-files/30-touchpad.conf /etc/X11/xorg.conf.d/
sudo cp -r $HOME/Documents/dots/macbook-files/30-pointer.conf /etc/X11/xorg.conf.d/
cp -r $HOME/Documents/dots/macbook-files/.Xresources $HOME/
cp -r $HOME/Documents/dots/macbook-files/.xinitrc $HOME/

cp -r $HOME/Documents/dots/Wallpapers ~/Pictures/
mkdir -p ~/.config/i3/
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

# terminal and file stuff
mkdir -p $HOME/.config/kitty
cp -r $HOME/Documents/dots/kitty.conf $HOME/.config/kitty/
mkdir -p $HOME/.config/ranger
cp -r $HOME/Documents/dots/rc.conf $HOME/.config/ranger/

# vim stuff
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp -r $HOME/Documents/dots/.vimrc $HOME/
vim +PluginInstall +qall

mkdir -p $HOME/Pictures/Screenshots


# get ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "done. enjoy your rice :sunglasses:"
