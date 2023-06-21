" Set the default indentation to 2 spaces
set tabstop=2       " The width of a TAB is set to 2.
set shiftwidth=2    " Indents will have a width of 2.
set softtabstop=2   " Sets the number of spaces in a tab while editing.
set expandtab       " Expand tabs to spaces

" Enable file type detection
filetype plugin indent on

" Load the indent file according to detected filetype
if exists("+smartindent")
    " 'smartindent' is an oldstyle method of autoindenting, only use it when no
    " filetype plugin exists
    set smartindent
else
    filetype indent on
endif

set relativenumber
