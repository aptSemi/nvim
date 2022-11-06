local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
	return
end

toggleterm.setup{
  size = 80,
  open_mapping = [[<c-t>]],
  hide_numbers = true,
  autochdir = true,           -- when nvim changes current dir, terminal will change it's dir when next opened
  shade_filetypes = {},
  start_in_insert = true,
  insert_mappings = true,
  persist_size = true,
  direction = 'vertical',
  close_on_exit = true,
  shell = vim.o.shell,
}
