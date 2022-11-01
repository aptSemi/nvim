local fn = vim.fn

-- automatically install Packer plugin manager
local ensure_packer = function()
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])


-- plugin Manager (packer can manage itself)
return require('packer').startup(function(use)
use 'wbthomason/packer.nvim'

-- icons
use 'nvim-tree/nvim-web-devicons'

-- file Tree
use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
}

-- status line
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}

-- line commenting
use {
  'numToStr/Comment.nvim',
  config = function()
      require('Comment').setup()
  end
} 

-- plenary = useful lua functions used by lots of plugins
use 'nvim-lua/plenary.nvim'

-- treesitter
use 'nvim-treesitter/nvim-treesitter'

-- file tabs (kinda like tabs)
use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

-- colorschemes
use "ellisonleao/gruvbox.nvim"
use "savq/melange" 
use "lunarvim/horizon.nvim"

-- automatically set up your configuration after cloning packer.nvim
-- put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
