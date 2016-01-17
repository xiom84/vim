" ----------------------------------------------------------------------------
" Nerdtree
" ----------------------------------------------------------------------------
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>

let NERDTreeDirArrows=1


" ----------------------------------------------------------------------------
" Ctrl-P
" ----------------------------------------------------------------------------
"map <leader>p :CtrlP<cr>
"imap <c-p> <esc>:CtrlP<cr>
"map <c-p> :CtrlP<cr>

"let g:ctrlp_working_path_mode = 0
"let g:ctrlp_map = '<c-f>'
"map <c-b> :CtrlPBuffer<cr>

"let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'sessions\|^\.git\'

" ----------------------------------------------------------------------------
" Gundo
" ----------------------------------------------------------------------------
nnoremap <F5> :GundoToggle<cr>


" ----------------------------------------------------------------------------
" Syntastic
" ----------------------------------------------------------------------------
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0



" ----------------------------------------------------------------------------
" 'othree/javascript-libraries-syntax.vim'
" ----------------------------------------------------------------------------
let g:used_javascript_libs = 'jquery,handlebars'


" ----------------------------------------------------------------------------
" 'junegunn/vim-easy-align'
" ----------------------------------------------------------------------------
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)


" ----------------------------------------------------------------------------
" 'StanAngeloff/php.vim', { 'for': 'php' }
" ----------------------------------------------------------------------------
function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END


" ----------------------------------------------------------------------------
" 'ap/vim-buftabline'
" ----------------------------------------------------------------------------
let g:buftabline_numbers=1              " show buffernr



" ----------------------------------------------------------------------------
" 'SirVer/ultisnips'
" 'sniphpets/sniphpets'
" 'sniphpets/sniphpets-symfony'
" ----------------------------------------------------------------------------
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" ----------------------------------------------------------------------------
" Easy motion
" ----------------------------------------------------------------------------
"nmap <Leader>f <Plug>(easymotion-f)
map <leader><leader> <Plug>(easymotion-prefix)


