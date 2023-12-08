local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
	return
end

local keymap = vim.keymap -- for conciseness

-- enable keybinds only for when lsp server available
local on_attach = function(client, bufnr)
	-- keybind options
	local opts = { noremap = true, silent = true, buffer = bufnr }

	-- set keybinds
	keymap.set("n", "gf", "<cmd>Lspsaga lsp_finder<CR>", opts) -- show definition, references
	keymap.set("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts) -- got to declaration
	keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts) -- see definition and make edits in window
	keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts) -- go to implementation
	keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts) -- see available code actions
	keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts) -- smart rename
	keymap.set("n", "<leader>D", "<cmd>Lspsaga show_line_diagnostics<CR>", opts) -- show  diagnostics for line
	keymap.set("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts) -- show diagnostics for cursor
	keymap.set("n", "<C-j>", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts) -- jump to previous diagnostic in buffer
	keymap.set("n", "<C-k>", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts) -- jump to next diagnostic in buffer
	keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts) -- show documentation for what is under cursor
	keymap.set("n", "<leader>oi", "<cmd>lua require('jdtls').organize_imports()<CR>")
	keymap.set("n", "<leader>sr", "<cmd>lua require('toggleterm').exec('./gradlew bootRun')")
	keymap.set("n", "<leader>sb", "<cmd>lua require('toggleterm').exec('./gradlew bootJar')")
end

-- used to enable autocompletion (assign to every lsp server config)
local capabilities = cmp_nvim_lsp.default_capabilities()

-- Change the Diagnostic symbols in the sign column (gutter)
-- (not in youtube nvim video)
local signs = { Error = " ", Warn = " ", Hint = "ﴞ ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

local config = {
	on_attach = on_attach,
	capabilities = capabilities,
	cmd = {
		"/Users/tony/.local/share/nvim/mason/bin/jdtls",
		"-Declipse.application=org.eclipse.jdt.ls.core.id1",
		"-Dosgi.bundles.defaultStartLevel=4",
		"-Declipse.product=org.eclipse.jdt.ls.core.product",
		"-Dlog.protocol=true",
		"-Dlog.level=ALL",
		"-Xmx1g",
		"--add-modules=ALL-SYSTEM",
		"--add-opens",
		"java.base/java.util=ALL-UNNAMED",
		"--add-opens",
		"java.base/java.lang=ALL-UNNAMED",
		"--jvm-args",
		"-javaagent:/Users/tony/.local/share/nvim/mason/share/jdtls/lombok.jar",
		"-jar",
		"/Users/tony/.local/share/nvim/mason/share/jdtls/plugins/org.eclipse.equinox.launcher.jar",
		"-configuration",
		"/Users/tony/.local/share/nvim/mason/share/jdtls/config/",
		"-data",
		"/Users/tony/.cache/jdtls/workspace/",
	},
	root_dir = require("jdtls.setup").find_root({ ".git", "gradlew" }),
}

require("jdtls").start_or_attach(config)
