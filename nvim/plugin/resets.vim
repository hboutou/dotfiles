"set all&

set path+=**
set belloff=esc
set noerrorbells
set novisualbell
set nocompatible
set showcmd
set showmode
set ruler
set termguicolors
set ttyfast
set lazyredraw

syntax enable
filetype plugin on
filetype indent on

set wildmenu
set wildoptions=pum

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
"highlight LineNrAbove ctermfg=236
"highlight LineNr ctermfg=yellow
"highlight LineNrBelow ctermfg=236
"highlight ColorColumn ctermbg=236
"highlight SignColumn ctermbg=236

" search
set ignorecase
set smartcase
set nohlsearch
set incsearch
set wrapscan

" split
"set splitright
"set splitbelow

set timeout timeoutlen=1000
set ttimeout ttimeoutlen=5

" fold
"set nofoldenable " enable folding
"set foldnestmax=1 " nested fold max
"set foldmethod=indent " fold based on indent level
"nnoremap <space> za " space open/closes folds

" file duplication
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
