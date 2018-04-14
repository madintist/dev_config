" Joshua Kleveter
" @madintist everywhere

" Run Pathogen
execute pathogen#infect()

" Colors
colorscheme solarized " Use the Solarized colorscheme
set background=dark   " Use the dark version of Solarized
syntax enable         " Use syntax highlighting

" Indentation
set tabstop=2      " Indent 2 spaces
set softtabstop=2  " Tab will indent by 2 spaces
set expandtab      " Force spaces instead of tabs

filetype indent on " Turn on filetype based indentation

" UI
set cursorline " Highlight the current line
set number     " Show line numbers
set showcmd    " Show the last command that we ran
set wildmenu   " Use the wildmenu autocomplete with :e
