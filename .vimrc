set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'preservim/nerdtree'

Plugin 'Royal-Colorschemes'

Plugin 'powerline/powerline'

Plugin 'majutsushi/tagbar'

Plugin 'octol/vim-cpp-enhanced-highlight'

Plugin 'raimondi/delimitmate'

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'dracula/vim'

Plugin 'ryanoasis/vim-devicons'

Plugin 'moll/vim-node'

Plugin 'scrooloose/syntastic'

Plugin 'terryma/vim-multiple-cursors'


call vundle#end()            " required
filetype plugin indent on    " required
let g:Powerline_symbols = 'fancy'
set number
syntax enable
set guicursor=i:ver25-iCursor
set autoindent
colorscheme dracula
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
set encoding=UTF-8
let g:airline_theme='solarized_flood'
nnoremap <F8> :!g++ -o  %:r.out % -std=c++14<Enter>
nnoremap <F9> :!./%:r.out
nnoremap <F5> :!python3 %
:autocmd BufNewFile *.cpp 0r ~/.vim/templates/skeleton.cpp

set hidden
set ignorecase
set wildmenu
set smartcase
set laststatus=2
set hlsearch
set incsearch
set cindent

map <C-t> :NERDTreeToggle<CR> " T for tree
" Opening nerd tree when opening a folder
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" Close vim if only nerdtree is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
