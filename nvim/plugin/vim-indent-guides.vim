let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2

hi IndentGuidesOdd  ctermbg=black
let g:indent_guides_auto_colors = 0

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=none ctermbg=3

