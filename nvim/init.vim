set colorcolumn=80
"set signcolumn=yes
set noerrorbells

set scrolloff=10
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

syntax enable
filetype plugin indent on
set number relativenumber
set nowrap
set wildmenu " visual autocomplete for command menu
set lazyredraw " redraw only when we need to.
set showmatch " highlight matching [{()}]
highlight MatchParen cterm=bold ctermbg=none ctermfg=red

" search
set smartcase
set ignorecase
set incsearch
set nohlsearch

" folding
set foldenable " enable folding
set foldnestmax=2 " max nested fold
set foldmethod=indent " fold based on indent level

" space open/closes folds
nnoremap <space> za

" file duplication
set noswapfile
set nobackup
set hidden

" MOVEMENT
" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" highlight last inserted text
nnoremap gV `[v`]


" toggle between number and relativenumber
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
		set relativenumber
    endif
endfunc
