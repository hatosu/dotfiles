mount -t efivarfs efivarfs /sys/firmware/efi/efivars/
bootctl install
sudo mv ~/dotfiles/configs/arch.conf /boot/loader/entries/
echo "options root=PARTUUID=$(blkid -s PARTUUID -o value /dev/sda3) rw" >> /boot/loader/entries/arch.conf

sudo systemctl enable dhcpcd@enp4s0.service
sudo systemctl enable NetworkManager.service

echo "!!! MESSAGE FROM SCRIPT !!!"
echo "NEXT STEP: sudo vim /boot/loader/entries/arch.conf"
echo "STEP AFTER: after rw on the same line add nvidia-drm.modeset=1"
echo "now run the fourth install script"
