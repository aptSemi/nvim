-- Plugins
--
require('semi.plugins')             -- /lua/semi/plugins.lua
require('semi.options')             -- /lua/semi/options.lua
--require('semi.keymaps')             -- /lua/semi.keymaps.lua
require('semi.lualine')             -- /plugin/lualine.lua
require('Comment').setup() 
require("bufferline").setup{}
require("nvim-tree").setup()

require("semi.colorscheme")         -- /lua/semi/colorscheme.lua (change colorschemes here)
