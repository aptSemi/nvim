local fn = vim.fn

-- automatically install Packer plugin manager --
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

-- autocommand that reloads neovim whenever you save the plugins.lua file --
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function(use)

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
use("nvim-treesitter/nvim-treesitter", {        -- highlights
        run = ":TSUpdate"
    })

-- lsp --
-- use 'williamboman/mason.nvim'
-- use 'williamboman/mason-lspconfig.nvim'
-- use 'neovim/nvim-lspconfig'                     -- language servers

-- completion --
use 'hrsh7th/nvim-cmp'                          -- completion
use 'hrsh7th/cmp-buffer'                        -- buffer completions
use 'hrsh7th/cmp-path'                          -- path completions

-- snippets --
use({"L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*"})

-- colorschemes --
use "ellisonleao/gruvbox.nvim"
use "savq/melange" 
use "lunarvim/horizon.nvim"

-- automatically set up your configuration after cloning packer.nvim --
-- put this at the end after all plugins --
  if packer_bootstrap then
    require('packer').sync()
  end
end)
