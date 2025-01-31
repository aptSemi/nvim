-- return {
--     "williamboman/mason.nvim",
-- mason.setup({
-- 			ui = {
-- 				icons = {
-- 					package_installed = "✓",
-- 					package_pending = "➜",
-- 					package_uninstalled = "✗",
-- 				},
-- 			},
-- 		})
--
-- 		mason_lspconfig.setup({
-- 			-- list of servers for mason to install
-- 			ensure_installed = {
-- 				"lua_ls",
-- 				"pyright",
-- 			},
-- 		}),
-- }

return {
  "williamboman/mason.nvim",
  cmd = "Mason",
  keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },
  build = ":MasonUpdate",
  opts_extend = { "ensure_installed" },
  opts = {
    ensure_installed = {
      "stylua",
      "shfmt",
    },
  },
  ---@param opts MasonSettings | {ensure_installed: string[]}
  config = function(_, opts)
    require("mason").setup(opts)
    local mr = require("mason-registry")
    mr:on("package:install:success", function()
      vim.defer_fn(function()
        -- trigger FileType event to possibly load this newly installed LSP server
        require("lazy.core.handler.event").trigger({
          event = "FileType",
          buf = vim.api.nvim_get_current_buf(),
        })
      end, 100)
    end)

    mr.refresh(function()
      for _, tool in ipairs(opts.ensure_installed) do
        local p = mr.get_package(tool)
        if not p:is_installed() then
          p:install()
        end
      end
    end)
  end,
}
