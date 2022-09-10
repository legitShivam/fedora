# Cloning the repo
# https://github.com/donniebreve/touchcursor-linux


git clone https://github.com/donniebreve/touchcursor-linux.git # To clone the github repo
cd touchcursor-linux # To change directory


# Building, installing the touchcursor and removing the repo

make # To build the application
make install # To install the application
cd .. # To change directory to parent folder
sudo rm -rf touchcursor-linux # To remove the touchcursor-linux folder(repo)


# changing config file

sudo cat ./assets/touchcursor.conf | sudo tee ~/.config/touchcursor/touchcursor.conf # To add the keyboard name in touchcursor.conf and change the hyper key from whitespace to left alt key plus other configurations.


# Restart the service
systemctl --user restart touchcursor.service # To restart the touchcursor.service
