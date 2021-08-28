## NVIM Config

This config is based on [NvChad](https://github.com/siduck76/NvChad) with my own custom keybindings & tweaks.
<br>
For more information about NvChad visit [here.](https://github.com/siduck76/NvChad/wiki#clone-my-setup)

### Files modified : 
* [bufferline.lua](https://github.com/CTZxVULKAN/dots/blob/main/nvim/lua/plugins/configs/bufferline.lua)
* [dashboard.lua](https://github.com/CTZxVULKAN/dots/blob/main/nvim/lua/plugins/configs/dashboard.lua)
* [icons.lua](https://github.com/CTZxVULKAN/dots/blob/main/nvim/lua/plugins/configs/icons.lua)
* [nvimtree.lua](https://github.com/CTZxVULKAN/dots/blob/main/nvim/lua/plugins/configs/nvimtree.lua)
* [statusline.lua](https://github.com/CTZxVULKAN/dots/blob/main/nvim/lua/plugins/configs/statusline.lua)
* [mappings.lua](https://github.com/CTZxVULKAN/dots/blob/main/nvim/lua/core/mappings.lua)
* [options.lua](https://github.com/CTZxVULKAN/dots/blob/main/nvim/lua/core/options.lua)
* [pluginList](https://github.com/CTZxVULKAN/dots/blob/main/nvim/lua/plugins/init.lua)


### Install Config 

> Copy this folder in your `.config` ( remove pre-existing one ) & run Packer

```
cp dots/nvim/ ~/.config/nvim && nvim +PackerSync
```

### Install Dependencies 
* **pynvim** - python provider for neovim
* **neovim** - node js provider for neovim
* **xsel** - clipboard manager allows copy/paste globally
* **ripgrep** - live grep functionality

> Run the following commands to install all dependencies. Use command `:checkhealth` to check wether all dependencies are installed succesfully.
```
sudo pacman -S xsel ripgrep
pip install pynvim
npm i -g neovim / yarn global add neovim
``` 
### Packer.nvim (Plugin Manager)

* -- You must run this or `PackerSync` whenever you make changes to your plugin configuration

* -- Regenerate compiled loader file
`:PackerCompile`

* -- Remove any disabled or unused plugins
`:PackerClean`

* -- Clean, then install missing plugins
`:PackerInstall`

* -- Clean, then update and install plugins
`:PackerUpdate`

* -- Perform `PackerUpdate` and then `PackerCompile`
`:PackerSync`

* -- Loads opt plugin immediately
`:PackerLoad `

> You can configure Neovim to automatically run :PackerCompile whenever plugins.lua is updated with an autocommand: placed in the `plugins.lua`.
For more information regarding packer visit [here.](https://github.com/wbthomason/packer.nvim)
```
vim.cmd([[autocmd BufWritePost plugins.lua source <afile> | PackerCompile]])
```

### Install Intellisense 
> To check available languages use :LspInstall `<Tab>`
```
:LspInstall python json cpp html typescript css bash lua rust
```
### Install code formatters 
> For information visit [here.](https://github.com/sbdchd/neoformat#supported-filetypes)
```
sudo npm i -g prettier
```
### Quick Keybindings

| Fucntion     | Binding        |
|--------------|----------------|
| Escape  | Ctrl + c       |
| New file     | Space + f + n  |
| Save file    | Ctrl + s       |
| Save & Quit  | Ctrl + q       |
| Save & Quit buffer   | Ctrl + x       |
| Copy all   | Ctrl + a      |
| File Explorer  | Space + f + e     |
| Switch Buffers | Tab / Shift + Tab      |
| Format / Prettify code | Space + f + m    |
| Rename all instances | Space + r + n   |


### Fuzzyfinder Bindings

| Fucntion     | Binding        |
|--------------|----------------|
| Find files | Space + f  + f    |
| Search words | Space + f + w |
| Browse Commits | Space + cm      |
| Browse Tabs | Space + f + b     |


### File Explorer Bindings

| Fucntion     | Binding        |
|--------------|----------------|
| Create new file in focused directory  | a       |
| Delete focused file  | d       |
| Rename focused file  | r   |
| Toggle hidden | H/ Shift + h |
