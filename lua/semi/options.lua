-- Essentials
vim.g.mapleader = " "

-- Behavior
vim.opt.hidden = true                       -- do not unload buffer when abandoned
vim.opt.splitright = true                   -- force vertical splits to the right
vim.opt.splitbelow = true                   -- force horizontal splits to go below current window
vim.opt.backup = false                      -- creates backup file (NO!)
vim.opt.swapfile = false                    -- create swap file (NO!)
vim.opt.updatetime = 50                     -- better update time (default 4000 ms = 4 sec)
vim.opt.wildmenu = true                     -- tab complete on commandline
vim.opt.inccommand = "nosplit"              -- preview %s commands live as they're being typed
vim.opt.belloff = "all"                     -- NO BELLS!!!
vim.opt.errorbells = false                  -- no annoying bells!
vim.opt.clipboard - "unnamedplus"           -- allow nvim to access system clipboard
--vim.opt.undofile = true                     -- undo file?  Yes!  (for future builds; currently not in use)

-- Look and Feel
vim.opt.number = true                       -- set numbered lines
vim.opt.relativenumber = true               -- set relative numbered lines
vim.opt.mouse = "a"                         -- mouse support "a" = all modes
vim.opt.wrap = true                         -- line wraps instead of going off screen
vim.opt.linebreak = true                    -- companion to 'wrap", do not split words
vim.opt.cursorline = true                   -- highlight the current line
vim.opt.fileencoding = "utf-8"              -- the encoding written to file

-- Searching
vim.opt.smartcase = true                    -- no ignore case when pattern has upper-case
vim.opt.ignorecase = true                   -- ignore case in search patterns
vim.opt.incsearch = true                    -- highlight match while typing search pattern
--vim.opt.hlsearch = true                     -- highlight matching text

-- Indentation
vim.opt.tabstop = 4                         -- insert 4 (or 2) spaces for a tab
vim.opt.softtabstop = 4                     -- number of spaces TAB uses while editing
vim.opt.smarttab = true                     -- <TAB> at start of line behaves as expected
vim.opt.expandtab = true                    -- converts tab to spaces
vim.opt.smartindent = true                  -- make indenting smarter again
vim.opt.autoindent = true                   -- continue indentation to new line
--vim.opt.shiftwidth = 4                      -- >>, << shift line by 4 spaces

-- Colors
vim.opt.termguicolors = true                -- set term gui colors (most terminals support this)
