execute pathogen#infect()

filetype plugin indent on

syntax enable
color desert

set mouse=a                       " enable mouse
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

" disable arrow keys in insert and normal modes
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

au InsertEnter * hi Normal guibg=#000000
au InsertLeave * hi Normal guibg=#1b1d1e

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" Syntastic config
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
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

