#!/bin/bash

packages=(
	"git" 
	"base-devel"
	"uxterm"
	"i3-wm"
	"polybar"
	"rofi"
	"feh"
	"network-manager-applet"
	"flameshot"
)

packages_yay=(
	"autotiling"
	"lightdm-mini-greeter"
)

if pacman -Qq yay &>/dev/null; 
then
	echo "yay is already installed"
else
	mkdir ~/opt
	git clone https://aur.archlinux.org/yay.git ~/opt/yay
	cd ~/opt/yay
	makepkg -si
fi

sudo pacman -S ${packages[*]}
yay -S ${packages_yay[*]}

git clone https://github.com/teb97/dotfiles ~/.config
