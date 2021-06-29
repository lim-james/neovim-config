""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Author: 
"     James Lim - @lim-james
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


call plug#begin(stdpath('data') . '/plugged')

" conquer of completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" nerdtree for navigation
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'

" lightline
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'

" VSCode Ctrl-P
Plug 'kien/ctrlp.vim'

" commentary
Plug 'tpope/vim-commentary'

" colorscheme
Plug 'morhetz/gruvbox'

call plug#end()

