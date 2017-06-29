execute pathogen#infect()

filetype plugin indent on

syntax enable
color desert

set mouse=a                       " enable mouse
set foldmethod=indent             " enable folding by default
set foldlevelstart=20             " begin all windows with foldlevel=20
set wildmenu                      " enable wildmenu
set tags=./tags,tags;$HOME        " search for ctags
set timeoutlen=1000 ttimeoutlen=0 " remove insert -> normal mode lag
set cursorline                    " highlight current line
set ignorecase smartcase          " case-insensitive
set incsearch                     " search incrementally
set number                        " show line numbers
set smartindent                   " smartly indent?
set tabstop=2                     " tabs to spaces
set shiftwidth=2                  " tabs indent by 2 spaces
set expandtab                     " expand tabs to spaces
set clipboard=unnamed             " enable system clipboard
set laststatus=2                  " last window always has status line
set t_Co=256                      " enable 256 color mode
set noswapfile                    " do not create .swp files
let g:netrw_dirhistmax = 0        " do not create netrwhist file

" error-friendly writing, quitting
:command WQ wq
:command Wq wq
:command W w
:command Q q

" cursor highlighting
hi MatchParen cterm=bold ctermbg=darkgreen ctermfg=white
hi Cursor guifg=white guibg=black
hi iCursor guifg=white guibg=steelblue

" increase vertical movement
nnoremap <C-e>  5<C-e>
nnoremap <C-y>  5<C-y>

" tab control
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>
nnoremap <D-1> 1gt
nnoremap <D-2> 2gt
nnoremap <D-3> 3gt
nnoremap <D-4> 4gt
nnoremap <D-5> 5gt
nnoremap <D-6> 6gt

" add vim-BufSurf bindings
nnoremap <C-J> :BufSurfBack <CR>
nnoremap <C-k> :BufSurfForward <CR>
autocmd FileType nerdtree noremap <buffer> <C-j> :BufSurfBack <CR>
autocmd FileType nerdtree noremap <buffer> <C-k> :BufSurfForward <CR>

au InsertEnter * hi Normal guibg=#000000
au InsertLeave * hi Normal guibg=#1b1d1e

" select last pasted line in visual mode
nnoremap <expr> gb '`[' . strpart(getregtype(), 0, 1) . '`]'

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'        " set root searching directory according to root markers
let g:ctrlp_root_markers = ['package.json'] " look for package.json as marker for root directory
let g:ctrlp_switch_buffer = 'et'            " if file is already open, open in new pane
let g:ctrlp_custom_ignore = {
  \ 'dir':  'node_modules',
  \ }

" Syntastic config
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_enable_signs = 1

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

