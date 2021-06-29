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

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" floaterm
Plug 'voldikss/vim-floaterm'

" lightline
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'

" commentary
Plug 'tpope/vim-commentary'

" colorscheme
Plug 'sainnhe/gruvbox-material'

call plug#end()

