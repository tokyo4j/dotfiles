### Default browser:

```sh
xdg-settings set default-web-browser firefox-developer-edition.desktop
```

### GTK:

```sh
gsettings set org.gnome.desktop.interface icon-theme breeze-dark
gsettings set org.gnome.desktop.interface cursor-theme Breeze_Snow
gsettings set org.gnome.desktop.interface gtk-theme Arc-Dark
gsettings set org.gnome.desktop.interface font-name sans
```

### efibootmgr:

```sh
efibootmgr -c -d /dev/sda -p 2 -L "Limine Bootloader" -l "\EFI\BOOT\LIMINE.EFI"
```

### rEFInd

```sh
cd /boot/efi/EFI/BOOT
cp /usr/share/refind/refind_x64.efi BOOTX64.EFI
mkdir drivers_x64
cp /usr/share/refind/drivers_x64/ext4_x64.efi drivers_x64/
cp -r /usr/share/refind/icons/ .
```
