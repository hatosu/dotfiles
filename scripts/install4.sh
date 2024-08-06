sudo mkdir /etc/pacman.d/hooks
sudo mv ~/dotfiles/configs/nvidia.hook /etc/pacman.d/hooks/
sudo mv ~/dotfiles/configs/mkinitcpio.conf /etc/
sudo mv ~/dotfiles/configs/nvidia.conf /etc/modprobe.d/

echo "!!! MESSAGE FROM SCRIPT !!!"
echo "NEXT STEP: exit"
echo "STEP AFTER: umount -R /mnt"
echo "LAST STEP: shutdown now, unplug usb drive, and turn pc back on :D"
echo "after that is the package script!!!!! >:3"
