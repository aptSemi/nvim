-- Leader key is Spacebar
vim.g.mapleader = " "


-- Plugins
require('packer-plugins')  -- lua/packer-plugins.lua
require('lualine')         -- plugin/lualine.lua
require('Comment').setup() 
require('options')        -- lua/options.lua

