" Vundle configuration

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Vim plugins http://vim-scripts.org/vim/scripts.html

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'Quramy/tsuquyomi'
Plugin 'leafgarland/typescript-vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'mkarmona/materialbox'

call vundle#end()

filetype plugin indent on

" nerdtree configuration
" open NERDTree when no file provided
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:NERDTreeWinSize = 70

" ctrlp.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim

" enable syntax highlighting
syntax enable

" show line number
set relativenumber

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursors line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

set autoread

:inoremap ( ()<Esc>:let leavechar=")"<CR>i
:inoremap [ []<Esc>:let leavechar="]"<CR>i
:inoremap { {}<Esc>:let leavechar="}"<CR>i

function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

:imap jj <esc>
execute pathogen#infect()
call pathogen#helptags()

" autocmd vimenter * NERDTree

" resize split with +/-
map + <c-w>>
map - <c-w><

" set color scheme
colorscheme molokai

" status line configuration
set statusline=%f       "Path to the file
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

" add new line above/below with Shift-Enter/Enter
nmap <C-o> O<Esc>
nmap <CR> o<Esc>

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
