local status, vf = pcall(require, "vim-fugitive")
if not status then
	return
end

vf.setup({})
