" HOUSEKEEPING  ---------------------------------------------------------------- {{{
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Disable compatibility with vi which can cause unexpected issues.
set nocompatible

"Enable type file detection. Vim will be able to try to detect the type of
"file in use.
filetype off

"Enable plugins and load plugin for the detected file type.
 filetype plugin on

"Load an indent file for the detected file type.
filetype indent on

"Turn syntax highlighting on.
syntax on

"Highlight cursor line underneath the cursor horizontally.
set cursorline

"Set shift width to 4 spaces.
set shiftwidth=4

"Set tab width to 4 columns.
set tabstop=4

"Use space characters instead of tabs.
set expandtab

"Ignore capital letters during search.
set ignorecase

"Override the ignorecase option if searching for capital letters.
"This will allow you to search specifically for capital letters.
set smartcase

"Use highlighting when doing a search.
set hlsearch

"Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
" }}}


" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')
Plugin 'VundleVim/Vundle.vim'
    Plug 'sheerun/vim-polyglot'


call plug#end()
filetype plugin indent on
" Use homebrew's clangd
let g:ycm_clangd_binary_path = trim(system('brew --prefix llvm')).'/bin/clangd'
" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

"Use the marker method of folding.
augroup filetype_vim
        autocmd!
            autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.

" }}}

