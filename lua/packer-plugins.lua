  -- Plugin Manager
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- file tree
  use 'preservim/nerdtree'

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
  
require('onedark').setup {
    style = 'warm'
}
  use {'navarasu/onedark.nvim' }






end)
