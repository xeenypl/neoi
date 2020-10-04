call plug#begin('~/.local/vim/plugged')
"    Plug 'dense-analysis/ale'
    Plug 'mattn/emmet-vim'

    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    Plug 'dhruvasagar/vim-table-mode'
    Plug 'sheerun/vim-polyglot'
    Plug 'terryma/vim-multiple-cursors'

call plug#end()

set listchars=eol:¬,tab:>·
set list

set number
set nowrap
set undofile 
set undodir=~/.local/vim/undodir
set tabstop=4 
set shiftwidth=4 
set expandtab
set ignorecase
set smartcase
"set foldmethod=indent
set laststatus=0

match ErrorMsg '\%>80v.\+'

" workman bindings for hjkl as neoi
" normal mode
nnoremap n h
nnoremap N 0
nnoremap e gj
nnoremap E <C-F>
nnoremap o gk
nnoremap O <C-B>
nnoremap i l
nnoremap I $

" visual mode
vnoremap n h
vnoremap e j
vnoremap o k
vnoremap i l

nnoremap j o
nnoremap l i
nnoremap L I
nnoremap k n
nnoremap K N
nnoremap h e

let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-k>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-k>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

" remaping visual mode to s 
nnoremap s      v
nnoremap S      V
vnoremap s      v
vnoremap S      V
nnoremap <C-S> <C-V>
vnoremap <C-S> <C-V>

nnoremap t      <esc>:q<cr>
nnoremap T      <esc>:q!<cr>

command W w
command Wq wq

vnoremap <Tab>      >gv
vnoremap <S-Tab>    <gv

nnoremap ;          :
vnoremap ;          :

nnoremap <C-N>      <C-W><C-H>
nnoremap <C-E>      <C-W><C-J>
nnoremap <C-O>      <C-W><C-K>
nnoremap <C-I>      <C-W><C-L>

nnoremap <C-P>      :Files<CR>
nnoremap <C-B>      :Buffers<CR>
"nnoremap <C-S>      :Rg<CR>

let g:fzf_preview_window = 'right:60%'

" let g:ale_completion_enabled = 1
" let g:ale_fix_on_save = 1
" let b:ale_linters = {
" \    'c': ['gcc']
" \}
" let g:ale_fixers = {
" \   '*': ['remove_trailing_lines', 'trim_whitespace'],
" \   'html': ['prettier'],
" \}

set fillchars+=vert:│

set background=dark
set cursorline
highlight clear
syntax reset

highlight Boolean            ctermbg=NONE         ctermfg=darkgreen
highlight Character          ctermbg=NONE         ctermfg=darkgreen
highlight ColorColumn        ctermbg=white        ctermfg=red
highlight Comment            ctermbg=NONE         ctermfg=darkgray
highlight Condtional         ctermbg=NONE         ctermfg=red
highlight Constant           ctermbg=NONE         ctermfg=red
highlight Cursor             ctermbg=NONE         ctermfg=NONE
highlight CursorLine         ctermbg=NONE         cterm=bold
highlight Debug              ctermbg=white        ctermfg=NONE
highlight Define             ctermbg=NONE         ctermfg=darkred
highlight Delimiter          ctermbg=NONE         ctermfg=blue
highlight DiffAdd            ctermbg=NONE         ctermfg=darkblue
highlight DiffChange         ctermbg=NONE         ctermfg=darkgreen
highlight DiffDelete         ctermbg=NONE         ctermfg=darkred
highlight DiffText           ctermbg=NONE         ctermfg=white
highlight Directory          ctermbg=NONE         ctermfg=darkred
highlight Error              ctermbg=NONE         cterm=bold
highlight ErrorMsg           ctermbg=NONE         ctermfg=darkred
highlight Exception          ctermbg=NONE         ctermfg=darkred
highlight Float              ctermbg=NONE         ctermfg=darkgreen
highlight FoldColumn         ctermbg=NONE         ctermfg=white
highlight Folded             ctermbg=NONE         ctermfg=white
highlight Function           ctermbg=NONE         ctermfg=red
highlight Identifier         ctermbg=NONE         ctermfg=white
highlight Include            ctermbg=NONE         ctermfg=red
highlight IncSearch          ctermbg=white        ctermfg=NONE
highlight Keyword            ctermbg=NONE         ctermfg=darkred
highlight Label              ctermbg=NONE         ctermfg=darkred
highlight LineNr             ctermbg=NONE         ctermfg=red
highlight Macro              ctermbg=NONE         ctermfg=red
highlight MatchParen         ctermbg=white        ctermfg=NONE
highlight MoreMsg            ctermbg=NONE         ctermfg=white
highlight NonText            ctermbg=NONE         ctermfg=red
highlight Normal             ctermbg=NONE         ctermfg=white
highlight Number             ctermbg=NONE         ctermfg=darkgreen
highlight Operator           ctermbg=NONE         ctermfg=blue
highlight PreCondit          ctermbg=NONE         ctermfg=darkred
highlight PreProc            ctermbg=NONE         ctermfg=white
highlight Pmenu              ctermbg=gray         ctermfg=black
highlight PmenuSel           ctermbg=white        ctermfg=black
highlight PmenuSbar          ctermbg=gray         ctermfg=black
highlight Pmenuthumb         ctermbg=gray         ctermfg=black
highlight Question           ctermbg=NONE         ctermfg=blue
highlight Repeat             ctermbg=NONE         ctermfg=darkred
highlight Search             ctermbg=darkred      ctermfg=NONE
highlight SpecialChar        ctermbg=NONE         ctermfg=darkred
highlight SpecialComment     ctermbg=NONE         ctermfg=darkred
highlight Special            ctermbg=NONE         ctermfg=darkred
highlight SpecialKey         ctermbg=NONE         ctermfg=gray
highlight SpellBad           ctermbg=red          ctermfg=white
highlight SpellCap           ctermbg=NONE         ctermfg=darkred
highlight SpellLocal         ctermbg=NONE         ctermfg=darkred
highlight SpellRare          ctermbg=NONE         ctermfg=white
highlight Statement          ctermbg=NONE         ctermfg=darkred
highlight StatusLine         ctermbg=NONE         ctermfg=NONE
highlight StorageClass       ctermbg=NONE         ctermfg=Red
highlight String             ctermbg=NONE         ctermfg=darkgreen
highlight Structure          ctermbg=NONE         ctermfg=darkgreen
highlight TabLineFill        ctermbg=NONE         ctermfg=white
highlight Tag                ctermbg=NONE         ctermfg=blue
highlight Title              ctermbg=NONE         ctermfg=blue
highlight Todo               ctermbg=NONE         ctermfg=red
highlight Type               ctermbg=NONE         ctermfg=blue
highlight Typedef            ctermbg=NONE         ctermfg=darkgreen
highlight VertSplit          ctermbg=white        ctermfg=black
highlight Visual             ctermbg=darkgray     ctermfg=NONE
highlight VisualNOS          ctermbg=NONE         ctermfg=white
highlight WildMenu           ctermbg=NONE         ctermfg=white
highlight WarningMsg         ctermbg=NONE         ctermfg=red

highlight def link diffCommon   Statement
highlight def link diffRemoved  DiffDelet
highlight def link diffChanged  DiffChang
highlight def link diffAdded    DiffAdd
