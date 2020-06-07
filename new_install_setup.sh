
loc="~/.dots"

mkdir Files/
mkdir Downloads/

ln -s $loc/.Xresources ~/.Xresources
ln -s $loc/.bash_aliases ~/.bash_aliases
ln -s $loc/.bashrc ~/.bashrc
ln -s $loc/.vimrc ~/.vimrc
ln -s $loc/.xinitrc ~/.xinitrc

ln -s $loc/alacritty/ ~/.config/alacritty/

## Setup for projects
mkdir Projects/
mkdir Projects/Kenalia/
mkdir Projects/Programming/
mkdir Projects/Tabletop/
mkdir Projects/Language/

echo "Left to do:"
echo "sudo ln -s $loc/customization/kenfetch.sh /usr/bin/kenfetch"

