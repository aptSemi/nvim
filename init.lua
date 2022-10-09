-- Leader key is Spacebar
vim.g.mapleader = " "

-- Options
vim.o.termguicolors = true
vim.o.relativenumber = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.expandtab = true
vim.o.incsearch = true
vim.o.hidden = true
vim.o.smartindent = true
vim.o.number = true
vim.o.wrap = true
vim.o.mouse = "niv"
vim.o.ignorecase = true
vim.o.cursorline = true
vim.o.splitright = true

-- Plugins
require('packer-plugins')
require('lualine')
