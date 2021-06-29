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

" VSCode Ctrl-P
Plug 'kien/ctrlp.vim'

" lightline
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'

" colorscheme
Plug 'morhetz/gruvbox'

call plug#end()

