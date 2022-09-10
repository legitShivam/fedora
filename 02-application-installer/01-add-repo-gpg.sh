## Coding


# Github Desktop
sudo rpm --import https://packagecloud.io/shiftkey/desktop/gpgkey # To add gpg key
sudo sh -c 'echo -e "[shiftkey]\nname=GitHub Desktop\nbaseurl=https://packagecloud.io/shiftkey/desktop/el/7/\$basearch\nenabled=1\ngpgcheck=0\nrepo_gpgcheck=1\ngpgkey=https://packagecloud.io/shiftkey/desktop/gpgkey" > /etc/yum.repos.d/shiftkey-desktop.repo' # To add repository

# VS Code
# Adding vs code repo
sudo cat <<EOF | sudo tee /etc/yum.repos.d/vscode.repo
[code]
name=Visual Studio Code
baseurl=https://packages.microsoft.com/yumrepos/vscode
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc
EOF
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc # To import gpg key




## Office


# Teams
sudo sh -c 'echo -e "[teams]\nname=teams\nbaseurl=https://packages.microsoft.com/yumrepos/ms-teams\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/teams.repo' # To add official microsoft yum repo
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc # To import gpg keys




## Web Browser


# Brave
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/ # Adding the repo
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc # Adding the gpg key

# MS Edge
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc # To add the gpg keys
sudo dnf config-manager --add-repo https://packages.microsoft.com/yumrepos/edge # To add the rpm repo

# Google-chrome
sudo dnf config-manager --set-enabled google-chrome


sudo dnf update --refresh # To refresh the cache
