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
