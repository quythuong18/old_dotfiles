
local set = vim.opt
local g = vim.g

set.expandtab = true
set.smarttab = true
set.shiftwidth = 4
set.tabstop = 4
set.syntax = 'on'

-- highlight search 
set.hlsearch = true
-- Case insensitive searching
set.ignorecase = true
set.smartcase = true

-- when using vsplit or split the new window will be at the right or below the current window
set.splitright = true
set.splitbelow = true

set.wrap = false
set.scrolloff = 5
set.fileencoding = 'utf-8'
set.number = true
set.mouse = 'a'
set.relativenumber = true
set.cursorline = true
set.hidden = true

set.termguicolors = true
set.background = 'dark'

set.filetype = 'set'

-- Sync clipboard between OS and nvim
-- set.clipboard = 'unnamedplus'

-- Save undo history
set.undofile = true
-- Set the height of pop-up autocomplete menu
set.pumheight = 10

-- Set completeopt to have a better completion experience
set.completeopt = 'menu,menuone,noselect'

-- Auto break to a soft-line if the line too long with the width of neovim windows
set.wrap = true

-- Internal terminal
g.floaterm_keymap_new = '<F7>'
g.floaterm_keymap_prev = '<F8>'
g.floaterm_keymap_kill = '<F3>'
g.floaterm_keymap_hide = '<F4>'
g.floaterm_position = 'topright'
g.floaterm_width = 0.5
g.floaterm_height = 35


-- Transparent
g.transparent_enabled = 1
g.transparent_factor = 50

-- Emmet
g.user_emmet_mode = 'a'
g.user_emmet_leader_key = ','

g.mkdp_browser = 'firefox'
