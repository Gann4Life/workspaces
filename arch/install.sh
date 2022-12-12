#!/bin/bash

cd ~ && mkdir gann-workspace && cd gann-workspace

# // v CORE PACKAGES v //
sudo pacman -S xf86-video-fbdev # Video drivers i guess
sudo pacman -S xorg xorg-xinit

# // v TOOLS v //
sudo pacman -S firefox # Perhaps there's a better alternative but would do for getting started.
sudo pacman -S git
sudo pacman -S alacritty # Terminal emulator
sudo pacman -S neovim
LV_BRANCH='release-1.2/neovim-0.8' bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh) # LunarVim

# Installing paru (yeah, quite ugly)
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..

# // v STYLING v //
sudo pacman -S nitrogen # Backgrounds
sudo pacman -S picom # Compositor