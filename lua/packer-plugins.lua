  -- Packer Plugin Manager
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  --Other plugins
  use 'preservim/nerdtree'

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  


  -- Colorschemes
  use { "ellisonleao/gruvbox.nvim" }
  use {"savq/melange" }
  

require('onedark').setup {
    style = 'warm'
}
  use {'navarasu/onedark.nvim' }






end)
