"set all&

set path+=**
set belloff=esc
set noerrorbells
set novisualbell
set nocompatible
set showcmd
set showmode
set ruler
set lazyredraw
set ttyfast

set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

syntax enable
filetype plugin on
filetype indent on

set wildmenu
set wildoptions=pum
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.sqlite,*.o,*.a

set complete=.,w,b,u,t
set completeopt=longest,menuone

set expandtab
set shiftround
set shiftwidth=4
set autoindent
set smartindent
set softtabstop=4
set tabstop=4
set nowrap
set linebreak

" line number
set number
set relativenumber
set cursorline
set cursorlineopt=number

"set signcolumn=yes
set colorcolumn=80
set scrolloff=16
set sidescrolloff=16

set showmatch " highlight matching [{()}]
highlight MatchParen cterm=bold ctermbg=none ctermfg=green
highlight CursorLineNr cterm=bold ctermbg=none
"highlight LineNrAbove ctermfg=236
"highlight LineNr ctermfg=yellow
"highlight LineNrBelow ctermfg=236
"highlight ColorColumn ctermbg=236
"highlight SignColumn ctermbg=236

" search
set ignorecase
set smartcase
set hlsearch  " to clear highlight :nohls
set incsearch
set wrapscan
set shortmess-=S

" split
"set splitright
"set splitbelow

set timeout timeoutlen=1000
set ttimeout ttimeoutlen=5

" fold
set nofoldenable
set foldmethod=indent
set foldlevel=1
set foldnestmax=1
" set foldclose=all  " autoclose after navigate out
" za - toggle fold
" zo - open fold
" zc - close fold
" zm - increases auto fold depth
" zr - reduces auto fold depth
" zR - disable auto folding ~ :set foldmethod=syntax
" also toggle fold with space
nnoremap <space> za

" file duplication
set backupdir=~/.vim/backup//,/tmp//
set directory=~/.vim/swap//,/tmp//
set undodir=~/.vim/undo//,/tmp//
set noswapfile
set nobackup
set hidden
set undofile
"set history=9999
set autoread 

" MOVEMENT
" vertical navigation
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz

" last and next jump should center too.
nnoremap <C-o> <C-o>zz
nnoremap <C-i> <C-i>zz

" center screen on next/previous selection.
nnoremap n nzz
nnoremap N Nzz

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
" nnoremap $ <nop>
" nnoremap ^ <nop>

" highlight last inserted text
nnoremap gV `[v`]

" return to last edit position when opening files 
autocmd BufReadPost * silent! normal! g`"zv

" default to python syntax highlighting for non-dotfile extentionless files
autocmd BufNewFile,BufRead * if expand('%:e') == '' && expand('%:t') !~ '^\.' | set syntax=python | endif


autocmd FileType go setlocal noexpandtab shiftwidth=8 tabstop=8 softtabstop=8
