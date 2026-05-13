" ==========================================================
"          ARAZ GHOLAMI PERSONAL VIM CONFIG
"          https://arazgholami.com/vimrc
"          Last Update: 5/13/26
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

" =================================
"          PLUGIN CONFIG
" =================================

" ── Blade ──────────────────────────────────────────────────────
autocmd BufRead,BufNewFile *.blade.php set filetype=blade

" ── CtrlP ──────────────────────────────────────────────────────
" Use <C-p> (default) or remap to something that doesn't shadow built-ins.
" <S-S> was used here before, but Shift+S is a built-in (delete line → insert).
nnoremap <C-p> :CtrlP<CR>

" ── NERDTree ───────────────────────────────────────────────────
nnoremap <C-t> :NERDTreeToggle<CR>

" ── Emmet ──────────────────────────────────────────────────────
" Smart Tab: expand Emmet abbreviation if applicable, else insert real tab.
" The g:user_emmet_expandabbr_key is intentionally left unset to avoid
" double-binding; the imap below handles everything.
imap <expr> <Tab> emmet#expandAbbrIntelligent("\<Tab>")

" ── PHP Omnicompletion ─────────────────────────────────────────
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP

" Accept completion popup with Enter; otherwise insert a normal newline.
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

" Trigger omnicompletion manually with Ctrl+Space.
inoremap <C-Space> <C-x><C-o>

" ── Theme ─────────────────────────────────────────────────────
set termguicolors
set background=dark
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
colorscheme tokyonight

" =================================
"          TABS
" =================================
nnoremap <A-1> 1gt
nnoremap <A-2> 2gt
nnoremap <A-3> 3gt
nnoremap <A-4> 4gt
nnoremap <A-5> 5gt
nnoremap <A-6> 6gt
nnoremap <A-7> 7gt
nnoremap <A-8> 8gt
nnoremap <A-9> 9gt
