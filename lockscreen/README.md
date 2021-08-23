## LockScreen
The binaries in here are used for the lockscreen.
You can install them from the [AUR](https://aur.archlinux.org/packages/i3exit/), the ones in here are my tweaked versions.

### Dependencies
* i3lock-color
* xautolock

```
sudo pacman -S xautolock
yay -S i3lock-color
```

### Setup 

1. Make sure the binaries are executable

```
chmod +x blurlock i3exit
```

2. Copy the binaries to the bin

```
sudo cp blurlock i3exit /usr/bin/
```
