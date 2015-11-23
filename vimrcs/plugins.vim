set nocompatible
filetype off

let mapleader = ","
let g:mapleader = ","

" set the runtime path to include Vundle and initialize
call plug#begin('~/vim/plugged')

" ---------------------
" Active
" --------------------- 

Plug 'bling/vim-airline'


" Colors
Plug 'altercation/vim-colors-solarized'
Plug 'vim-scripts/mayansmoke'
Plug 'tomasr/molokai'
Plug 'junegunn/seoul256.vim'
Plug 'Lokaltog/vim-distinguished'

Plug 'scrooloose/nerdtree'

Plug 'tpope/vim-fugitive'

Plug 'kien/ctrlp.vim'


Plug 'mustache/vim-mustache-handlebars'
Plug 'scrooloose/nerdcommenter'

Plug 'sjl/gundo.vim'

" auto code checking
Plug 'scrooloose/syntastic'


Plug 'rking/ag.vim'
Plug 'hoffstein/vim-tsql'

Plug 'vim-scripts/taglist.vim'

"js
Plug 'othree/yajs.vim'
Plug 'isRuslan/vim-es6'

" ---------------------
" Inactive
" --------------------- 

" snippets
"Plug 'MarcWeber/vim-addon-mw-utils'
"Plug 'tomtom/tlib_vim'
"Plug 'garbas/vim-snipmate'

"Cool js needs npm install not working yet
"Plug 'marijnh/tern_for_vim'


"Plug 'SirVer/ultisnips'


" closing brackets
"Plug 'Raimondi/delimitMate'

" Plug 'Valloric/YouCompleteMe'
" These are the tweaks I apply to YCM's config, you don't need them but they might help.
" YCM gives you popups and splits by default that some people might not like, so these should tidy it up a bit for you.
"let g:ycm_add_preview_to_completeopt=0
"let g:ycm_confirm_extra_conf=0
"set completeopt-=preview

"Plug 'jelera/vim-javascript-syntax'

" Autocomplete
"Plug 'Shougo/vimproc'
"Plug 'Shougo/unite.vim'
"Plug 'm2mdas/phpcomplete-extended'



call plug#end()

filetype plugin indent on    " required

