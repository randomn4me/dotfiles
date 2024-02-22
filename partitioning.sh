#!/bin/bash

ROOT="/dev/nvme0n1"

# partitioning

echo "partitioning"
printf "label: gpt\n,550M,U\n,,L\n" | sfdisk ${ROOT}


# create boot
echo "make filesystem for /boot on ${ROOT}p1"
mkfs.fat -F 32 ${ROOT}p1

# setup luks
CRYPTNAME=luks
echo "####################"
echo "setting up rest on ${ROOT}p2"
echo "setting up with cryptname ${CRYPTNAME}"
echo "####################"

cryptsetup luksFormat ${ROOT}p2
cryptsetup luksOpen ${ROOT}p2 $CRYPTNAME

CRYPTROOT=/dev/mapper/$CRYPTNAME

echo "####################"
echo "generate btrfs subvolumes"
echo "####################"

mkfs.btrfs ${CRYPTROOT}

mkdir -p /mnt

mount ${CRYPTROOT} /mnt

btrfs sub create /mnt/@
btrfs sub create /mnt/@swap
btrfs sub create /mnt/@home
btrfs sub create /mnt/@snapshots

umount /mnt

echo "####################"
echo "mount btrfs subvolumes from $CRYPTROOT to /mnt"
echo "####################"

mount -o noatime,nodiratime,compress=zstd,space_cache=v2,ssd,subvol=@ $CRYPTROOT /mnt

mkdir -p /mnt/{boot,home,.snapshots,btrfs}

mount -o noatime,nodiratime,compress=zstd,space_cache=v2,ssd,subvol=@home $CRYPTROOT /mnt/home
mount -o noatime,nodiratime,compress=zstd,space_cache=v2,ssd,subvol=@snapshots $CRYPTROOT /mnt/.snapshots
mount -o noatime,nodiratime,compress=zstd,space_cache=v2,ssd,subvolid=5 $CRYPTROOT /mnt/btrfs

mount /dev/${ROOT}p1

echo "####################"
echo "setting up swap"
echo "####################"

pushd /mnt/btrfs/@swap
truncate -s 0 ./swapfile
chattr +C ./swapfile
btrfs property set ./swapfile compression none
dd if=/dev/zero of=./swapfile bs=1M count=16k status=progress
chmod 600 ./swapfile
mkswap ./swapfile
swapon ./swapfile
popd


echo "####################"
echo "installing packages in /mnt"
echo "####################"
pacstrap /mnt linux linux-firmware base btrfs-progs intel-ucode nvim

