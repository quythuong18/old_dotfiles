print("Hello Quy Thuong!")
require('settings')
require('vim-plug')
require('mappings')
require('lualine-config')
require('bufferline-config')
require('nvim-tree-config')
require('lsp-config.language-servers')
require('lsp-config.nvim-cmp')
require('nvim-colorizer')
require('treesitter-config')

-- colorscheme field
vim.cmd('colorscheme purify')


vim.cmd [[
    set winhighlight=Normal:MyNormal,NormalNC:MyNormalNC

    hi NormalNC guibg=xxx
    au WinEnter * setl cursorline
    au WinLeave * setl nocursorline

    set nofoldenable

    command! -nargs=0 Sw w !sudo tee % > /dev/null
]]
