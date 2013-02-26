" -----------------------------------------------------------------------------
" Basic setup 
" -----------------------------------------------------------------------------
set nocompatible
filetype off
set encoding=utf-8

:map! jj <esc>
let mapleader = ","

nnoremap ; :
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk


" Highlight Searches
:set highlight=lub
:map <Leader>s :set hlsearch<CR>
:map <Leader>S :set nohlsearch<CR>
:set incsearch

" Load vimrc in new tab with leader-v
nmap <leader>v :tabedit $MYVIMRC<CR>

" "Hidden" buffers -- i.e., don't require saving before editing another file.
" Calling quit will prompt you to save unsaved buffers anyways.
:set hidden

" Turn on "very magic" regex status by default for searches.
" :he /magic for more information
:nnoremap / /\v
:vnoremap / /\v

" Pasting toggle...
:set pastetoggle=<Ins>

" -----------------------------------------------------------------------------
" Personal setup 
" -----------------------------------------------------------------------------

hi link phpIdentifier phpVarSelector

" toggle hidden characters

nmap ,l :set list!<CR>

" PHP parser check (CTRL-L)
:autocmd FileType php noremap <C-L> :!/usr/bin/php -l %<CR>

" run file with PHP CLI (CTRL-M)
:autocmd FileType php noremap <C-M> :w!<CR>:!/usr/bin/php %<CR>

" Run file with Ruby interpreter
:autocmd FileType ruby noremap <C-M> :w!<CR>:!ruby %<CR>

" Run PHPUnit tests in current dir
:map <Leader>t :Test<CR>

" -----------------------------------------------------------------------------
"  Tabs setup
" -----------------------------------------------------------------------------
:set expandtab
:set textwidth=80
:set tabstop=4
:set softtabstop=4
:set shiftwidth=4
:set background=dark
:syntax on
:set tags=$HOME/.vim/doc/tags
:set ttyfast
:set showcmd
:set showmode
:set wildmenu
:set wildmode=list:longest
:set number

:set smarttab
:set shiftround
:set autoindent
:set smartindent

" -----------------------------------------------------------------------------
" Colors settings 
" -----------------------------------------------------------------------------
:set t_Co=256
:set colorcolumn=80
:hi ColorColumn ctermbg=lightgrey guibg=lightgrey
:colorscheme symfony 

    
" -----------------------------------------------------------------------------
"  Vundle settings
" -----------------------------------------------------------------------------
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
filetype plugin indent on     " required!

" let Vundle manage Vundle. Required! 
Bundle 'gmarik/vundle'

" -----------------------------------------------------------------------------
"  Vundle bundles 
" -----------------------------------------------------------------------------
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-rails.git'
Bundle 'scrooloose/nerdtree'
Bundle 'html5.vim'
Bundle 'tristen/vim-sparkup'
" Snipmate with deps
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/snipmate-snippets"
Bundle "garbas/vim-snipmate"

Bundle "scrooloose/nerdcommenter"
Bundle 'joonty/vim-phpunitqf.git'

" -----------------------------------------------------------------------------
" Powerline settings
" -----------------------------------------------------------------------------
set laststatus=2   " Always show the statusline
"let g:Powerline_symbols = 'fancy'
set term=xterm-256color

" -----------------------------------------------------------------------------
" NERDTree settings
" -----------------------------------------------------------------------------
:let NERDChristmasTree=1
:let NERDTreeCaseSensitiveSort=1
:let NERDTreeChDirMode=2
:let NERDTreeBookmarksFile = $HOME . "/.vim/data/NERDTreeBookmarks"
:let NERDTreeShowBookmarks=1
:let NERDTreeShowHidden=1
:let NERDTreeQuitOnOpen=1
:let NERDTreeDirArrows = 1
:map <Leader>n :NERDTree<CR>

" -----------------------------------------------------------------------------
" Vim-fugitive settings
" -----------------------------------------------------------------------------
:set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
autocmd BufReadPost fugitive://* set bufhidden=delete
