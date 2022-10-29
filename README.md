# nvim

Simple neovim configuration

A Note on Installation:

When cloning this repo, Packer plugin manager is NOT bootstrapped, thus will not auto install upon cloning.  You will need to go to the following github page: 

https://github.com/wbthomason/packer.nvim

and follow the installation instructions! (Don't worry, it's super easy)
Once complete, open nvim and run :PackerSync and it will install and configure everything else.

Side NOTE:  If you receive any errors related to "onedark" then the OneDark theme is not properly loading and will need to be deleted from the lua/packer-plugins.lua file

This is the block that should be deleted:

require('onedark').setup {
      style = 'warm'
  }
    use {'navarasu/onedark.nvim' }
