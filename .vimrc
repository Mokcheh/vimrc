call plug#begin('~/.vim/plugged')


" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"html emmet
Plug 'mattn/emmet-vim'
"brackets completion
Plug 'vim-scripts/delimitMate.vim'
"floating terminal
Plug 'voldikss/vim-floaterm'
"File browser
Plug 'scrooloose/nerdtree'
"C/C++ highlighting
Plug 'octol/vim-cpp-enhanced-highlight'
call plug#end()

let g:delimitMate_expand_cr = 2

let g:floaterm_keymap_toggle = '<F12>'
let g:floaterm_width = 0.9
let g:floaterm_height = 0.9

map <F5> :NERDTreeToggle<CR>


"some c/c++ highlighting crap"
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1

