set encoding=utf-8 nobomb
" scriptencoding utf-8


""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""

set history=700

syntax on

set lbr


"let mapleader = ","
"let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursors when moving vertical...
set scrolloff=8
set sidescrolloff=16

set title

set ruler                   "Always show current position


set synmaxcol=512           "dont syntax highlight long lines

set completeopt-=preview

set colorcolumn=80
"set cursorline

set whichwrap+=<,>,h,l

set mat=2 "How many tenths of a second to blink

" No sound on errors
set noerrorbells
set novisualbell
set t_vb=
set ttyfast
set lazyredraw
set tm=500

""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
""""""""""""""""""""""""""""""""""""""""""""""""""""

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
set guioptions=M
  
"set gfn=Bitstream\ Vera\ Sans\ Mono:h10

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm




""""""""""""""""""""""""""""""""""""""""""""""""""""
" Status line - most of this is handled by vim-airline
""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2
set showcmd                 " incomplete commands on


""""""""""""""""""""""""""""""""""""""""""""""""""""
" Wild and file globbing
""""""""""""""""""""""""""""""""""""""""""""""""""""
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

""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoread                    " reload files if they were edited elsewhere

set fileformats=unix,dos,mac "Default file types
set fileformat=unix

" Turn backup off
set nobackup
set nowritebackup
set noswapfile

""""""""""""""""""""""""""""""""""""""""""""""""""""
" => splits and buffers
""""""""""""""""""""""""""""""""""""""""""""""""""""
set splitbelow
set splitright
set fillchars=vert:\|

set hidden                     "Change buffer - without saving

" reveal already opened files from the quickfix window instead of opening new buffers
set switchbuf=useopen

""""""""""""""""""""""""""""""""""""""""""""""""""""
" => trailing whitespace
""""""""""""""""""""""""""""""""""""""""""""""""""""
set list
set listchars=""                    " reset
set listchars=tab:→\ 
set listchars+=trail:·
set listchars+=extends:»              " show cut off when nowrap
set listchars+=precedes:«



""""""""""""""""""""""""""""""""""""""""""""""""""""
" => diffing
""""""""""""""""""""""""""""""""""""""""""""""""""""

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
  autocmd vimrc VimResized * :wincmd =

  " see after/ftplugin/*.vim for more filetype specific stuff
endif

" leave this down here since it trims local settings
set secure                            " no unsafe local vimrc commands


""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f', '')<CR>
vnoremap <silent> # :call VisualSelection('b', '')<CR>


map j gj
map k gk

" Easy motion
"nmap <Leader>f <Plug>(easymotion-f)
map <leader><leader> <Plug>(easymotion-prefix)


" close all open buffers
map <leader>ba :1,100 bd!<cr>

map <c-h> <c-w><c-h>
map <c-l> <c-w><c-l>
"map <c-k> <c-w><c-k>
map <c-j> <c-w><c-j>

"save file
imap <C-k> <esc>:w!<cr>
map <C-k> :w!<cr>

"map <c-n> :cn<cr>
"map <c-p> :cp<cr>


"list buffers

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Really useful!
"  In visual mode when you press * or # to search for the current selection
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use the arrows to something usefull
" map <right> :bn<cr>
" map <left> :bp<cr>
map <tab> :bn<cr>
map <S-tab> :bp<cr>

map <leader>l :ls<cr>

map 0 g^

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove<cr>
map <leader>t<leader> :tabnext

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MinibufExpl
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1 

set nonu


" When pressing <leader>cd switch to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>

" Specify the behavior when switching between buffers 
try
set switchbuf=usetab
set stal=2
catch
endtry

""""""""""""""""""""""""""""""
" => Statusline
""""""""""""""""""""""""""""""
" Always hide the statusline
set laststatus=2

" Format the statusline
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ Line:\ %l/%L:%c


function! HasPaste()
  if &paste
      return 'PASTE MODE  '
  else
      return ''
  endif
endfunction


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Omni complete functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MISC
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => PHP RELATED
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let php_sql_query = 1
let php_baselib = 1
let php_htmlInStrings = 1
let php_asp_tags = 1
let php_parent_error_open = 1
let g:PHP_autoformatcomment = 0
let php_folding = 0


"imap <C-l> <esc>:reg<cr>
"map <C-l> :reg<cr>
"imap <C-l> <esc>:copen<cr>
"map <C-l> :copen<cr>
"imap <C-;> <esc>:cclose<cr>
"map <C-;> :cclose<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Omni-Complete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS noci
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
"autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP

autocmd FileType c set omnifunc=ccomplete#Complete

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
" autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"""""""""
" Folding
" """"""""
"map ,f :set foldmethod=indent<cr>zM<cr>
"map ,F :set foldmethod=manual<cr>zR<cr>

"""""""""
" Yankring
" """"""""
" nnoremap <silent> <F11> :YRShow<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>

let NERDTreeDirArrows=1
" Do not synchronize nerd tree tabs
"let g:nerdtree_tabs_synchronize_view = 0
"
"netrw
"current working dir
"nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
"nnoremap <leader>lcd :lcd %:p:h<CR>:pwd<CR>

"map <leader>ne :e.<cr>
"map <leader>ns :sp.<cr>
"map <leader>nv :vs.<cr>

"file dir
"map <leader>nE :E<cr>
"map <leader>nS :Se<cr>
"map <leader>nV :Vex<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vimgrep searching and cope displaying
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" When you press gv you vimgrep after the selected text
vnoremap <silent> gv :call VisualSelection('gv', '')<CR>

map <leader>g :vim //gj **/*.*<left><left><left><left><left><left><left><left><left><left>
map <leader>bd :Bclose<cr>
map <leader>ba :1,1000 bd!<cr>

""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
"map <leader>p :CtrlP<cr>
"imap <c-p> <esc>:CtrlP<cr>
"map <c-p> :CtrlP<cr>

"let g:ctrlp_working_path_mode = 0
"let g:ctrlp_map = '<c-f>'
"map <c-b> :CtrlPBuffer<cr>

"let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'sessions\|^\.git\'


map <leader><space> :vim //gj %<left><left><left><left><left>

iab xd $GLOBALS['debugger']->debug(print_r(, true));<esc><left><left><left><left><left><left><left><left>i

au BufRead,BufNewFile *.tpl.xhtml set filetype=smarty 
au BufRead,BufNewFile *.tpl set filetype=smarty 


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction 

function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.' . a:extra_filter)
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE '
    en
    return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction

nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

"set relativenumber
set number

"map <F5> <Esc>:EnableFastPHPFolds<Cr>
"map <F6> <Esc>:EnablePHPFolds<Cr>
"map <F7> <Esc>:DisablePHPFolds<Cr> 

nnoremap <F5> :GundoToggle<cr>


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0


map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'othree/javascript-libraries-syntax.vim'
""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:used_javascript_libs = 'jquery,handlebars'


""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'junegunn/vim-easy-align'
""""""""""""""""""""""""""""""""""""""""""""""""""""
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)


""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'StanAngeloff/php.vim', { 'for': 'php' }
""""""""""""""""""""""""""""""""""""""""""""""""""""
function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END


""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'ap/vim-buftabline'
""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:buftabline_numbers=1              " show buffernr



""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'SirVer/ultisnips'
" Plug 'sniphpets/sniphpets'
" Plug 'sniphpets/sniphpets-symfony'
""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
