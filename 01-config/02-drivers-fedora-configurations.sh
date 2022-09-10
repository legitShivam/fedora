# initialising variables
. ../assets/variables.sh

# updating the system
sudo $package_manager update

# initialising temp folder
mkdir temp
cd temp


## To enable RPM Fusion
echo
echo "Enabling RPM Fusion Repos"
echo
# https://docs.fedoraproject.org/en-US/quick-docs/setup_rpmfusion/


# To enable the free repository
sudo $package_manager install \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y

# To enable nonfree repositrory
sudo $package_manager install \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

# Enabling Appstream data from the RPM Fusion repositories
sudo $package_manager group update core -y




## To install proprietory nvidia gpu drivers
echo
echo "Installing Nvidia GPU Drivers"
echo
# https://rpmfusion.org/Howto/NVIDIA


sudo $package_manager install akmod-nvidia -y
sudo $package_manager install xorg-x11-drv-nvidia-cuda -y #optional for cuda/nvdec/nvenc support
sudo systemctl enable nvidia-hibernate.service nvidia-suspend.service nvidia-resume.service # To start the nvidia services




## To install Media Codecs
echo
echo "Installing Media Codecs"
echo
# https://docs.fedoraproject.org/en-US/quick-docs/assembly_installing-plugins-for-playing-movies-and-music/


sudo $package_manager install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel -y
sudo $package_manager install lame\* --exclude=lame-devel -y
sudo $package_manager group upgrade --with-optional Multimedia -y





## To install touchpad drivers
echo 
echo "Installing touchpad driver"
echo

sudo $package_manager install xorg-x11-drv-synaptics-devel.i686





## To install Nerd fonts
echo
echo "Installing Nerd Fonts"
echo
# https://www.nerdfonts.com/


sudo cp ./assets/fonts/* ~/.local/share/fonts/


## To install plugins core
echo
echo "Installing core plugins"
echo


sudo $package_manager install dnf-plugins-core


## Eanbling third party repositories
sudo $package_manager install fedora-workstation-repositories -y


# removing temp folder
cd ..
rm -rf temp