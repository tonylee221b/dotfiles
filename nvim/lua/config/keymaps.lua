-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymaps = vim.keymap
local opts = { noremap = true, silent = true }

-- disable Modifier Key Mappings
keymaps.del({ "n", "i", "v" }, "<M-j>")
keymaps.del({ "n", "i", "v" }, "<M-k>")

-- Switch Tabs
keymaps.set("n", "<Tab>", "<CMD>bnext<CR>", opts)
keymaps.set("n", "<S-Tab>", "<CMD>bprev<CR>", opts)

-- No Highlight
keymaps.set("n", "<leader>nh", "<CMD>nohl<CR>", opts)

-- Split window
keymaps.set("n", "sh", "<CMD>split<CR>", opts)

keymaps.set("n", "sv", "<CMD>vsplit<CR>", opts)
-- Diagnostic
keymaps.set("n", "<C-k>", function()
  vim.diagnostic.goto_next()
end, opts)
