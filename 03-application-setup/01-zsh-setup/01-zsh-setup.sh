#!/bin/bash
# Initialising variables
. ../../assets/variables.sh

# initialising temp folder
mkdir temp
cd temp


# Dependencies 
dependencies="git zsh"
sudo $package_manager install $dependencies -y


# removing temp folder
cd ..
rm -rf ./temp

# ohmyzsh[deprecated]
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
