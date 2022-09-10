#!/bin/bash
# Initialising variables
. ../../assets/variables.sh

# initialising temp folder
mkdir temp
cd temp


# Dependencies 
dependencies="git zsh"
sudo $package_manager install $dependencies -y


# # ohmyzsh[deprecated]
# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# # p10k theme for ohymyzsh
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
# echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# sudo sed -i 's\ZSH_THEME="robbyrussell"\ZSH_THEME="powerlevel10k/powerlevel10k"\g' ~/.zshrc


## Installing plugins

# Zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting



# removing temp folder
cd ..
rm -rf ./temp


# Rebooting zsh
exec zsh

