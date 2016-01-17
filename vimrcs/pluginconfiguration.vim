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


" ----------------------------------------------------------------------------
" 'stephpy/vim-php-cs-fixer' <leader>pcd, <leader>pcf
" ----------------------------------------------------------------------------
" wget http://get.sensiolabs.org/php-cs-fixer.phar
"If php-cs-fixer is in $PATH, you don't need to define line below
" let g:php_cs_fixer_path = "~/php-cs-fixer.phar" " define the path to the php-cs-fixer.phar
let g:php_cs_fixer_level = "symfony"              " which level ?
let g:php_cs_fixer_config = "default"             " configuration
let g:php_cs_fixer_php_path = "php"               " Path to PHP
" If you want to define specific fixers:
"let g:php_cs_fixer_fixers_list = "linefeed,short_tag,indentation"
let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.
