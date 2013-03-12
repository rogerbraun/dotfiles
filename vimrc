" See here for reference http://amix.dk/vim/vimrc.html
set encoding=utf-8
scriptencoding utf-8
set nocompatible

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundles

Bundle "Lokaltog/vim-powerline"
Bundle "scrooloose/syntastic"
Bundle 'https://github.com/scrooloose/nerdtree'
Bundle "altercation/vim-colors-solarized"
Bundle "kien/ctrlp.vim"
Bundle 'Shougo/neocomplcache.git'
Bundle 'Shougo/neosnippet.git'
Bundle 'majutsushi/tagbar'
Bundle 'https://github.com/kchmck/vim-coffee-script.git'
Bundle 'https://github.com/aghareza/vim-gitgrep.git'
Bundle 'https://github.com/tpope/vim-fugitive'

set t_Co=256

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

" Theme stuff
let g:solarized_termcolors=256
set background=dark
colorscheme solarized


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
set listchars=tab:>>,trail:.,extends:#,nbsp:.

" backup to ~/.tmp 
set backup 
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set backupskip=/tmp/*,/private/tmp/* 
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set writebackup

"" Plugin stuff

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

nmap <Leader>t :TagbarToggle<CR>
