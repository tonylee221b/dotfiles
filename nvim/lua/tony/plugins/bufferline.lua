local status, bl = pcall(require, "bufferline")
if not status then
	return
end

bl.setup({})
