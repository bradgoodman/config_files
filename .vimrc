" Enable syntax highlighting
syntax on

" Display line numbers on the left
set number

" Show autocomplete menu
set wildmenu

" automatically set current director to directory of file in buffer
set autochdir

" Make backspace work like most other programs
set backspace=2

" Allow mouse motions
set mouse=a

" Display relative numbers
set relativenumber

" Allow multiple buffers to be open without saving them
set hidden

" Color syntax
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" Discover filetype plugins and indentation
filetype plugin indent on

" Map jj to escape
imap jj <ESC>

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Highlight searching and motions using leader key or /
Plug 'easymotion/vim-easymotion'
Plug 'romainl/Apprentice'

" Initialize plugin system
call plug#end()

" Set search function to use easy motion instead of default searching
map / <Plug>(easymotion-sn)

" Set leader key to space instead of \ (default)
let mapleader = " "

vmap > >gv
vmap < <gv

" Window commands
" v - vertical split, s - horizontal split, q - quit
nmap <Leader>v <C-w>v
nmap <Leader>s <C-w>s
nmap <Leader>l <C-w>l
nmap <Leader>h <C-w>h
nmap <Leader>j <C-w>j
nmap <Leader>k <C-w>k
nmap <Leader>q <C-w>q
nmap <Leader>w :w<CR>

augroup CursorLine
    au!
    au VimEnter * setlocal cursorline
    au WinEnter * setlocal cursorline
    au BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
augroup END

augroup updateVim
   au!
   au BufWritePost .vimrc so ~/.vimrc
augroup END

"Line highlighting
"hi CursorLine cterm=NONE ctermbg=DarkBlue
colorscheme apprentice
