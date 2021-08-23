# dots 
A collection of my dot files.
<br>

![Project Banner](./repo/screenshot2.png)
![Project Banner 2](./repo/screenshot3.png)
![Platform](https://img.shields.io/static/v1?label=Distro&message=Artix&style=for-the-badge&logo=linux)
![Platform](https://img.shields.io/static/v1?label=Init&message=Openrc&style=for-the-badge&logo=fastapi)
![Platform](https://img.shields.io/static/v1?label=Window-Magager&message=i3-gaps&style=for-the-badge&logo=tmux)
<br>

## Dependencies

* **i3**

```
* Kitty (Terminal)
* Rofi (Application launcher)
* Polybar (Status bar)
* Dunst (Notification Daemon)
* Pcmanfm (File browser)
* Picom (Compositor) 
* w3m (Neofetch backend)
* Xautolock (Lockscreen)
* i3lock-color (i3lock fork)
* i3-scrot (Screenshot utility)
* Pamixer (Volume control for pulse audio)
```

```html
sudo pacman -S kitty rofi dunst xautolock pamixer firefox pcmanfm-gtk3
yay -S polybar picom-jonaburg-git i3-scrot i3lock-color w3m
```

* **Software suite**

```
* Firefox (Web browser)
* Brave (Web browser)
* Neovim (Editor)
* l3afpad (Graphical Editor)
* Element (Internet messenger)
* Signal (Internet messenger)
* GPicView (Image viewer)
* Mpv (Media player)
* Zathura (Document viewer)
* Transmission (Torrent client)
* Xarchiver (Archive manager)
* ProtonVPN (VPN)
```

```html
sudo pacman -S firefox gpicview mpv transmission-gtk neovim
yay -S l3afpad zathura element-desktop signal-desktop zathura-pdf-mupdf brave-bin xarchiver p7zip zip unzip unrar protonvpn-cli-ng
```

* **Essential fonts**

```
* noto-fonts
* ttf-droid
* ttf-dejavu
* ttf-opensans 
* ttf-ubuntu-font-family
* ttf-windows
* ttf-roboto-slab
* ttf-apple-emoji
* ttf-fira-code
* siji-git
* ttf-unifont 
* ttf-font-awesome
* nerd-fonts-complete
```

```html
sudo pacman -S noto-fonts ttf-droid ttf-dejavu ttf-opensans ttf-ubuntu-font-family ttf-font-awesome
yay -S ttf-windows ttf-roboto-slab ttf-apple-emoji ttf-fira-code nerd-fonts-complete siji-git ttf-unifont 
```

* Manual installation of fonts

> Copy the fonts to `~/.local/share/fonts`  & run `fc-cache -f -v` to rebuild your fonts cache.


* **Theming**

```
* Lxappearance (GTK theme manager)
* Nitrogen (Wallpaper Settings)
* Tela (Icon pack for rofi)
* Flat-Remix-Gtk ( GTK3/4 theme)
```

```
yay -S lxappearance-gtk3 nitrogen
```

```
yay -S tela-icon-theme flat-remix-gtk lxappearance-gtk3 nitrogen
```

* Manual Installation of themes and icons

> Extract all contents under `themes` & `icons` folders in the repo. Copy the extracted themes to `~/.themes`  & icons to `~/.icons`.



## Drivers & Devices

* Graphics (Nvidia)

```html
sudo pacman -S nvidia nvidia-utils-openrc
sudo reboot 
nvidia-smi
```

> * Incase you are gaming install this alongside
```html
sudo pacman -S nvidia-dkms nvidia-utils lib32-nvidia-utils nvidia-settings vulkan-icd-loader lib32-vulkan-icd-loader
```


* Intregrated-graphics (Intel)

```html
sudo pacman -S intel-ucode
sudo reboot 
```

* Sound & Bluetooth

```html
sudo pacman -S pulseaudio pulseaudio-alsa pulseaudio-bluetooth alsa-utils pavucontrol
sudo pacman -S bluez bluez-openrc bluez-utils bluez-libs 
yay -S bluez-firmware blueman
sudo rc-update add bluetoothd default
sudo reboot
```
> * You may have to change your sink in order to get the volume working use the following commands to change the sink : 

```
pactl list sinks
pactl set-default-sink <desired-sink-no.>
```

* Wifi 

```html
sudo pacman -S networkmanager networkmanager-openrc network-manager-applet
sudo rc-update NetworkManager add default

```
 
* Printers & Scanners

```html
sudo pacman -S cups cups-openrc
sudo rc-update add cupsd default
sudo pacman -S hplip system-config-printer simple-scan
sudo reboot
```
> * Incase you are dont have a hp printer install the following driver instead of hplip
```html
sudo pacman -S gutenprint
```


* USB Auto-mounting

```html
sudo pacman -S udisks2 udiskie gvfs
sudo rebooot
```


* USB Auto-mounting Android Devices

```html
sudo pacman -S mtpfs gvfs-mtp gvfs-gphoto2
yay -S jmtpfs
sudo rebooot
```
## SWAP File 

```
sudo fallocate -l 8G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
sudo swapon -s
sudo reboot
```

## PATHS

* Bash

```html
export PATH=$PATH:~/.local/bin
```

* Fish 

```html
fish_add_path  ~/.local/bin
```
> * Unlike bash fish doesnt have any fishrc just execute this command.


## Common Issues

*  **Enable  Arch Linux Support**

Artix has reached the stage where it can operate without the help of the Arch repositories, including the preparation of its installation media.
As of now `arch-repos` have been disabled by default. To enable them [view](https://wiki.artixlinux.org/Main/Repositories#Arch_repositories)

```
sudo pacman -S artix-archlinux-support
```
>* After installing  add  the following to your `pacman.conf` followed by `sudo pacman -Syyy && sudo reboot`.

```
 # ARCH
 [extra]
 Include = /etc/pacman.d/mirrorlist-arch

 [community]
 Include = /etc/pacman.d/mirrorlist-arch

 [multilib]
 Include = /etc/pacman.d/mirrorlist-arch 
```


*  **PGP Keys**

Artix sometimes has error recieving keys from the AUR. This issue can be fixed by manually getting the keys from a different server.

```
sudo pacman -Sy gnupg
gpg --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 --recv <Key>
```
> * Here were manually importing the keys from the ubuntu server to fix this problem.

You can also change your keyserver entirely in `/etc/pacman.d/gnupg/gpg.conf`

```
keyserver hkp://keyserver.ubuntu.com/
```
> * Add this at the end of your `gpg.conf`, if keyserver already exists then change it followed by a reboot.

```
sudo reboot
sudo pacman -Syyy
```

## Debloat 

*  **Common**

```html
sudo pacman -Rns kde-applications
sudo pacman -Rns xfce4 xfce4-goodies
sudo pacman -Rc gnome
sudo pacman -Rc cinnamon-desktop
yay -c
```
> * Some drivers might be uninstalled in the prosecess of debloating. It is advised to reinstall the **Drivers & Devices** once more after debloating. This will be fairly quick as build files for the drivers will be stored in cache

