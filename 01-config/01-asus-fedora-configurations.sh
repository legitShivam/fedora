# initialising variables
. ../assets/variables.sh

# initialising temp folder
mkdir temp
cd temp


## Updating the system
sudo $package_manager update -y

## Initial configurations
sudo cat ./assets/dnf.conf | sudo tee /etc/dnf/dnf.conf
echo
echo "dnf.conf Modified"

## Asus configuration
echo 
echo "Asus configurations"
# prerequisites
sudo $package_manager copr enable lukenukem/asus-linux -y # To install drivers related to asus
sudo $package_manager update -y # and reboot if you are not on the latest kernel

dependencies="install clang-devel systemd-devel cargo"
sudo $package_manager install $dependencies -y

# cloning the aussctl repo
git clone https://gitlab.com/asus-linux/asusctl.git
cd ./asusctl/
make && sudo make install
cd ..
sudo systemctl daemon-reload && systemctl restart asusd


# cloning supergfxctl repo
git clone https://gitlab.com/asus-linux/supergfxctl.git
cd ./supergfxctl/
make && sudo make install
cd ..
sudo systemctl enable supergfxd.service --now # to enable asus daemon


# removing temp folder
cd ..
rm -rf ./temp
sudo reboot