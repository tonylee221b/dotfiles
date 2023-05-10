vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- utility
	use("nvim-lua/plenary.nvim")

	-- colorscheme
	use("rose-pine/neovim")

	-- tmux && split window navigation
	use("christoomey/vim-tmux-navigator")

	-- window maximizer
	use("szw/vim-maximizer")

	-- essential plugins
	use("tpope/vim-surround")
	use("vim-scripts/ReplaceWithRegister")

	-- commenting with gc
	use("numToStr/Comment.nvim")

	-- file explorer
	use("nvim-tree/nvim-tree.lua")

	-- icons
	use("kyazdani42/nvim-web-devicons")

	-- lualine
	use("nvim-lualine/lualine.nvim")

	-- fuzzy finding
	use("nvim-telescope/telescope.nvim")
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })

	-- autocompletion
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")

	-- snippets
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")

	-- LSP management
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	-- LSP servers config
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp")
	use({ "glepnir/lspsaga.nvim", branch = "main" })
	use("onsails/lspkind.nvim")

	-- Formatting && Linting
	use("jose-elias-alvarez/null-ls.nvim")
	use("jayp0521/mason-null-ls.nvim")

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})

	-- Auto closing
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")

	-- gitsigns
	use("lewis6991/gitsigns.nvim")

	-- colorizer
	use("norcalli/nvim-colorizer.lua")

	-- bufferline
	-- using packer.nvim
	use({ "akinsho/bufferline.nvim", tag = "v3.*" })

	-- C#
	use("omnisharp/omnisharp-vim")

	-- Live Server
	use("turbio/bracey.vim")

	-- Indent Guide
	use("lukas-reineke/indent-blankline.nvim")

	-- Futter && dart
	use("dart-lang/dart-vim-plugin")
	use("akinsho/flutter-tools.nvim")
end)
