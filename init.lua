-- Plugins
require('user.plugins')             -- /lua/user/plugins.lua
require('user.options')             -- /lua/user/options.lua
require('user.keymaps')             -- /lua/user/keymaps.lua
require('user.colorscheme')         -- /lua/user/colorscheme.lua (change colorschemes here)
require('nvim-tree').setup()        -- default setup (change toggle keymap in /lua/user/keymaps.lua)
require('Comment').setup()          -- default (default is good)
require('bufferline').setup()       -- default
require('user.lualine')             -- /lua/user/lualine.lua
require('user.telescope')           -- /lua/user/telescope.lua
require('user.toggleterm')          -- /lua/user/toggleterm.lua
require('user.treesitter')          -- /lua/user/treesitter.lua
require('user.cmp')                 -- /lua/user/cmp.lua
-- require('gitsigns').setup()         -- CAUSING ERRORS?? default config
