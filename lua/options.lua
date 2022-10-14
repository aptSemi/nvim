

  -- General Options
  --
  vim.opt.termguicolors = true                -- set term gui colors (most terminals support this)
  vim.opt.number = true                       -- set numbered lines
  vim.opt.relativenumber = true               -- set relative numbered lines
  vim.opt.tabstop = 4                         -- insert 4 (or 2) spaces for a tab
  vim.opt.softtabstop = 4                     -- number of spaces TAB uses while editing
  vim.opt.expandtab = true                    -- converts tab to spaces
  vim.opt.incsearch = true                    -- highlight match while typing search pattern
  vim.opt.hidden = true                       -- do not unload buffer when abandoned
  vim.opt.smartindent = true                  -- make indenting smarter again
  vim.opt.wrap = true                         -- line wraps instead of going off screen
  vim.opt.mouse = "a"                         -- mouse support "a" = all modes
  vim.opt.smartcase = true                    -- no ignore case when pattern has upper-case
  vim.opt.ignorecase = true                   -- ignore case in search patterns
  vim.opt.cursorline = true                   -- highlight the current line
  vim.opt.splitright = true                   -- force vertical splits to the right
  vim.opt.backup = false                      -- creates backup file (NO!)
  vim.opt.fileencoding = "utf-8"              -- the encoding written to file
  vim.opt.swapfile = false                    -- create swap file (NO!)
  vim.opt.updatetime = 50                     -- better update time (default 4000 ms = 4 sec)
