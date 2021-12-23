"requires Plug

call plug#begin('~/.vim/plugged')


"LSP 
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"good parentheses yes
"Plug 'junegunn/rainbow_parentheses.vim'
Plug 'frazrepo/vim-rainbow'
"html emmet
Plug 'mattn/emmet-vim'
"brackets completion
Plug 'vim-scripts/delimitMate.vim'
"File browser
Plug 'scrooloose/nerdtree'
"language pack highlighting
Plug 'sheerun/vim-polyglot'
"vim airline/themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'keitanakamura/neodark.vim'

"gitgutter
Plug 'airblade/vim-gitgutter'
call plug#end()

let g:delimitMate_expand_cr = 2

"nerd tree toggle
map <F5> :NERDTreeToggle<CR>

"activate rainbow_parentheses
"autocmd vimEnter * RainbowParentheses


" only enable Emmet for certain file types
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall



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

"some appearance crap
let g:airline_theme = 'deus'
let g:airline_powerline_fonts = 1
colorscheme neodark



"autism

let g:rainbow_active = 1

let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']
