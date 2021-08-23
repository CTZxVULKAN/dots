## LockScreen

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
