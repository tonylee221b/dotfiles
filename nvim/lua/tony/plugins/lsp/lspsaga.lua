local status, saga = pcall(require, "lspsaga")
if not status then
	return
end

saga.setup({
	move_in_saga = { prev = "<C-p>", next = "<C-n>" },
	finder_action_keys = {
		open = "<CR>",
	},
	definition_action_keys = {
		edit = "<CR>",
	},
})
