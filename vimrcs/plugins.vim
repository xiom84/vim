set nocompatible
filetype off

let mapleader = ","
let g:mapleader = ","

" set the runtime path to include Vundle and initialize
call plug#begin('~/vim/plugged')


" Active
" ----------------------------------------------------------------------- 

" ====================================================================== 
"  PHP
" ====================================================================== 

" twig syntax
Plug 'evidens/vim-twig'

Plug 'StanAngeloff/php.vim', { 'for': 'php' }

" Fix indent of HTML in all PHP files -- basically adds indent/html.vim
" when outside of PHP block.
Plug 'captbaritone/better-indent-support-for-php-with-html'

" PHP Documentor
Plug 'tobyS/vmustache', { 'for': ['php', 'blade'] }
            \| Plug 'tobyS/pdv', { 'for': ['php', 'blade'] }

" Completion
Plug 'shawncplus/phpcomplete.vim', { 'for': 'php' }

" ====================================================================== 
"  HTML/CSS
" ====================================================================== 

 " HTML5 elements omnicompletion C-x C-o
Plug 'othree/html5.vim'
Plug 'othree/csscomplete.vim'

" HTML5 syntax
Plug 'othree/html5-syntax.vim'


" creates less filetype
Plug 'groenewege/vim-less'

" css.vim provides @media syntax highlighting where hail2u doesn't
" JulesWang/css.vim is the active repo for the css.vim bundled with vim
" hail2u extends vim's css highlighting
Plug 'JulesWang/css.vim'
            \| Plug 'hail2u/vim-css3-syntax'
            \| Plug 'cakebaker/scss-syntax.vim'

Plug 'ap/vim-css-color'

" ====================================================================== 
"  Javascript
" ====================================================================== 

"  syntax
Plug 'othree/yajs.vim', { 'for': 'javascript' }
Plug 'othree/es.next.syntax.vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'mustache/vim-mustache-handlebars'

"  indentation
Plug 'gavocanov/vim-js-indent', { 'for': 'javascript' }

"  jsx
Plug 'mxw/vim-jsx'

"  json
Plug 'elzr/vim-json'

"  code completion


"  linting
Plug 'scrooloose/syntastic'


" Formatter


Plug 'isRuslan/vim-es6'


" ====================================================================== 
"  Themes
" ====================================================================== 
Plug 'tomasr/molokai'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-scripts/mayansmoke'
Plug 'junegunn/seoul256.vim'
Plug 'Lokaltog/vim-distinguished'


" ====================================================================== 
"  Other
" ====================================================================== 
"  Git
Plug 'tpope/vim-fugitive'
"  conflict marker
Plug 'rhysd/conflict-marker.vim'

"  Search / Browse
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'rking/ag.vim'

"  Undoing things
Plug 'sjl/gundo.vim'

"  <F6>
Plug 'nathanaelkane/vim-indent-guides'

"  Matching HTML Tags
Plug 'gregsexton/MatchTag'

 " add gS to smart split lines like comma lists and html tags and gJ to do the opposite
Plug 'AndrewRadev/splitjoin.vim'

" Aligning stuff
"Plug 'godlygeek/tabular', { 'on': ['Tabularize'] }
Plug 'junegunn/vim-easy-align'


" Comment things
Plug 'tomtom/tcomment_vim'

" all about surroundings
Plug 'tpope/vim-surround'

Plug 'moskytw/nginx-contrib-vim'

" ====================================================================== 
"  UI -- load last
" ====================================================================== 

" <Plug> to not move on * search function
Plug 'haya14busa/vim-asterisk'

" show registers in split if use \" or <C-R>
Plug 'junegunn/vim-peekaboo'

"Plug 'vim-airline/vim-airline'
Plug 'ap/vim-buftabline'







" ---------------------
" Inactive
" --------------------- 
" Plug 'hoffstein/vim-tsql'
" Plug 'vim-scripts/taglist.vim'




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

