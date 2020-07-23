set nocompatible              
set mouse =n
filetype off                  
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'dracula/vim'

Plugin 'preservim/nerdtree'

Plugin 'Royal-Colorschemes'

Plugin 'powerline/powerline'

Plugin 'vim-airline/vim-airline'

Plugin 'ryanoasis/vim-devicons'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'scrooloose/syntastic'

Plugin 'msanders/snipmate.vim'

Plugin 'jiangmiao/auto-pairs'

Plugin 'junegunn/fzf'

Plugin 'joshdick/onedark.vim'

call vundle#end()            

filetype plugin indent on  

filetype plugin indent on    " required
let g:Powerline_symbols = 'fancy'
set number
syntax enable
set guicursor=i:ver25-iCursor
set autoindent
"colorscheme dracula
colorscheme onedark
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

autocmd FileType python map <buffer> <F6> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F6> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>


"fuzzy finder search addition 
nnoremap <silent> <C-f> :FZF<CR>

"navigate back 
nnoremap <silent> <C-b> :bp<CR>

"vertical split
nnoremap <C-v> : vsplit 
nnoremap <C-h> : split

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
