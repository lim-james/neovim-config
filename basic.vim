""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Author: 
"     James Lim - @lim-james
"
" Sections: 
"     -> General
"     -> VIM user interface 
"     -> Colors and Fonts
"     -> Files and backups
"     -> Text, tab and indent related
"     -> Moving around, tabs, windows and buffers
"     -> Helper functions
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set line numbers
set number
set relativenumber

" set number of commands and search patterns to retain
set history=50	

" TextEdit might fail if this is not set
set hidden

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" show current position
set cursorline

" give more space for messages
set cmdheight=1

" ignore case when searching
set ignorecase

" search with smart cases
set smartcase

" Having longer updatetime (default is 4000 ms = 4 s) leads
" to noticeable delays and poor user experience.
set updatetime=300

" changes special characters to be searchable
set magic


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" enable wider range of colors
set termguicolors

" enable syntax highlighting
syntax on

" set colorscheme
set background=dark
try
    let g:gruvbox_contrast_dark='hard'
    let g:gruvbox_contrast_dark='bg0'
    colorscheme gruvbox
catch
endtry

" extra options when running GUI
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" set utf8 standard encoding
set encoding=utf8


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" turn backup off
set nobackup
set nowb
set noswapfile


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" use spaces over tabs
set expandtab

" 4 spaces for tabs
set shiftwidth=4
set tabstop=4
set smartindent

" linebreaks after 90 characters
set lbr
set textwidth=90
set wrap


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" visual mode pressing * or # searches for the current selection
" idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Disable highlight when <leader><cr> is pressed
map <silent> <esc><esc> :noh<cr>

" smarter way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Managing tabs
map <tab>n :tabnew<cr>
map <tab>o :tabonly<cr>
map <tab>c :tabclose<cr>
" Navigating tabs
map <tab>h gT
map <tab>l gt
noremap <tab>1 1gt
noremap <tab>2 2gt
noremap <tab>3 3gt
noremap <tab>4 4gt
noremap <tab>5 5gt
noremap <tab>6 6gt
noremap <tab>7 7gt
noremap <tab>8 8gt
noremap <tab>9 9gt


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute normal! vgvy"

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(k:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("Ack '" . l:pattern . "' ")
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/' . l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:sved_reg
endfunction
