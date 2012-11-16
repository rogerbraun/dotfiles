" See here for reference http://amix.dk/vim/vimrc.html
set nocompatible

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundles

Bundle "Lokaltog/vim-powerline"
Bundle "scrooloose/syntastic"
Bundle "altercation/vim-colors-solarized"
Bundle "kien/ctrlp.vim"
Bundle 'Shougo/neocomplcache.git'
Bundle 'Shougo/neosnippet.git'

set t_Co=256
let g:solarized_termcolors=256

filetype plugin on
filetype indent on

set autoread

let mapleader = ","
let g:mapleader = ","

set ignorecase
set smartcase
set hlsearch
set incsearch

set showmatch

syntax enable
set background=dark
colorscheme solarized

set encoding=utf-8

set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

set ai
set si
set wrap
" Always show the status line
set laststatus=2

set cursorline

set backspace=indent,eol,start
set nu
set wildmenu
set list
set listchars=tab:,.,trail:.,extends:#,nbsp:.

let g:neocomplcache_enable_at_startup = 1
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" backup to ~/.tmp 
set backup 
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set backupskip=/tmp/*,/private/tmp/* 
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set writebackup
