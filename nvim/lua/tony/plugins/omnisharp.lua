local pid = vim.fn.getpid()
local bin = "/Users/tony/.local/share/nvim/mason/packages/omnisharp-mono/run"

local g = vim.g

g.OmniSharp_popup_position = "peek"

vim.cmd([[
let g:omnisharp_server_stdio = 1
let g:OmniSharp_server_use_mono = 1
let g:OmniSharp_popup_options = {
\ 'winblend': 30,
\ 'winhl': 'Normal:Normal,FloatBorder:ModeMsg',
\ 'border': 'rounded',
\}
]])

return {
	cmd = { bin, "--languageserver", "--hostPID", tostring(pid) },
	root_dir = require("lspconfig").util.root_pattern("*.csproj", "*.sln"),
}
