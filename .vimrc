" --------------------------------------------------------
" VIM Config for my development environment
" --------------------------------------------------------

" Disabled compatibility with vi
set nocompatible

" Enable type file detection
filetype on

" Eanble plugins and load plugin for detected file type
filetype plugin on

" Load an indent file for detected file type
filetype indent on

" Set syntax highlighting
syntax on

" Turn line numbers at the left-side
set number

" Highlight cursor line
set cursorline

" Seting molokai as color scheme
colorscheme molokai

" Set shift width to 2 spaces
set shiftwidth=2

" Set tab width to 2 spaces
set tabstop=2

" Use space characters instead of tabs
set expandtab

" Do not save backup files
set nobackup

" Do not let cursor scrollbar or adove N number of line when scrolling
set scrolloff=10

" Do no wrap lines
set nowrap

" While searching highlight characters
set incsearch

" Ignore capitals letters during search
set ignorecase

" Override ignore case option if searching capital letters
set smartcase

" Show partial command typed in the last line of the screen
set showcmd

" Show matching words during a search
set showmatch

" Set command history buffer
set history=1000

" Enable auto completion menu after pressing <TAB>
set wildmenu

" Make wildmenu behave like similar to bash completing
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" PLUGINS ---------------------------------------------------------------- {{{


" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.

" }}}

