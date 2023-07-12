
local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- set the leader key
vim.g.mapleader = ' '

--                                                      ===NORMAL MODE===
-- Close tab within buffer's disappearing
map('n', 'mm', ':bd<CR>')
-- Save file
map('n', '<C-s>', ':w<CR>')
-- Copy all
map('n', '<C-a>', ':%y+<CR>')
map('v', '<C-c>', ':yank+<CR>')
-- clear search highlighting
map('n', '<leader>h', ':nohl<CR>')

-- Open file browser
map('n', '<leader>e', ':NvimTreeToggle<CR>')

-- Scroll up and down half page and the cursor is in the middle
map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')

-- Speech motions
map('n', '<leader><leader>', ':HopWord<CR>')

-- Bufferline mappings
map('n', '<C-n>', ':bnext<CR>')
map('n', '<C-p>', ':bprev<CR>')

-- Lspsaga
map('n', '<C-j>', ':Lspsaga diagnostic_jump_next<CR>')
map('n', 'K', ':Lspsaga hover_doc<CR>')
map('n', '<leader>rn', ':Lspsaga rename<CR>')
map('n', '<leader>ca', ':Lspsaga code_action<CR>')

-- Navigating split windows
map('n', '<C-h>', '<C-w>h')
map('n', '<C-l>', '<C-w>l')

-- Noice
map('n', '<leader>nh', ':Noice history<CR>')
map('n', '<leader>nl', ':Noice last<CR>')

--                                                      ===INSERT MODE===
-- switch to normal mode
map('i', 'jj', '<ESC>')
-- insert mode motions
map('i', '<C-l>', '<Right>')
map('i', '<C-j>', '<Down>')
map('i', '<C-h>', '<Left>')
map('i', '<C-k>', '<Up>')

-- save file
map('i', '<C-s>', '<ESC>:w<CR>')

-- Telescope mappings
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


