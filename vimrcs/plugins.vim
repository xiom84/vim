set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim_runtime/plugins/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'


" snippets
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'

Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdcommenter'
Plugin 'sjl/gundo.vim'

Plugin 'SirVer/ultisnips'

" auto code checking
Plugin 'scrooloose/syntastic'

" closing brackets
Plugin 'Raimondi/delimitMate'

Plugin 'Valloric/YouCompleteMe'
" These are the tweaks I apply to YCM's config, you don't need them but they might help.
" YCM gives you popups and splits by default that some people might not like, so these should tidy it up a bit for you.
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview

"Cool js needs npm install not working yet
Plugin 'marijnh/tern_for_vim'

" Colorscheme
Plugin 'Lokaltog/vim-distinguished'


Plugin 'jelera/vim-javascript-syntax'



" Autocomplete
"Plugin 'Shougo/vimproc'
"Plugin 'Shougo/unite.vim'
"Plugin 'm2mdas/phpcomplete-extended'

" All of your Plugins must be added before the following line
call vundle#end()            " required
