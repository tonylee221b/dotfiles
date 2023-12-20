-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Neotree
keymap.set("n", "<C-n>", "<CMD>Neotree toggle<CR>", opts)

-- shifting tabs
keymap.set("n", "<Tab>", "<CMD>bnext<CR>", opts)
keymap.set("n", "<S-Tab>", "<CMD>bprevious<CR>", opts)

-- nohighlight
keymap.set("n", "<leader>nh", "<CMD>nohl<CR>", opts)

-- Split window
keymap.set("n", "sh", "<CMD>split<CR>", opts)

keymap.set("n", "sv", "<CMD>vsplit<CR>", opts)
-- Diagnostic
keymap.set("n", "<C-k>", function()
  vim.diagnostic.goto_next()
end, opts)
