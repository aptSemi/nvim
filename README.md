# nvim

Simple neovim configuration

A Note on Installation:

When cloning this repo, Packer plugin manager is NOT bootstrapped, thus will not auto install upon cloning.  You will need to go to the following github page: 

https://github.com/wbthomason/packer.nvim

NOTE** make sure to change the name of the user subdirectory (ex. semi in ~/.config/nvim/lua/semi) so a name of your choice!

and follow the installation instructions! (Don't worry, it's super easy)

Once complete,open file ~/.config/nvim/lua/{user}/plugin.lua with nvim and run :PackerSync and it will install and configure everything else.

