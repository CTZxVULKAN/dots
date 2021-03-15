## Neofetch

![screenshot1](./screenshots/neofetch1.png)

### How do I use this config 🤔 ?

Once neofetch is installed copy the **config.conf** contents into your neofetch config folder.

>* The config folder is generally located in **~/.config** unless your distro is wierdly configured.
>* Neofetch will look for its config in the **.config/neofetch/config.conf** file. 
>* The config directory is **hidden** by default and you might need to create the **neofetch folder** in it with the file **config.conf**.

<br> 

### Troubles with displaying image 😰 ?
>* Make sure that **w3m** is installed in your system. w3m is essential as it serves as a backend to display the image. 
>* Change the path of the image. The neofetch config provided here contains the path of the image used by me which doesnot exist in your system.

Make sure to change 

``` html
image_source="/home/jishnu/.config/neofetch/artix.png"
```
to 

```html
image_sourcr="/home/your_path"
```
>* The most possible issue might be your terminal cannot display the image properly. If needed change the terminal.
Urxvt is among one of the terminals which is really good at handling images with w3m.
