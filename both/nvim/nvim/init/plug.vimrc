
""" Vim-Plug
call plug#begin()

" Aesthetics - Main
Plug 'dracula/vim', { 'as': 'dracula' }
"Plug 'mangeshrex/uwu.vim', { 'as' : 'dracula' }
Plug 'mangeshrex/uwu.vim'
Plug 'marko-cerovac/material.nvim'
Plug 'shaunsingh/nord.nvim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bryanmylee/vim-colorscheme-icons'
Plug 'mhinz/vim-startify'
Plug 'junegunn/rainbow_parentheses.vim'

" Functionalities

" Glow to preview markdown
Plug 'ellisonleao/glow.nvim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mhinz/vim-signify'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'antoinemadec/FixCursorHold.nvim'

" 42 school
Plug 'pbondoer/vim-42heder'
Plug 'vim-syntastic/syntastic'
Plug 'alexandregv/norminette-vim'
call plug#end()
