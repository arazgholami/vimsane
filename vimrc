" ==========================================================
"          ARAZ GHOLAMI PERSONAL VIM CONFIG
"               https://arazgholami.com
"               Last Update: 5/14/26
"          URL: https://github.com/arazgholami/vimsane/
" ==========================================================

" =================================
"          PLUGINS
" =================================

call plug#begin('~/.vim/plugged')

Plug 'jwalton512/vim-blade'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'ghifarit53/tokyonight-vim'
Plug 'mattn/emmet-vim'

call plug#end()

" =================================
"          GENERAL SETTINGS
" =================================

syntax enable
filetype plugin indent on

set encoding=utf-8
set fileencoding=utf-8
set mouse=a
set number
set backspace=indent,eol,start
set wildmenu
set laststatus=2
set showmode
set showcmd

" Search
set incsearch
set hlsearch
set ignorecase
set smartcase

" Indentation (4-space soft tabs)
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent

" Editor comfort
set hidden
set scrolloff=8
set signcolumn=yes
set updatetime=300

" I-beam (vertical bar) in insert mode
let &t_SI = "\<esc>[5 q"
let &t_SR = "\<esc>[3 q"
let &t_EI = "\<esc>[2 q"

" Save current state before leave
autocmd VimLeave * mksession! ./Session.vim

" =================================
"          PLUGIN CONFIG
" =================================

" ── Blade ──────────────────────────────────────────────────────
autocmd BufRead,BufNewFile *.blade.php set filetype=blade

" ── CtrlP ──────────────────────────────────────────────────────
nnoremap <C-p> :CtrlP<CR>

" ── NERDTree ───────────────────────────────────────────────────
nnoremap <C-t> :NERDTreeToggle<CR>

" ── Emmet ──────────────────────────────────────────────────────
imap <expr> <Tab> emmet#expandAbbrIntelligent("\<Tab>")

" ── PHP Omnicompletion ─────────────────────────────────────────
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <C-Space> <C-x><C-o>

" ── Theme ─────────────────────────────────────────────────────
set termguicolors
set background=dark
let g:tokyonight_style = 'night' 
let g:tokyonight_enable_italic = 1
colorscheme tokyonight

" =================================
"          TABS
" =================================
nnoremap <Esc>1 1gt
nnoremap <Esc>2 2gt
nnoremap <Esc>3 3gt
nnoremap <Esc>4 4gt
nnoremap <Esc>5 5gt
nnoremap <Esc>6 6gt
nnoremap <Esc>7 7gt
nnoremap <Esc>8 8gt
nnoremap <Esc>9 9gt
