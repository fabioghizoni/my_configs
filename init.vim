call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'wellle/tmux-complete.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'nvie/vim-flake8'
call plug#end()

set completeopt=noinsert,menuone,noselect

colorscheme gruvbox
set background=dark 

set hidden
set inccommand=split
set expandtab
autocmd Filetype json setlocal ts=2 sw=2 sts=2 syntax=json
autocmd Filetype javascript setlocal ts=2 sw=2 sts=2 syntax=javascript
autocmd Filetype python setlocal sts=4 sw=4 wrap
autocmd Filetype lua setlocal sts=4 sw=4 syntax=lua

let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'

nnoremap <c-f> :Ag<space>
nnoremap <F1> :NERDTree<Enter>
