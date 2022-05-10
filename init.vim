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
Plug 'dart-lang/dart-vim-plugin'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
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

let g:dart_style_guide = 2
let dart_html_in_string=v:true

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"imap <tab> <Plug>(coc-snippets-expand)
let g:UltiSnipsExpandTrigger = '<Nop>'
let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'

xmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)

let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-flutter',
  \ ]

nnoremap <c-f> :Ag<space>
nnoremap <F1> :NERDTree<Enter>
