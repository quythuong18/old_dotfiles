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
require('alpha-nvim-config')
require('mason-nvim')
require('others')



vim.cmd [[
    colorscheme gruvbox
    set winhighlight=Normal:MyNormal,NormalNC:MyNormalNC
    highlight Normal ctermbg=none guibg=none
    
    au WinEnter * setl cursorline
    au WinLeave * setl nocursorline
    
    command! -nargs=0 Sw w !sudo tee % > /dev/null
]]

