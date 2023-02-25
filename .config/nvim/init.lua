--print("Hello Quy Thuong!")
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
require('alpha-nvim-config')



vim.cmd [[
    colorscheme purify
    set winhighlight=Normal:MyNormal,NormalNC:MyNormalNC
    
    au WinEnter * setl cursorline
    au WinLeave * setl nocursorline
    
    
    command! -nargs=0 Sw w !sudo tee % > /dev/null
]]

