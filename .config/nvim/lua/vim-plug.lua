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
Plug 'NTBBloodbath/doom-one.nvim'
Plug 'sainnhe/gruvbox-material'
Plug 'rktjmp/lush.nvim'
Plug 'uloco/bluloco.nvim'
Plug 'Mofiqul/dracula.nvim'
Plug('catppuccin/nvim', { as = 'catppuccin' })
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
Plug 'nvim-treesitter/nvim-treesitter-textobjects'

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
-- For lsp's UI
Plug 'kkharji/lspsaga.nvim'
-- null-ls
Plug 'jose-elias-alvarez/null-ls.nvim'

-- For neovim GUI
Plug 'folke/noice.nvim'
Plug 'MunifTanjim/nui.nvim'
Plug 'rcarriga/nvim-notify'

-- Markdown preview
Plug 'iamcco/markdown-preview.nvim'

-- Indentation guides
Plug 'lukas-reineke/indent-blankline.nvim'
-- Speech motion
Plug 'phaazon/hop.nvim'

-- ========================================================END===================================
vim.call('plug#end')
