" See here for reference http://amix.dk/vim/vimrc.html
set shell=/bin/bash
set encoding=utf-8
scriptencoding utf-8
set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'

" Plugins

Plugin 'thoughtbot/vim-rspec'
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/syntastic'
Plugin 'https://github.com/scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
" Plugin 'Shougo/neocomplcache.git'
" Plugin 'Shougo/neosnippet.git'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'majutsushi/tagbar'
Plugin 'nono/vim-handlebars'
" Plugin 'https://github.com/kchmck/vim-coffee-script.git'
Plugin 'https://github.com/aghareza/vim-gitgrep.git'
Plugin 'https://github.com/tpope/vim-fugitive'
Plugin 'https://github.com/vim-scripts/Specky.git'
" Plugin 'MattesGroeger/vim-bookmarks'

call vundle#end()
filetype plugin indent on

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

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
let g:rspec_command = "!bundle exec rspec {spec}"
let g:airline_powerline_fonts = 1

noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>

let g:UltiSnipsExpandTrigger="<c-s>"
map <Leader>n :NERDTreeToggle<CR>
