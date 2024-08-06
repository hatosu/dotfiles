sudo pacman -S vim nvidia-dkms nvidia-utils linux-headers intel-ucode dhcpcd networkmanager
sudo mv ~/dotfiles/configs/locale.gen /etc/
locale-gen
echo LANG=en_US.UTF-8 > /etc/locale.conf
export LANG=en_US.UTF-8
ln -s /usr/share/zoneinfo/America/Los_Angeles
hwclock --systohc --utc

echo uwu > /etc/hostname

systemctl enable fstrim.timer

passwd
useradd -m -g users -G wheel,storage,power -s /bin/bash hatosu
passwd hatosu

echo "!!! MESSAGE FROM SCRIPT !!!"
echo "NEXT STEP: EDITOR=vim visudo"
echo "STEP AFTER: uncomment %wheel right under root at bottom"
echo "LAST STEP: add <Defaults rootpw> at bottom of entire file"
echo "now run the third install script"
