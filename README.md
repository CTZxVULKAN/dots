# dots
A collection of my dot files.

## Dependencies

### i3
* Kitty (Terminal)
* Rofi (Application launcher)
* Polybar (Status bar)
* Dunst (Notification Daemon)
* Nitrogen (Wallpaper)
* Lxappearance (GTK theme manager)
* Picom (Compositor) 
* w3m (Neofetch backend)
* Xautolock (Lockscreen)
* i3exit (Exit script including blurlock)
* i3-scrot (Screenshot utility)
* Pamixer (Volume control for pulse audio)
* Tela (Icon pack for rofi)
* Flat-Remix-Gtk ( GTK3/4 theme)


```html
sudo pacman -S kitty rofi dunst nitrogen lxappearance xautolock i3exit pamixer firefox pcmanfm
yay -S polybar picom-jonaburg-git i3scrot tela-icon-theme flat-remix-gtk brave-bin w3m
```

### Software suite
* Firefox (Web browser)
* Brave (Web browser)
* Neovim (Editor)
* Leafpad (Editor)
* Pcmanfm (File browser)
* Discord (Internet messenger)
* Viewnior (Image viewer)
* Mpv (Media player)
* Atril (Document viewer)
* Transmission (Torrent client)
* Xarchiver (Archive manager)


```html
sudo pacman -S firefox pcmanfm discord viewnior mpv leafpad atril transmission-gtk
yay -S brave-bin xarchiver p7zip zip unzip unrar
```

### Essential fonts 
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
* nerd-fonts-complete

```html
sudo pacman -S noto-fonts ttf-droid ttf-dejavu ttf-opensans ttf-ubuntu-font-family
yay -S ttf-windows ttf-roboto-slab ttf-apple-emoji ttf-fira-code nerd-fonts-complete siji-git ttf-unifont 
```

## Drivers

* Graphics (Nvidia)

```html
sudo pacman -S nvidia
sudo reboot 
nvidia-smi
```

* Sound & Bluetooth

```html
sudo pacman -S pulseaudio pulseaudio-alsa pulseaudio-bluetooth alsa-utils pavucontrol
sudo pacman -S bluez bluez-openrc bluez-utils bluez-libs bluez-firmware 
sudo pacman -S blueman
pactl set-default-sink 1
sudo rc-update add bluetoothd default
sudo reboot
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
```

## Display Servers and Managers

* Xorg

```html
sudo pacman -S xorg --ignore xorg-server-xdmx displaymanager-openrc
```

* Lightdm

```html
sudo pacman -S lightdm lightdm-gtk-greeter
sudo rc-update add xdm default
```
> Note: *Make sure to set DISPLAYMANAGER="lightdm" in /etc/conf.d/xdm*
