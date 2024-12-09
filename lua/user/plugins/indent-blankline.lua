return {
  "lukas-reineke/indent-blankline.nvim",
  tag = "v3.8.2", -- remove tag & enabled when a working updated version is released!
  enabled = true,
  event = { "BufReadPre", "BufNewFile" },
  main = "ibl",
  -- indent = { highlight = highlight },
  opts = {
    indent = { char = "┊" },
  },
}
