local status, null_ls = pcall(require, "null-ls")
if not status then
	return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local sources = {
	formatting.gofumpt,
	formatting.goimports,
	formatting.prettierd,
	formatting.stylua,
	formatting.eslint_d,
	diagnostics.eslint_d.with({
		condition = function(utils)
			return utils.root_has_file(".eslintrc.json")
		end,
		diagnostics_format = "[eslint] #{m}\n(#{c})",
	}),
	-- diagnostics.eslint.with({
	-- 	condition = function(utils)
	-- 		return utils.root_has_file(".eslintrc.json")
	-- 	end,
	-- }),
}

null_ls.setup({
	sources = sources,
	on_attach = function(current_client, bufnr)
		if current_client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format({
						filter = function(client)
							--  only use null-ls for formatting instead of lsp server
							return client.name == "null-ls"
						end,
						bufnr = bufnr,
					})
				end,
			})
		end
	end,
})
