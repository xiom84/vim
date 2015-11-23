"execute pathogen#infect()
""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""

set history=700

syntax on

" Set to auto read when a file is changed from the outside
set autoread

"let mapleader = ","
"let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursors when moving vertical...
set so=7

set wildmenu "Turn on Wild menu
set ruler "Always show current position

set hid "Change buffer - without saving

"Set backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase "Ignore case when searching
set smartcase

set hlsearch "Highlight search things

set incsearch "Make search act like search in modern browsers

set showmatch "Show matching bracets when text indicator is over them
set mat=2 "How many tenths of a second to blink

"set foldcolumn=1

" No sound on errors
set noerrorbells
set novisualbell
set t_vb=
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
set encoding=utf8

set ffs=unix,dos,mac "Default file types

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm


""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off
set nobackup
set nowb
set noswapfile


""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
     
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap

"set wrap "Wrap lines

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
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

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
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
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
set wildignore+=*/vendor/**
set wildignore+=*/app/cache/**


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
