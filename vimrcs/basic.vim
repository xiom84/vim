" ----------------------------------------------------------------------------
" General
" ----------------------------------------------------------------------------
set encoding=utf-8 nobomb
" scriptencoding utf-8

set history=700                 " go back in history
syntax on                       " enable syntax highlighting
set lbr                         " enable linebreak

"let mapleader = ","            " set mapleader
"let g:mapleader = ","          " set mapleader for g:


" ----------------------------------------------------------------------------
" User interface
" ----------------------------------------------------------------------------
set scrolloff=8                 " Set 8 lines to the cursors when moving vertical...
set sidescrolloff=16

set title

set ruler                       "Always show current position

set synmaxcol=512               "dont syntax highlight long lines

set completeopt-=preview

"set colorcolumn=80             " show end of line column
"set cursorline                 " highlight cursorline

set whichwrap+=<,>,h,l          " set up keys which are allowed to move to the next/previous line

set mat=2                       "How many tenths of a second to blink

set number
"set relativenumber

colorscheme molokai
"colorscheme mayansmoke
"colorscheme wombat

if has('win32') || has('win16')
try
  set guifont=Consolas:h10

  " Persistent undo
  set undodir=C:\Windows\Temp

catch
endtry
else
endif

"set guifont=Courier\ New:h10
"set gfn=Bitstream\ Vera\ Sans\ Mono:h10
set guioptions=M

" No sound on errors
set noerrorbells
set novisualbell
set t_vb=
set ttyfast
set lazyredraw
set tm=500


" ----------------------------------------------------------------------------
" Wild and file globbing
" ----------------------------------------------------------------------------
set browsedir=buffer                    " browse files in same dir as open file
set wildmenu                            " enhanced command line completion
set wildmode=list:longest               " complete files like a shell
set wildignorecase

