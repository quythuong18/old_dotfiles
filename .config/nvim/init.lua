require('settings')
require('vim-plug')
require('mappings')
require('lualine-config')
require('nvim-tree-config')
require('bufferline-config')
require('lsp-config.language-servers')
require('lsp-config.nvim-cmp')
require('nvim-colorizer')


vim.cmd('colorscheme one')
vim.cmd [[
    highlight VertSplit guibg=DarkGrey guifg=Black ctermbg=6 ctermfg=0

    set winhighlight=Normal:MyNormal,NormalNC:MyNormalNC

    hi NormalNC guibg=#292f3d
    au WinEnter * setl cursorline
    au WinLeave * setl nocursorline
]]
