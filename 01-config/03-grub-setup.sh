sudo cat ./assets/grub/grub.conf | sudo tee /etc/default/grub
sudo grub2-mkconfig -o /etc/grub2.cfg
cd ./assets/grub/theme/
chmod +x ./install.sh
./install.sh
reboot
