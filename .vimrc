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

call vundle#end()            " required
filetype plugin indent on    " required

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
