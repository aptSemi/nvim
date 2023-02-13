local fn = vim.fn

-- automatically install packer
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  print("Installing packer close and reopen Neovim...")
end

-- autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- have packer use a popup window
packer.init({
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'single' })
      end
    }
  }
)

-- install your plugins here
return packer.startup(function(use)

-- plugins --
use 'wbthomason/packer.nvim'                    -- plugin manager (packer can manage itself!)
use 'nvim-tree/nvim-web-devicons'               -- icons
use 'nvim-tree/nvim-tree.lua'                   -- file tree
use 'nvim-lua/plenary.nvim'                     -- support used by lots of plugins
use 'nvim-lualine/lualine.nvim'                 -- status line
use 'numToStr/Comment.nvim'                     -- easy commenting
use 'akinsho/bufferline.nvim'                   -- buffers (sorta like tabs, but not)
use 'nvim-telescope/telescope.nvim'             -- fuzzy finder
use 'lewis6991/gitsigns.nvim'                   -- show git changes within file/buffer
use 'akinsho/toggleterm.nvim'                   -- in nvim terminal
use 'windwp/nvim-autopairs'                     -- auto close brackets, etc
use 'lukas-reineke/indent-blankline.nvim'       -- indent-blankline to make things look cool
use 'tpope/vim-fugitive'                        -- awesome git commands within neovim
use("nvim-treesitter/nvim-treesitter", {        -- highlights
        run = ":TSUpdate"
    })

  use {
  'VonHeikemen/lsp-zero.nvim',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    {'saadparwaiz1/cmp_luasnip'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-nvim-lua'},

    -- Snippets
    {'L3MON4D3/LuaSnip'},
    {'rafamadriz/friendly-snippets'},
  }
}

-- colorschemes --
use 'ellisonleao/gruvbox.nvim'
use 'savq/melange'
use 'lunarvim/horizon.nvim'
use { "catppuccin/nvim", as = "catppuccin" }
use 'EdenEast/nightfox.nvim'
use 'sainnhe/everforest'
use 'sainnhe/edge'
use 'sainnhe/sonokai'
use 'vigoux/oak'
use 'Matsuuu/pinkmare'
use 'navarasu/onedark.nvim'
use 'FrenzyExists/aquarium-vim'

-- automatically set up your configuration after cloning packer.nvim
  -- put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)
