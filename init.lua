-- Plugins
--
require('user.plugins')             -- /lua/semi/plugins.lua
require('user.options')             -- /lua/semi/options.lua
--require('user.keymaps')             -- /lua/semi.keymaps.lua
require('user.lualine')             -- /plugin/lualine.lua
require('Comment').setup() 
require("bufferline").setup{}
require("nvim-tree").setup()
--require('user.treesitter)
require("user.colorscheme")         -- /lua/semi/colorscheme.lua (change colorschemes here)
