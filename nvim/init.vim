""""" begin vim-plug
call plug#begin('~/.local/share/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'kien/ctrlp.vim'
Plug 'rust-lang/rust.vim'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()
"""" end vim-plug

" general
set colorcolumn=80
set noerrorbells
colorscheme gruvbox
set background=dark

" indent
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" lines display
syntax enable
filetype plugin indent on
set number relativenumber
set nowrap
set cursorline " highlight current line
set wildmenu " visual autocomplete for command menu
set lazyredraw " redraw only when we need to.
set showmatch " highlight matching [{()}]

" search
set smartcase "case sensitive only when a cap letter is typed
set incsearch " search as characters are entered
set hlsearch " highlight matches

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>


" folding
"set foldenable " enable folding
set foldnestmax=10 " 10 nested fold max

" space open/closes folds
nnoremap <space> za
set foldmethod=indent " fold based on indent level


" file duplication
set noswapfile
set nobackup

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


