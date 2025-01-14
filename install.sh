#!/bin/bash

packages=(
	"git" 
	"base-devel"
	"ttf-jetbrains-mono-nerd"
	"xterm"
#	"lightdm"
#	"i3-wm"
	"polybar"
	"rofi"
	"feh"
	"network-manager-applet"
	"xss-lock"
	"xsecurelock"
	"flameshot"
 	"brightnessctl"
	"acpi"
	"autorandr"
)

packages_yay=(
	"autotiling"
	"libinput-gestures"
)

sudo pacman -S ${packages[*]}

if pacman -Qq yay &>/dev/null; 
then
	echo "yay is already installed"
else
	mkdir ~/opt
	git clone https://aur.archlinux.org/yay.git ~/opt/yay
	cd ~/opt/yay
	makepkg -si
fi

yay -S ${packages_yay[*]}

