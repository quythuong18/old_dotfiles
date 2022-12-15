

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

-- Press ff when in normal mode, to save file
--nnoremap ff :w<CR>
map('n', 'ff', ':w<CR>')

-- Close tab within buffer's disappearing
map('n', 'mm', ':bd<CR>')

-- Unhighlight
map('n', '\\', ':nohl<CR>')

-- Press ctrl + n to move to the next tab
map('n', '<C-n>', ':tabnext<CR>')
map('n', '<C-p>', ':tabprevious<CR>')

-- Open file browser
map('n', '<F12>', ':NvimTreeToggle<CR>')
map('n', '<F11>', ':NvimTreeFocus<CR>')

-- Scroll up and down half page and the cursor is in the middle
map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')
