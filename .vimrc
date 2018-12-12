execute pathogen#infect()
filetype on
filetype plugin indent on

syntax on
set background=dark
colorscheme Tomorrow-Night
set number

let mapleader=","

set hidden
set history=100


" text formatting
filetype indent on
set textwidth=0 nosmartindent tabstop=2 shiftwidth=2 softtabstop=2 expandtab
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent


highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufWritePre * :%s/\s\+$//e

" search
set hlsearch
set incsearch
set ignorecase
set smartcase

nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

nnoremap <Leader><Leader> :e#<CR>
inoremap jk <esc>

set autowriteall

set showmatch
set backspace=indent,eol,start

map <leader>s :source ~/.vimrc<CR>

" command-t
set wildignore+=*.log,*.sql,*.cache,*/node_modules,*/reports,*/tmp/cache/*,*/tmp,.DS_Store

" nerdtree
let NERDTreeShowHidden=1
let NERDTreeRespectWildIgnore=1
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>j :NERDTreeFind<CR>

" fzf
set rtp+=/usr/local/opt/fzf
let g:fzf_action = {
  \ 's': 'vsplit',
  \ 'h': 'split' }