set wildignore+=.git
set wildignore+=*/vendor/**
set wildignore+=*/app/cache/**
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class
set wildignore+=*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp
set wildignore+=*.avi,*.m4a,*.mp3,*.oga,*.ogg,*.wav,*.webm
set wildignore+=*.eot,*.otf,*.ttf,*.woff
set wildignore+=*.doc,*.pdf
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*.swp,.lock,.DS_Store,._*

" ----------------------------------------------------------------------------
" => Files, backups and undo
" ----------------------------------------------------------------------------
set autoread                    " reload files if they were edited elsewhere

set fileformats=unix,dos,mac "Default file types
set fileformat=unix

" Turn backup off
set nobackup
set nowritebackup
set noswapfile

" ----------------------------------------------------------------------------
" => splits and buffers
" ----------------------------------------------------------------------------
set splitbelow
set splitright
set fillchars=vert:\|

set hidden                     "Change buffer - without saving

" reveal already opened files from the quickfix window instead of opening new buffers
set switchbuf=useopen

" ----------------------------------------------------------------------------
" => trailing whitespace
" ----------------------------------------------------------------------------
set list
set listchars=""                    " reset
set listchars=tab:→\ 
set listchars+=trail:·
set listchars+=extends:»              " show cut off when nowrap
set listchars+=precedes:«



" ----------------------------------------------------------------------------
" => diffing
" ----------------------------------------------------------------------------
" Note this is += since fillchars was defined in splits
set fillchars+=diff:⣿
set diffopt=vertical                  " Use in vertical diff mode
set diffopt+=filler                   " blank lines to keep sides aligned
set diffopt+=iwhite                   " Ignore whitespace changes


" ----------------------------------------------------------------------------
" Input auto-formatting
" ----------------------------------------------------------------------------
set formatoptions=
set formatoptions+=c                  " Auto-wrap comments using textwidth
set formatoptions+=r                  " Continue comments by default
set formatoptions-=o                  " do not continue comment using o or O
set formatoptions+=q                  " continue comments with gq
set formatoptions+=n                  " Recognize numbered lists
set formatoptions+=2                  " Use indent from 2nd line of a paragraph
set formatoptions+=l                  " Don't break lines that are already long
set formatoptions+=1                  " Break before 1-letter words
" Vim 7.4 only: no // comment when joining commented lines
if v:version >= 704 | set formatoptions+=j | endif

set nrformats-=octal                  " never use octal when <C-x> or <C-a>


" ----------------------------------------------------------------------------
" Whitespace
" ----------------------------------------------------------------------------
set nowrap
set nojoinspaces                      " J command doesn't add extra space


" ----------------------------------------------------------------------------
" Indenting - overridden by indent plugins
" ----------------------------------------------------------------------------
set autoindent                        " indent when creating newline
set smartindent                       " add an indent level inside braces
set cindent                           " testing cindent...

" for autoindent, use same spaces/tabs mix as previous line, even if
" tabs/spaces are mixed. Helps for docblock, where the block comments have a
" space after the indent to align asterisks
set copyindent

" Try not to change the indent structure on "<<" and ">>" commands. I.e. keep
" block comments aligned with space if there is a space there.
set preserveindent



" ----------------------------------------------------------------------------
" Tabbing - overridden by editorconfig, after/ftplugin
" ----------------------------------------------------------------------------
set expandtab                         " default to spaces instead of tabs
set shiftwidth=2                      " softtabs are 2 spaces for expandtab (4?)

" Alignment tabs are two spaces, and never tabs. Negative means use same as
" shiftwidth (so the 2 actually doesn't matter).
set softtabstop=-2

" real tabs render 4 wide. Applicable to HTML, PHP, anything using real tabs.
" I.e., not applicable to JS.
set tabstop=4

" use multiple of shiftwidth when shifting indent levels.
" this is OFF so block comments don't get fudged when using ">>" and "<<"
set noshiftround

" When on, a <Tab> in front of a line inserts blanks according to
" 'shiftwidth'.  'tabstop' or 'softtabstop' is used in other places.  A
set smarttab

"set backspace=indent,eol,start        " bs anything
set backspace=eol,start,indent "Set backspace config

" ----------------------------------------------------------------------------
" Match and search
" ----------------------------------------------------------------------------
set showmatch                         " hl matching parens
set hlsearch
set incsearch
set wrapscan                          " Searches wrap around end of the file.
set ignorecase
set smartcase

" The Silver Searcher
if executable('ag') | set grepprg=ag\ --nogroup\ --nocolor | endif


" ----------------------------------------------------------------------------
" Autocommands
" ----------------------------------------------------------------------------
if has('autocmd')
  " Resize splits when the window is resized
  " todo not working right now
  " autocmd vimrc VimResized * :wincmd =

  " see after/ftplugin/*.vim for more filetype specific stuff
endif

" leave this down here since it trims local settings
set secure                            " no unsafe local vimrc commands


" ----------------------------------------------------------------------------
" PHP formatting and syntax highlighting
" ----------------------------------------------------------------------------

let php_sql_query = 1
let php_baselib = 1
let php_htmlInStrings = 1
let php_asp_tags = 1
let php_parent_error_open = 1
let g:PHP_autoformatcomment = 0
let php_folding = 0


" ----------------------------------------------------------------------------
" Abbreviations
" ----------------------------------------------------------------------------
iab debug $GLOBALS['debugger']->debug(print_r(, true));<esc><left><left><left><left><left><left><left><left>i


" ----------------------------------------------------------------------------
" Set filetype
" ----------------------------------------------------------------------------

au BufRead,BufNewFile *.tpl.xhtml set filetype=smarty 
au BufRead,BufNewFile *.tpl set filetype=smarty 


" ----------------------------------------------------------------------------
" Omni Completion
" ----------------------------------------------------------------------------
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS noci
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
"autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
" autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
" does that really work right now?
autocmd InsertLeave * if pumvisible() == 0|pclose|endif



" ----------------------------------------------------------------------------
" Status line
" ----------------------------------------------------------------------------
set laststatus=2            " always hide the status line
set showcmd                 " incomplete commands on

" Format the statusline
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ Line:\ %l/%L:%c

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


" ----------------------------------------------------------------------------
" General Mappings
" ----------------------------------------------------------------------------

" saving
nmap <leader>w :w!<cr>
imap <C-k> <esc>:w!<cr>
map <C-k> :w!<cr>


" splitting
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" When pressing <leader>cd switch to the directory of the open buffer
nnoremap <leader>cd :cd %:p:h<cr>:pwd<cr>

" ?????? Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" if line wraps over multiple lines dont move inside the current line
map j gj
map k gk

" close all open buffers
map <leader>ba :1,100 bd!<cr>

" moved between split windows
map <c-h> <c-w><c-h>
map <c-l> <c-w><c-l>
"map <c-k> <c-w><c-k>
map <c-j> <c-w><c-j>

"map <c-n> :cn<cr>
"map <c-p> :cp<cr>


" Use the arrows to something usefull
" map <right> :bn<cr>
" map <left> :bp<cr>
map <tab> :bn<cr>
map <S-tab> :bp<cr>

" show bufferlist
map <leader>l :ls<cr>

" move to first char of line instead of char 1
map 0 g^

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z


" delete buffers, search in text
map <leader>g :vim //gj **/*.*<left><left><left><left><left><left><left><left><left><left>
map <leader>bd :Bclose<cr>
map <leader>ba :1,1000 bd!<cr>
map <leader><space> :vim //gj %<left><left><left><left><left>
