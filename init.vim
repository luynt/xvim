set number
set encoding=utf-8
filetype plugin on
set autoindent
set smartindent
" UI configuration
syntax on
syntax enable
set tabstop=2 shiftwidth=4 expandtab
set autoread
set autowrite
set nobackup
set nowb
set noswapfile
set backupdir=~/tmp,/tmp
set backupcopy=yes
set backupskip=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*
set directory=/tmp
set clipboard=unnamedplus

call plug#begin()
" Vim GO auto
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries'}
Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }
Plug 'valloric/youcompleteme'

"UI Themes Dracula
Plug 'dracula/vim', { 'as': 'dracula' }

" Mutil Cusor 
Plug 'terryma/vim-multiple-cursors'

" Nerdtree
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'


call plug#end()

let g:multi_cursor_use_default_mapping=0

" Default mapping multi cursor 
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

" Mapping Leader
let mapleader = ","
vnoremap  <leader>y  "+y

"Tag function 
nnoremap <Leader><F8> :TagbarToggle<CR>
nnoremap <Leader>cm :NERDCommenterToggle<CR>
"NERDTree
nnoremap <Leader>nt :NERDTree<CR>
nnoremap <Leader>gr :GoRun<CR>
