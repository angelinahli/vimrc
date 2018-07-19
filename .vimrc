"" ==> General
set history=500           " set how many lines of history to remember
set hidden                " hide buffers instead of closing
set wildmenu              " Better command line completion
set showcmd               " Show partial commands in lastline of screen
set number                " show line numbers on the left
set wrap linebreak nolist " wrap lines at space
set breakindent           " set indent wrapping
set ruler                 " show cursor position in status bar
set foldmethod=indent     " set folding
set encoding=utf-8        " set encoding
set textwidth=80          " set text width
set ignorecase            " case insensitive search unless using cap chars
set smartcase             " search functionality
set nostartofline         " stop some mvmts go start of line?
set confirm               " ask to save changed files

" make vertical line and set highlight options
set colorcolumn=80
hi ColorColumn ctermbg=Magenta guibg=Magenta

" colorscheme
" syntax enable
" colorscheme monokai

" highlighting cursor line
set cursorline
hi CursorLine cterm=none guibg=Black ctermbg=Black

" setting tabs
set shiftwidth=4 softtabstop=0 expandtab smarttab
autocmd fileType html setlocal tabstop=2 shiftwidth=2 expandtab smarttab
autocmd fileType js setlocal ts=2 sw=2 expandtab smarttab
autocmd fileType css setlocal ts=2 sw=2 expandtab smarttab

" folds
augroup AutoSaveFolds
    autocmd!
    autocmd BufWinLeave * mkview
    autocmd BufWinEnter * silent loadview
augroup END

" set auto complete
autocmd FileType python setlocal completeopt-=preview

" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'davidhalter/jedi-vim'     " tab completion
Plug 'ervandew/supertab'        " tab completion
Plug 'tpope/vim-sensible'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-surround'
Plug 'Valloric/MatchTagAlways'  " match html tags
Plug 'sickill/vim-monokai'      " color scheme
Plug 'scrooloose/nerdcommenter' " commenting
Plug 'tmhedberg/SimpylFold'     " set folding
Plug 'tpope/vim-abolish'        " better text editing
Plug 'godlygeek/tabular'        " better aligning text

call plug#end()
