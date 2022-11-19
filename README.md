# nvim

Simple neovim configuration

THIS IS A WORK IN PROGRESS!  Will be updated once I get it to where I want it

1. clone repo in to your ~/.config directory

2. open neovim instance (nvim .)
  **note** Packer (the plugin manager) is bootstrapped and should automatically install the first time you open neovim after cloning the repository.

3. run :PackerSync to install all included plugins

4. run :TSUpdate to update Treesitter highlighting functionalities

That should be all that is required!  If you get a spam of errors upon first running :PackerSync, you may have to comment out all lines in init.lua file and sync each plugin one by one. This is very rare, but has been known to happen whenever breaking changes to a plugin have been introduced

**NOTE: If running in to treesitter compile issues on FEDORA, run the following command in terminal:
sudo dnf install gcc-c++
