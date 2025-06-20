set nocompatible

filetype on

filetype plugin on

filetype indent on

syntax on

set rnu
set nu

" Set shift width to 4 spaces.
set shiftwidth=2

" Set tab width to 4 columns.
set tabstop=2

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10
" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx


" PLUGINS ---------------------------------------------------------------- {{{

" Plugin code goes here.
call plug#begin('~/.vim/plugged')

  "Plug 'ghifarit53/tokyonight-vim'
  Plug 'tpope/vim-surround'
  Plug 'luochen1990/rainbow'
  Plug 'jeetsukumaran/vim-buffergator'
  Plug 'vim-airline/vim-airline'
  Plug 'scrooloose/nerdtree'
  Plug 'Yggdroot/indentLine'
  Plug 'morhetz/gruvbox'
  Plug 'sainnhe/forest-night'
  Plug 'sheerun/vim-polyglot'

call plug#end()

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}


" KEYBINDINGS ------------------------------------------------------------ {{{
"
let mapleader = "-"
let maplocalleader = "`"
let STverticalsizeMAIN = 70
nnoremap <Tab> :BuffergatorOpen<CR>
nnoremap <Leader>e :tabnew
nnoremap <Leader>s :source %<CR>
nnoremap <C-n> :tabnew .<CR>
nnoremap <Leader>v :vs
nnoremap <Leader>h :sp
nnoremap <LocalLeader>j <C-w>j
nnoremap <LocalLeader>k <C-w>k
nnoremap <LocalLeader>h <C-w>h :vertical resize 65<CR>
nnoremap <LocalLeader>l <C-w>l :vertical resize 65<CR>
nnoremap <LocalLeader>x :botright term<CR> <C-w>k :horizontal resize 14<CR> <C-w>j
nnoremap <LocalLeader>n :NERDTreeToggle<CR>:vertical resize 20<CR>
nnoremap <C-c> :NERDTreeClose<CR>
nnoremap <C-f> :NERDTreeFind
tnoremap <C-d> <C-\><C-n>

" }}}


" FOLD METHODS --------------------------------------------------------------- {{{
set foldmethod=marker
set foldmarker={{{,}}}
" }}}


set termguicolors

set background=dark
let g:everforest_background = 'hard'
let g:everforest_better_performance = 1
let g:everforest_enable_italic = 1
"let g:everforest_transparent_background = 1

let g:airline_theme = 'everforest'
colorscheme everforest


set shell=/usr/bin/fish
