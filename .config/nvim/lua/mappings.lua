
local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- set the leader key
vim.g.mapleader = ' '


-- Press jj  to return to normal mode when in insert mode 
-- inoremap jj <ESC>
map('i', 'jj', '<ESC>')

-- Close tab within buffer's disappearing
map('n', 'mm', ':bd<CR>')

-- Save file
map('n', '<C-s>', ':w<CR>')

-- clear search highlighting
map('n', '<leader>h', ':nohl<CR>')

-- Unhighlight
-- map('n', '\\', ':nohl<CR>')

-- Open file browser
map('n', '<leader>e', ':NvimTreeToggle<CR>')

-- Scroll up and down half page and the cursor is in the middle
map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')

map('n', 'gp', 'gT')

-- Telescope mappings
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- Bufferline mappings
vim.keymap.set('n', '<C-n>', ':bnext<CR>', {silent = true})
vim.keymap.set('n', '<C-p>', ':bprev<CR>', {silent = true})
