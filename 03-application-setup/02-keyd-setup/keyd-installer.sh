# Cloning the repo
# https://github.com/rvaiya/keyd.git


git clone https://github.com/rvaiya/keyd.git # To clone the github repo
cd keyd # To change directory


# Building, installing the touchcursor and removing the repo

make # To build the application
sudo make install # To install the application
cd .. # To change directory to parent folder
sudo rm -rf keyd # To remove the touchcursor-linux folder(repo)


# changing config file

sudo cp ./assets/default.conf /etc/keyd/ # to add the config file


# Restart the service
sudo systemctl enable keyd && sudo systemctl start keyd # To restart the touchcursor.service


# after running this script go and edit anything in default.conf and then run the following command
sudo systemctl restart keyd