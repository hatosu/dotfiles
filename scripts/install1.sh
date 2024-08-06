mkfs.fat -F32 /dev/sda1
mkswap /dev/sda2
swapon /dev/sda2
mkfs.ext4 /dev/sda3
mkfs.ext4 /dev/sda4
mount /dev/sda3 /mnt
mkdir /mnt/boot
mkdir /mnt/home
mount /dev/sda1 /mnt/boot
mount /dev/sda4 /mnt/home

cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backup
sudo pacman -Sy pacman-contrib
rankmirrors -n 6 /etc/pacman.d/mirrorlist.backup > /etc/pacman.d/mirrorlist
pacstrap -K /mnt base linux linux-firmware base-devel
genfstab -U -p /mnt >> /mnt/etc/fstab

echo "!!! MESSAGE FROM SCRIPT !!!"
echo "NEXT STEP: arch-chroot /mnt"
echo "now run the second install script"
