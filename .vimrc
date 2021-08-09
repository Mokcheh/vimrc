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
"language pack highlighting
Plug 'sheerun/vim-polyglot'
call plug#end()

let g:delimitMate_expand_cr = 2

"floating terminal
let g:floaterm_keymap_toggle = '<F12>'
let g:floaterm_width = 0.9
let g:floaterm_height = 0.9

"nerd tree toggle
map <F5> :NERDTreeToggle<CR>


"some c/c++ highlighting crap"
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1




"mouse navigation
set mouse=a
set number


"make cursor thin in insert mode
if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
  au InsertEnter,InsertChange *
\ if v:insertmode == 'i' |
\   silent execute '!echo -ne "\e[6 q"' | redraw! |
\ elseif v:insertmode == 'r' |
\   silent execute '!echo -ne "\e[4 q"' | redraw! |
\ endif
au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif



