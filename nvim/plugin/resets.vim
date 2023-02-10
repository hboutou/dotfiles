"set all&

set path+=**
set colorcolumn=80
set signcolumn=yes
set noerrorbells
set showcmd
set showmode
set ruler


set expandtab
set scrolloff=16
set sidescrolloff=16
set shiftround
set shiftwidth=4
set autoindent
set smartindent
set softtabstop=4
set tabstop=4
set nowrap
set linebreak

syntax enable
filetype plugin on
filetype indent on

set number relativenumber
set cursorlineopt=number
set termguicolors
set wildmenu " visual autocomplete for command menu
set wildoptions=pum
set ttyfast
set lazyredraw " redraw only when we need to.
set showmatch " highlight matching [{()}]
highlight MatchParen cterm=bold ctermbg=yellow ctermfg=green
highlight LineNrAbove ctermfg=darkgrey
highlight LineNr ctermfg=yellow
highlight LineNrBelow ctermfg=darkgrey
highlight ColorColumn ctermbg=darkgrey
highlight SignColumn ctermbg=236

" search
set ignorecase
set smartcase
set nohlsearch
set incsearch
set wrapscan

" sane split
set splitright
set splitbelow

set notimeout
set ttimeout
set ttimeoutlen=10

" fold
set nofoldenable " enable folding
set foldnestmax=1 " nested fold max
set foldmethod=indent " fold based on indent level
" space open/closes folds
nnoremap <space> za

" file duplication
set noswapfile
set nobackup
set hidden
set undofile
set history=1000
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
