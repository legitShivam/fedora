# initialising variables
. ../assets/variables.sh

# initialising temp folder
mkdir temp
cd temp

##Tools

tools="xclip curl wget git micro bat navi peco exa fzf"
tools_cargo="zoxide"
tui="ranger htop neofetch "
sh="zsh autojump-zsh"
sudo $package_manager install $tools $tui $sh -y


## Coding
coding=" github-desktop code"
python="python3 python3-pip conda"
ruby="ruby-devel"
cpp="gcc gdb root"

sudo $package_manager install $coding $python $ruby $cpp -y

# ruby
sudo cat ./assets/ruby.conf | sudo tee -a ~/.bashrc # configuration for ruby
# installing cargo packages
cargo install $tools_cargo

# rust
curl https://sh.rustup.rs -sSf | sh

# Figma
flatpak install flathub io.github.Figma_Linux.figma_linux -y # To install figma from flathub


## Office
# native packages
office="teams"
sudo $package_manager install $office -y

# snap packages
office_snap="notion-snap mailspring"
sudo snap install office_snap

# flatpak packages
office_flatpak="onlyoffice-desktopeditors" 
flatpak install flathub $office_flatpak -y

# Zoom
wget https://zoom.us/client/latest/zoom_x86_64.rpm # Downloads the lates rpm package from zoom.us
sudo $package_manager localinstall zoom_x86_64.rpm  -y # To install zoom




## Messengers
messengers="telegram discord"
sudo $package_manager install $messengers -y




# Editing
editing="audacity.x86_64 handbrake kmod-v4l2loopback gimp"
sudo $package_manager install $editing -y



## Web Browser
web_browser="brave-browser chromium google-chrome-stable microsoft-edge-stable"
sudo $package_manager install $web_browser -y




## Misc
misc="vlc timeshift gparted"
sudo $package_manager install $misc -y


# Spotify
# prerequisites
dependencies="lpf-spotify-client"
$package_manager install $dependencies -y
sudo lpf  approve spotify-client
sudo -u pkg-build lpf build spotify-client
# installation
sudo $package_manager install /var/lib/lpf/rpms/spotify-client/spotify-client-*.rpm -y


# removing temp folder
cd ..
rm -rf temp
