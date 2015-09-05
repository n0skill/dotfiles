mkdir dl
cd dl
wget https://github.com/Keyamoon/IcoMoon-Free/archive/master.zip
unzip master.zip
# Install fonts
sudo chmod 0444 IcoMoon-Free-master/Font/*
sudo mv IcoMoon-Free-master/Font/IcoMoon-Free.ttf /usr/share/fonts/TTF/
cd ..
sudo fc-cache -vf

# Install needed depdencies
pacman -Syu
pacman -S yaourt
yaourt bspwm
yaourt oh-my-zsh
yaourt lemonbar-git
yaourt urxvt


# Move the dotfiles to the correct folders
# TODO: check for permission issues
mkdir ~/.config/lemonbar/
mkdir ~/.vim
mkdir ~/.vim/colors/

cp .vimrc ~/.vimrc
cp .Xresources ~/.Xresources
cp .zshrc ~/.zshrc
cp lemonbar/* ~/.config/lemonbar
cp .vim/colors/solarized.vim ~/.vim/colors/solarized.vim
cp .config/bspwm/* ~/.config/bspwm/
echo "Wallpaper image should be at ~/Images/wp.png"
sudo cp profile /etc/profile

