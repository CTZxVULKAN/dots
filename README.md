<p align="center" >
<img src="https://user-images.githubusercontent.com/65299153/135719227-52adf365-d619-4b1f-b5fe-8aa2bbd25c56.png" width="60" />
</p>


<h1 align="center">Dots</h1>
<p align="center"> A collection of my dot files. </p>

<div align="center">
 
 ![Platform](https://img.shields.io/static/v1?label=Distro&message=Artix/Void&style=for-the-badge&logo=linux)
 ![Platform](https://img.shields.io/static/v1?label=Init&message=Openrc/Runnit&style=for-the-badge&logo=fastapi)
 ![Platform](https://img.shields.io/static/v1?label=Window-Magager&message=dwm&style=for-the-badge&logo=tmux)
 
</div>

![Project Banner](./repo/screenshot2.png)



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

<br>
<br>


## Security

* Kernel Hardening

```
sudo pacman -S linux-hardened linux-hardened
sudo grub-mkconfig -o /boot/grub/grub.cfg
```
> Incase of `multi-booting` you may need to **update** your GRUB configuration from **all** the distros. To be able to list the hardened kernel option in your bootloader.
> For booting into `hardened-kernel` check `Advanced Options for Artix` while in GRUB.

> Note: Not all applications, dirvers and devices will work properly. You may have to use [DKMS](https://wiki.archlinux.org/title/Dynamic_Kernel_Module_Support) to install your drivers (nvidia).
> Please reffer to [this](https://wiki.archlinux.org/title/Security#Kernel_hardening) before installing the hardened-kernel.


<br>
<br>



