
local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


-- Press jj  to return to normal mode when in insert mode 
-- inoremap jj <ESC>
map('i', 'jj', '<ESC>')
-- Press nn to return to normal mode when in visual mode
-- vnoremap nn <ESC>
map('v', 'nn', '<ESC>')
-- Press jj when in Command mode, to go back to normal mode
-- cnoremap jj <ESC>
map('c', 'jj', '<ESC>')

-- Close tab within buffer's disappearing
map('n', 'mm', ':bd<CR>')

-- Unhighlight
-- map('n', '\\', ':nohl<CR>')

-- Open file browser
map('n', '<F12>', ':NvimTreeToggle<CR>')
map('n', '<F11>', ':NvimTreeFocus<CR>')

-- Scroll up and down half page and the cursor is in the middle
map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')

-- Buffer mappings
map('n', '<leader>1', ':BufferLineGoToBuffer 1<CR>')
map('n', '<leader>2', ':BufferLineGoToBuffer 2<CR>')
map('n', '<leader>3', ':BufferLineGoToBuffer 3<CR>')
map('n', '<leader>4', ':BufferLineGoToBuffer 4<CR>')
map('n', '<leader>5', ':BufferLineGoToBuffer 5<CR>')
map('n', '<leader>6', ':BufferLineGoToBuffer 6<CR>')
map('n', '<leader>8', ':BufferLineGoToBuffer 7<CR>')
map('n', '<leader>8', ':BufferLineGoToBuffer 8<CR>')
map('n', '<leader>9', ':BufferLineGoToBuffer 9<CR>')
map('n', '<leader>$', ':BufferLineGoToBuffer -1<CR>')
map('n', '<C-n>', ':BufferLineCycleNext<CR>')
map('n', '<C-p>', ':BufferLineCyclePrev<CR>')

-- Telescope mappings
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
