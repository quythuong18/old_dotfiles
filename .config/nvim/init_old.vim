" Neovim Configuration file of
"   ____                 ________                           
"  / __ \__  ____  __   /_  __/ /_  __  ______  ____  ____ _
" / / / / / / / / / /    / / / __ \/ / / / __ \/ __ \/ __ `/
"/ /_/ / /_/ / /_/ /    / / / / / / /_/ / /_/ / / / / /_/ / 
"\___\_\__,_/\__, /    /_/ /_/ /_/\__,_/\____/_/ /_/\__, /  
"           /____/                                 /____/   

set termguicolors
call plug#begin(stdpath('data') . '/plugged')

" For hex code color
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
" Neovim default
let g:Hexokinase_highlighters = [ 'backgroundfull' ]

" Vim default
"let g:Hexokinase_highlighters = [ 'sign_column' ]
let g:Hexokinase_optInPatterns = 'full_hex,rgb,rgba,hsl,hsla'


" Lua
" Plug 'kyazdani42/nvim-web-devicons' " optional, for file icons
" Plug 'kyazdani42/nvim-tree.lua'


" html extension 
" Plug 'mattn/emmet-vim'
" let g:user_emmet_install_global = 0
" autocmd FileType html,css EmmetInstall
"let g:user_emmet_mode='n'    "only enable normal mode functions.
" let g:user_emmet_leader_key=','

" C# extension
Plug 'OmniSharp/omnisharp-vim'
"let g:OmniSharp_server_stdio = 0

" Themes
Plug 'tanvirtin/monokai.nvim'
Plug 'joshdick/onedark.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'jnurmine/Zenburn'
Plug 'sainnhe/everforest'
Plug 'sainnhe/sonokai'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'rakr/vim-one'
Plug 'morhetz/gruvbox'
Plug 'junegunn/seoul256.vim'
Plug 'tomasiser/vim-code-dark'
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'vim-python/python-syntax'
	let g:python_highlight_all = 1
Plug 'bfrg/vim-cpp-modern'
	" Disable function highlighting (affects both C and C++ files)
	let g:cpp_function_highlight = 1

	" Enable highlighting of C++11 attributes
	let g:cpp_attributes_highlight = 1

	" Highlight struct/class member variables (affects both C and C++ files)
	let g:cpp_member_highlight = 1

" Put all standard C and C++ keywords under Vim's highlight group 'Statement'
" (affects both C and C++ files)
let g:cpp_simple_highlight = 1

"File browser and search
Plug 'preservim/nerdtree'
	"nnoremap <leader>n :NERDTreeFocus<CR>
	"nnoremap <Silent> <F12> :NERDTree<CR>
	nnoremap <F12> :NERDTreeToggle<CR>
	nnoremap <Silent> <F3> :NERDTreeFind<CR>
	"autocmd VimEnter * NERDTree | wincmd p

	let g:NERDTreeHijackNetrw=0
"Autocomplete
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
	let g:airline_powerline_fonts = 1
	let g:airline#extensions#tabline#enabled = 1
	let g:airline#extensions#tabline#left_sep = ' '
	let g:airline#extensions#tabline#left_alt_sep = '|'

"internal Terminal
Plug 'voldikss/vim-floaterm'
	let g:floaterm_keymap_new = '<F7>'
	let g:floaterm_keymap_prev = '<F8>'
	let g:floaterm_keymap_kill = '<F3>'
	let g:floaterm_keymap_hide = '<F4>'
	let g:floaterm_position = 'topright'
	let g:floaterm_width = 0.5
	let g:floaterm_height = 40
	" Configuration example

	" Set floaterm window's background to black
	hi Floaterm guibg=black
	" Set floating window border line color to cyan, and background to orange
	hi FloatermBorder guibg=orange guifg=cyan
"Show error
Plug 'dense-analysis/ale'


call plug#end()

" Press jj  to return to normal mode when in insert mode
inoremap jj <ESC>

" Press nn to return to normal mode when in visual mode
vnoremap nn <ESC>

" Press jj when in Command mode, to go back to normal mode
cnoremap jj <ESC>

" Press ff when in normal mode, to save file
nnoremap ff :w<CR>

" Press ctr+n to move on the next tab
nnoremap <C-p> :tabprevious<CR>
nnoremap <C-n> :tabnext<CR>

nnoremap mm :bd<CR>
nnoremap ;; :nohl<CR>


" .nasm file
set ft=nasm

" Start NERDTree and put the cursor back in the other window.
"autocmd VimEnter * NERDTree | wincmd p

set fenc=utf-8
" set number of line
set number
set relativenumber
set mouse=a
set autoindent
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
set listchars=tab:▸\ ,trail:·
set clipboard=unnamedplus
set encoding=UTF-8
syntax on




set t_Co=256
set cursorline
colorscheme one	
let g:airline_theme='one'
"transparent
"hi Normal guibg=NONE ctermbg=NONE 


"NERDTree
set modifiable

" Save file without sudo
command! -nargs=0 Sw w !sudo tee % > /dev/null

highlight ColorColumn ctermbg=0 guibg=#081C23
