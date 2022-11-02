
-- Plugins

require('user.plugins')             -- /lua/user/plugins.lua
require('user.options')             -- /lua/user/options.lua
require('user.lualine')             -- /plugin/lualine.lua
require('Comment').setup() 
require("bufferline").setup()
require("nvim-tree").setup()
--require('user.treesitter')           -- /lua/user/treesitter.lua
require('user.keymaps')             -- /lua/user/keymaps.lua
require('user.lualine')             -- /plugin/lualine.lua
require("user.colorscheme")         -- /lua/user/colorscheme.lua (change colorschemes here)
