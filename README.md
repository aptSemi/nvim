# nvim

Simple neovim configuration for anyone wanting to try out neovim, with common plugins installed.  However, it is recommended that you learn to set up neovim on your own, using lua, so you can customize it to your actual needs, and to learn how it actually works!
 
1. Make sure you have latest Neovim installed. (Use the link below as using your respective package manager may give you a grossly outdated version)

-- Neovim Installation GitHub --
https://github.com/neovim/neovim/wiki/Installing-Neovim 

2. clone repo in to your ~/.config directory

3. open neovim instance (nvim .)
 
**NOTE** Packer (the plugin manager) is bootstrapped and should automatically install the first time you open neovim after cloning the repository.

4. run :PackerSync to install all included plugins

5. run :TSUpdate to update Treesitter highlighting functionalities

6. Close all instances of neovim and reopen

**NOTE** If, after installing and updating, icons on nvim-tree do not look correct, it may be because you do not have a Nerd Font installed.  If not, follow either of the two links to install a Nerd Font of your choice:

https://www.nerdfonts.com/
https://github.com/ryanoasis/nerd-fonts (if using this link, go to "patched fonts" folder to find your font of choice)

That should be all that is required!  If you get a spam of errors upon first running :PackerSync, you may have to comment out all lines in init.lua file and sync each plugin one by one. This is very rare, but has been known to happen whenever breaking changes to a plugin have been introduced

**NOTE** If running in to treesitter compile issues on FEDORA, run the following command in terminal:
sudo dnf install gcc-c++


-- Links to plugin documentation --

packer plugin manager - https://github.com/wbthomason/packer.nvim-blankline
nvim-tree - https://github.com/nvim-tree/nvim-tree.lua 
nvim-web-devicons - https://github.com/nvim-tree/nvim-web-devicons
plenary - https://github.com/nvim-lua/plenary.nvim 
lualine - https://github.com/nvim-lualine/lualine.nvim
telescope - https://github.com/nvim-telescope/telescope.nvim
comment - https://github.com/numToStr/Comment.nvim
bufferline - https://github.com/akinsho/bufferline.nvim
toggleterm - https://github.com/akinsho/toggleterm.nvim
nvim-autopairs - https://github.com/windwp/nvim-autopairs
nvim-treesitter - https://github.com/nvim-treesitter/nvim-treesitter
indent-blankline - https://github.com/lukas-reineke/indent-blankline.nvim-blankline
gitsigns - https://github.com/lewis6991/gitsigns.nvim
vim-fugitive - https://github.com/tpope/vim-fugitive
lsp-zero - https://github.com/VonHeikemen/lsp-zero.nvim
