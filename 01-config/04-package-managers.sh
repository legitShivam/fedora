# initialising variables
. ../assets/variables.sh

# initialising temp folder
mkdir temp
cd temp


## Enabling snaps for fedora
echo
echo "Enabling Snaps"
echo


sudo $package_manager install snapd -y
sudo ln -s /var/lib/snapd/snap /snap




# Enabling Flatpaks for fedora
echo
echo "Enabling Flatpaks"
echo


sudo $package_manager install flatpak -y # Installing flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo # Enabling Flatpaks

# Enabling flathub
echo
echo "Enabling Flathub"
echo

flatpak remote-modify --enable flathub


cd ..
rm -rf ./temp