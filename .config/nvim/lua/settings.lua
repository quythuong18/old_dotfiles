
local set = vim.opt
local g = vim.g

set.expandtab = true
set.smarttab = true
set.shiftwidth = 4
set.tabstop = 4
set.syntax = 'on'

set.hlsearch = true
set.ignorecase = true
set.smartcase = true

-- when using vsplit or split the new window will be at the right or below the current window
set.splitright = true
set.splitbelow = true

set.wrap = false
set.scrolloff = 5
set.fileencoding = 'utf-8'

set.number = true
set.mouse = 'c'
set.relativenumber = true
set.cursorline = true

set.hidden = true

set.termguicolors = true
set.background = 'dark'

-- set.ft = 'nasm'

set.completeopt = 'menu,menuone,noselect'

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

