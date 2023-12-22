" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1

call plug#begin('~/.vim/plugged')
" themes
Plug 'sainnhe/sonokai'
call plug#end()


" Press jj  to return to normal mode when in insert mode
inoremap jj <ESC>

" Press ff when in normal mode, to save file
nnoremap ff :w<CR>

" Press ctr+p to move on the next tab
nnoremap <C-p> :tabprevious<CR>
nnoremap <C-n> :tabnext<CR>

nnoremap mm :bd<CR>
nnoremap ;; :nohl<CR>



" Start NERDTree and put the cursor back in the other window.
"autocmd VimEnter * NERDTree | wincmd p

syntax enable
set fenc=utf-8
set number
set relativenumber
set mouse=a
set autoindent
" set clipboard^=unamed
set clipboard=unnamedplus



set t_Co=256
set cursorline
" colorscheme sonokai


" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4



filetype plugin on
" enter the current millenium
set nocompatible

"Finding file
set path+=**
set wildmenu
