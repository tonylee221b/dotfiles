local status, nt = pcall(require, "nvim-tree")
if not status then
	return
end

-- recommended settings -> no netrw
vim.g.loaded = true
vim.g.loaded_netrwPlugin = true

nt.setup({
	actions = {
		open_file = {
			window_picker = {
				enable = false,
			},
			quit_on_open = true,
		},
	},
})
