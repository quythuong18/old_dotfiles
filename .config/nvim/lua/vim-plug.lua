local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

-- Themes
Plug 'tjdevries/colorbuddy.nvim' -- color buddy
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
Plug 'svrana/neosolarized.nvim'
Plug 'ChrisKempson/Tomorrow-Theme'

-- status bar
Plug 'nvim-lualine/lualine.nvim'
-- buffer bar
Plug('akinsho/bufferline.nvim', {tag = 'v3.*'})

-- Hexcode color background
Plug 'norcalli/nvim-colorizer.lua'

-- File browser
Plug 'nvim-tree/nvim-tree.lua'
-- For file icons
Plug 'nvim-tree/nvim-web-devicons'

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

-- Tree sitter
Plug('nvim-treesitter/nvim-treesitter', {
    ['do'] = function()
    vim.cmd('TSUpdate');
    end
})
-- Telescope is a highly extendable fuzzy finder over lists
Plug 'nvim-lua/plenary.nvim'
Plug('nvim-telescope/telescope.nvim', {  tag  = '0.1.0' })

-- Starting display
Plug 'goolord/alpha-nvim'

-- HTML autocompletion
Plug 'mattn/emmet-vim'
-- Mason nvim
Plug 'williamboman/mason.nvim'
-- Mason LSP config
Plug 'williamboman/mason-lspconfig.nvim'
-- Quick comment
Plug 'numToStr/Comment.nvim'
-- Transparent background
Plug 'xiyaowong/nvim-transparent'

vim.call('plug#end')

