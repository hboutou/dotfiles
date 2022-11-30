"set all&

set path+=**
set colorcolumn=80
set signcolumn=yes
set noerrorbells

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

set number relativenumber cursorline
set cursorlineopt=number
set termguicolors
set wildmenu " visual autocomplete for command menu
set wildoptions=pum
set lazyredraw " redraw only when we need to.
set showmatch " highlight matching [{()}]
highlight MatchParen cterm=bold ctermbg=yellow ctermfg=green
highlight LineNrAbove ctermfg=darkgrey
highlight LineNr ctermfg=yellow
highlight LineNrBelow ctermfg=darkgrey
highlight ColorColumn ctermbg=darkgrey

" search
set ignorecase
set smartcase
set nohlsearch
set incsearch
set wrapscan

" folding
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

" MOVEMENT
" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
" nnoremap $ <nop>
" nnoremap ^ <nop>

" highlight last inserted text
nnoremap gV `[v`]

" Return to last edit position when opening files 
autocmd BufReadPost * silent! normal! g`"zv
