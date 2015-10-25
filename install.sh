## Install needed depdencies
pacman -Syu
pacman -S yaourt
yaourt bspwm
yaourt oh-my-zsh
yaourt lemonbar-git
yaourt urxvt
yaourt xflux

# Create symlinks
for f in ~/dotfiles/files/* 
do
    echo "Processing file $f"
    ln -s "$f" "$HOME/.${f##*/}"
done

# Link dotfiles in config subfolder
for f in ~/dotfiles/files/config/*
do
    echo "$f"
    ln -s $f "$HOME/.config/${f##*/}"
done

# Link dotfiles in vim subfolder
for f in ~/dotfiles/files/vim/*
do
    echo "$f"
    ln -s $f "$HOME/.vim/${f##*/}"
done

# Install fonts
mkdir dl
cd dl
wget https://github.com/Keyamoon/IcoMoon-Free/archive/master.zip
unzip master.zip

# Set font permissions according to 
# https://wiki.archlinux.org/index.php/Fonts#Manual_installation
sudo chmod 0444 IcoMoon-Free-master/Font/*
sudo mv IcoMoon-Free-master/Font/IcoMoon-Free.ttf /usr/share/fonts/TTF/
sudo fc-cache -vf

echo "Fix file permissions"
sudo chmod +x ~/.config/lemonbar/panel
sudo chmod +x ~/.config/lemonbar/panel_bar
sudo chmod +x /etc/profile
