## NVIM Config

This config is based on [NvChad](https://github.com/siduck76/NvChad) with my own custom keybindings.
<br>
For more information about NvChad visit [here.](https://github.com/siduck76/NvChad/wiki#clone-my-setup)


### Install Insctructions

> Execute the install script and everything should be installed fine by following the onscreen instructions.

```
./install.sh
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

### Quick Keybindings

| Fucntion     | Binding        |
|--------------|----------------|
| New file     | Space + f + n  |
| Save file    | Ctrl + s       |
| Save & Quit  | Ctrl + q       |
| Copy all   | Ctrl + a      |
| Save & Quit buffer   | Ctrl + b       |
| Escape  | Ctrl + c       |
| File Viewer  | Space + e      |
| Browse Files | Space + f      |
| Browse Commits | Space + cm      |
| Switch Buffers | Tab / Shift + Tab      |
| Format / Prettify code | Space + fm    |
