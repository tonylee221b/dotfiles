return {
  "williamboman/mason.nvim",
  opts = function(_, opts)
    vim.list_extend(opts.ensure_installed, {
      "stylua",
      "luacheck",
      "typescript-language-server",
      "css-lsp",
      "gopls",
      "goimports",
      "gofumpt",
      "gdtoolkit",
      "svelte-language-server",
      "html-lsp",
      "jdtls",
    })
  end,
}
