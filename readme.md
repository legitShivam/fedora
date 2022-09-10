#01 make .sh file executable

#example-->
chmod +x initial-fedora-configuration.sh # this file update the machine and modify dnf.conf to make dnf faster
chmod +x secondary-fedora-configuration.sh # this file enables rpm fusion repos and installs nvidia drivers


*** 01-config ***
#02 Make scripts executable

#03 Run ./initial-fedora-configuration.sh to modify dnf.conf to so that dnf can perform faster and then to update the machine

#04 Run ./secondary-fedora-configuration.sh to enable RPM Repos and install nvidia drivers, media codecs, better fonts

#05 Enable following tweaks in about:config page of firfox to make it faster and smoother
layers.acceleration.force-enabled
gfx.webrender.all


*** 02-appliction-instller ***

#06 make the scripts executable

#07 Run ./add-repo-gpg.sh to add repos and gpg keys

#08 Run ./application-installer.sh to install the applications


*** 03-application-setup ***

#09 Make the scripts executable

#10 *** 01-zsh-setup ***
#Run ./zsh-setup to install zsh from, ohmyzsh, p10k and zsh plugins

#11 *** [deprecated]02-touchcursor-setup ***
# Run ./touchcursor-installer.sh to install and configure the touchcursor
# Run ./touchcursor-uninstaller.sh to uninstall touchcursor and remove all the files related to it.

#12 *** 02-keyd-setup ***
# keyd is a touchcursor replacement
# [github] https://github.com/rvaiya/keyd.git
# [docs] https://github.com/rvaiya/keyd/blob/6dc2d5c4ea76802fd192b143bdd53b1787fd6deb/docs/keyd.scdoc#L128
# Run ./keyd-installer.sh to install and configure keyd




