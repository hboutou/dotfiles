set colorcolumn=80
set signcolumn=yes
set noerrorbells

set scrolloff=10
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

syntax enable
filetype plugin indent on
set number relativenumber
"highlight LineNr ctermfg=red
"highlight CursorLineNr ctermfg=red
"highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey
"highlight CursorLineNr term=bold ctermfg=Yellow gui=bold guifg=Yellow

set nowrap
set wildmenu " visual autocomplete for command menu
set lazyredraw " redraw only when we need to.
set showmatch " highlight matching [{()}]
highlight MatchParen cterm=bold ctermbg=none ctermfg=red
hi LineNrAbove ctermfg=gray
hi LineNrBelow ctermfg=gray

" search
set smartcase
set ignorecase
set incsearch
set nohlsearch

" folding
set nofoldenable " enable folding
set foldnestmax=2 " nested fold max
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
" nnoremap $ <nop>
" nnoremap ^ <nop>

" highlight last inserted text
nnoremap gV `[v`]

set termguicolors

" toggle between number and relativenumber
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
		set relativenumber
    endif
endfunc

call plug#begin()
Plug 'nathanaelkane/vim-indent-guides'
Plug 'morhetz/gruvbox'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

"colorscheme gruvbox
"set background=dark    " Setting dark mode
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2

"hi IndentGuidesOdd  ctermbg=black
"let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=none   ctermbg=3

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

