#!/usr/bin/sh -v

cp /boot/*-ucode.img /boot/vmlinuz-linux /boot/initramfs-linux.img /efi/limine
cp /usr/share/limine/BOOTX64.EFI /efi/EFI/BOOT/LIMINE.EFI

# To add boot entry:
# efibootmgr -c -d /dev/sda -p 2 -L "Limine Bootloader" -l "\EFI\BOOT\LIMINE.EFI"

# Copy limine limine.cfg to [ESP]/limine/