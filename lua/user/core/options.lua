vim.cmd("let g:netrw_liststyle = 3")

-- Variables
local o = vim.opt

-- Behavior
o.hidden = true                       -- do not unload buffer when abandoned
o.splitright = true                   -- force vertical splits to the right
o.splitbelow = true                   -- force horizontal splits to go below current window
o.backup = false                      -- creates backup file (NO!)
o.swapfile = false                    -- create swap file (NO!)
o.updatetime = 50                     -- better update time (default 4000 ms = 4 sec)
o.wildmenu = true                     -- tab complete on commandline
o.inccommand = "nosplit"              -- preview %s commands live as they're being typed
o.belloff = "all"                     -- NO BELLS!!!
o.errorbells = false                  -- no annoying bells!
--o.clipboard = "unnamedplus"           -- allow nvim to access system clipboard
o.clipboard:append("unnamedplus")      -- allow nvim to access system clipboard
o.backspace = "indent,eol,start"      -- allow backspace on indent, eol, insert mode start pos
--o.undofile = true                     -- undo file?  Yes!  (for future builds; currently not in use)

-- Look and Feel
o.number = true                       -- set numbered lines
o.relativenumber = true               -- set relative numbered lines
o.mouse = "a"                         -- mouse support "a" = all modes
o.wrap = true                         -- line wraps instead of going off screen
o.linebreak = true                    -- companion to 'wrap", do not split words
o.cursorline = true                   -- highlight the current line
o.fileencoding = "utf-8"              -- the encoding written to file
o.scrolloff = 8                       -- never less than 8 lines from bottom (unless at EOF)
o.termguicolors = true
o.background = "dark"                 -- colorschemes that can be light or dark will be made dark

-- Searching
o.smartcase = true                    -- no ignore case when pattern has upper-case
o.ignorecase = true                   -- ignore case in search patterns
o.incsearch = true                    -- highlight match while typing search pattern
o.hlsearch = false                    -- highlight matching text

-- Indentation
o.shiftwidth = 2                      -- >>, << shift line by 4 spaces
o.tabstop = 2                         -- insert 4 (or 2) spaces for a tab
o.softtabstop = 2                     -- number of spaces TAB uses while editing
o.smarttab = true                     -- <TAB> at start of line behaves as expected
o.expandtab = true                    -- converts tab to spaces
o.smartindent = true                  -- make indenting smarter again
o.autoindent = true                   -- continue indentation to new line

-- Colors
o.termguicolors = true                -- set term gui colors (most terminals support this)
