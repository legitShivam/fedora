#!/bin/sh


# Cloning the dotfiles repo
git clone https://github.com/legitShivam/.dotfiles.git ~/.dotfiles

# Moving to the dotfiles folder
cd ~/.dotfiles

# making the install script executable
sudo chmod +x install.sh

# running the install script
./install.sh

