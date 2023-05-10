local telescope_status, telescope = pcall(require, "telescope")
if not telescope_status then
	return
end

local actions_status, actions = pcall(require, "telescope.actions")
if not actions_status then
	return
end

telescope.setup({
	defaults = {
		mappings = {
			i = {
				["<C-p>"] = actions.move_selection_previous,
				["<C-n>"] = actions.move_selection_next,
				["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
			},
		},
	},
})

telescope.load_extension("fzf")
