local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

-- Themes
Plug 'tanvirtin/monokai.nvim'
Plug 'joshdick/onedark.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'jnurmine/Zenburn'
Plug 'sainnhe/everforest'
Plug 'sainnhe/sonokai'
Plug('sonph/onehalf', {rtp = 'vim/'})
Plug 'rakr/vim-one'
Plug 'morhetz/gruvbox'
Plug 'junegunn/seoul256.vim'
Plug 'tomasiser/vim-code-dark'
Plug('kyoz/purify', {rtp = 'vim' })
Plug 'vim-python/python-syntax'
Plug 'EdenEast/nightfox.nvim' 

-- status bar
Plug 'nvim-lualine/lualine.nvim'
-- buffer bar
Plug('akinsho/bufferline.nvim', { tag = 'v3.*' })

-- Hexcode color background
Plug 'norcalli/nvim-colorizer.lua'

-- File browser
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons' -- optional, for file icons

-- Autocomplete
Plug 'jiangmiao/auto-pairs'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

-- Internal Terminal
Plug 'voldikss/vim-floaterm'

-- LSP config
Plug 'neovim/nvim-lspconfig'

-- Tiny plugin adds vscode-like pictograms to neovim built-in lsp
Plug 'onsails/lspkind.nvim'

-- Write file with sudo
Plug 'lambdalisue/suda.vim'



vim.call('plug#end')
