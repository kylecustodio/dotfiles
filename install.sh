#!/bin/sh

# vim
sudo dnf install vim -y

# zsh + change shell
sudo dnf install zsh -y
chsh -s $(which zsh)

# tooling
sudo dnf install zoxide -y
curl -sS https://starship.rs/install.sh | sh

# install sway + etc
sudo dnf install sway -y
sudo dnf swap sway-config sway-config-fedora -y
sudo dnf install dunst

# .config files
cd ~/.config
ln -sf ~/dotfiles/sway sway
ln -sf ~/dotfiles/waybar waybar
ln -sf ~/dotfiles/swaylock swaylock
ln -sf ~/dotfiles/rofi rofi
ln -sf ~/dotfiles/dunst dunst
ln -sf ~/dotfiles/foot foot

# home directory files
cd
ln -sf ~/dotfiles/.vimrc .vimrc
ln -sf ~/dotfiles/.zshrc .zshrc

