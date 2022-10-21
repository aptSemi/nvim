  -- Plugin Manager
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- icons
  use 'nvim-tree/nvim-web-devicons'

  -- file tree
  --use 'preservim/nerdtree'

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

  -- file tabs
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}


  -- Colorschemes
  use { "ellisonleao/gruvbox.nvim" }
  use {"savq/melange" }
  
end)
