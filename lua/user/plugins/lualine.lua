return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status") -- to configure lazy pending updates count

    local colors = {
      fg = "#eeffff",
      bg = "#263238",
      blue = "#82aaff",
      green = "#c3e88d",
      purple = "#c792ea",
      red1 = "#f07178",
      red2 = "#ff5370",
      yellow = "#ffcb6b",
      gray1 = "#314549",
      gray2 = "#2E3C43",
      gray3 = "#515559",
    }

    local my_lualine_theme = {
      normal = {
        a = { fg = colors.bg, bg = colors.blue, gui = "bold" },
        b = { fg = colors.fg, bg = colors.gray3 },
        c = { fg = colors.fg, bg = colors.gray2 },
      },
      insert = {
        a = { fg = colors.bg, bg = colors.green, gui = "bold" },
        b = { fg = colors.fg, bg = colors.gray3 },
      },
      visual = {
        a = { fg = colors.bg, bg = colors.purple, gui = "bold" },
        b = { fg = colors.fg, bg = colors.gray3 },
      },
      replace = {
        a = { fg = colors.bg, bg = colors.red1, gui = "bold" },
        b = { fg = colors.fg, bg = colors.gray3 },
      },
      inactive = {
        a = { fg = colors.fg, bg = colors.bg, gui = "bold" },
        b = { fg = colors.fg, bg = colors.bg },
        c = { fg = colors.fg, bg = colors.gray2 },
      },
    }

    -- configure lualine with modified theme
    lualine.setup({
      options = {
        theme = my_lualine_theme,
      },
      sections = {
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#ff9e64" },
          },
          { "encoding" },
          { "fileformat" },
          { "filetype" },
        },
      },
    })
  end,
}
