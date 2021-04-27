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
* Xautolock (Lockscreen)
* i3exit (Exit script including blurlock)
* i3-scrot (Screenshot utility)
* Pamixer (Volume control for pulse audio)
* Tela (Icon pack for rofi)
* Flat-Remix-Gtk ( GTK3/4 theme)
* Firefox (Web browser)
* Brave (Web browser)
* Neovim (Editor)
* Pcmanfm (File browser)

```html
sudo pacman -S kitty rofi dunst nitrogen lxappearance xautolock i3exit pamixer firefox pcmanfm
yay -S polybar picom-jonaburg-git i3scrot tela-icon-theme flat-remix-gtk brave-bin
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

## Graphics Drivers

* Nvidia

```html
sudo pacman -S nvidia
sudo reboot 
nvidia-smi
```
