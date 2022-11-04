-- Plugins

require('user.plugins')             -- /lua/user/plugins.lua
require('user.options')             -- /lua/user/options.lua
require('Comment').setup()          -- default setup
require("bufferline").setup()       -- default setup
require('gitsigns').setup()         -- default setup
require("nvim-tree").setup()        -- default setup (change toggle keymap in /lua/user/keymaps.lua)
require('user.treesitter')          -- /lua/user/treesitter.lua
require('user.keymaps')             -- /lua/user/keymaps.lua
require('user.lualine')             -- /lua/user/lualine.lua
require('user.telescope')           -- /lua/user/telescope.lua
require("user.colorscheme")         -- /lua/user/colorscheme.lua (change colorschemes here)
