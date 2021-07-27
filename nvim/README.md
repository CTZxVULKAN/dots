## NVIM Config

This config is based on [NvChad](https://github.com/siduck76/NvChad) with my own custom keybindings.
<br>
For more information about NvChad visit [here.](https://github.com/siduck76/NvChad/wiki#clone-my-setup)


### Install Insctructions 

```
./install.sh
```
> Execute the install script and everything should be installed fine by following the onscreen instructions.

<br>

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

```
vim.cmd([[autocmd BufWritePost plugins.lua source <afile> | PackerCompile]])

```
