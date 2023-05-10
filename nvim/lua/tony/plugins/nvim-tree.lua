local status, nt = pcall(require, "nvim-tree")
if not status then
	return
end

-- recommended settings -> no netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

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

local function open_nvim_tree()
	require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
