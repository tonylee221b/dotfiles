if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

if has("nvim")
  Plug 'neovim/nvim-lspconfig'
  Plug 'tami5/lspsaga.nvim', { 'branch': 'nvim6.0' }
  Plug 'folke/lsp-colors.nvim'
  Plug 'L3MON4D3/LuaSnip'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'onsails/lspkind-nvim'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'windwp/nvim-autopairs'
  Plug 'windwp/nvim-ts-autotag'
  Plug 'preservim/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'

  "Colorscheme
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'nanotech/jellybeans.vim'
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'morhetz/gruvbox'

  " Git
  Plug 'tpope/vim-fugitive'

  Plug 'ianks/vim-tsx'
  " Plug 'w0rp/ale'
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
  Plug 'junegunn/goyo.vim'
  Plug 'junegunn/limelight.vim'
  " post install (yarn install | npm install) then load plugin only for editing supported files
  Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
endif

call plug#end()

