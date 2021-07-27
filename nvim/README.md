## NVIM Config

This config is based on [NvChad](https://github.com/siduck76/NvChad) with my own custom keybindings.
<br>
For more information about NvChad visit [here.](https://github.com/siduck76/NvChad/wiki#clone-my-setup)


### Install Insctructions 

```
./install.sh
```
> Execute the install script and everything should be installed fine by following the onscreen instructions.

### Packer.nvim 

-- You must run this or `PackerSync` whenever you make changes to your plugin configuration
-- Regenerate compiled loader file
:PackerCompile

-- Remove any disabled or unused plugins
:PackerClean

-- Clean, then install missing plugins
:PackerInstall

-- Clean, then update and install plugins
:PackerUpdate

-- Perform `PackerUpdate` and then `PackerCompile`
:PackerSync

-- Loads opt plugin immediately
:PackerLoad completion-nvim ale
