--  neovim configuration file of                               --
--    ____                 ________                            --
--   / __ \__  ____  __   /_  __/ /_  __  ______  ____  ____ _ --
--  / / / / / / / / / /    / / / __ \/ / / / __ \/ __ \/ __ `/ --
-- / /_/ / /_/ / /_/ /    / / / / / / /_/ / /_/ / / / / /_/ /  --
-- \___\_\__,_/\__, /    /_/ /_/ /_/\__,_/\____/_/ /_/\__, /   --
--            /____/                                 /____/    --
--                                                             --

require('vim-plug')
require('settings')
require('mappings')
require('lualine-config')
require('nvim-tree-config')
require('lsp-config.language-servers')
require('lsp-config.nvim-cmp')
-- require('null-ls-nvim')
require('nvim-colorizer')
require('treesitter-config')
-- require('alpha-nvim-config')
require('mason-nvim')
require('others')
require('lspsaga-nvim')

vim.cmd [[
       
    colorscheme purify

    au WinEnter * setl cursorline
    au WinLeave * setl nocursorline
    
    command! -nargs=0 Sw w !sudo tee % > /dev/null
    autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
    filetype on
    filetype plugin on
    set omnifunc=syntaxcomplete#Complete
]]
require('bufferline-config')
