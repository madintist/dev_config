" Joshua Kleveter
" @madintist everywhere

" Run Pathogen
execute pathogen#infect()

"---------------------|
" Basic Configuration |
"---------------------|

" Colors
colorscheme solarized " Use the Solarized colorscheme
set background=dark   " Use the dark version of Solarized
syntax enable         " Use syntax highlighting

" Folding
set foldenable        " Turn on code folding
set foldlevelstart=10 " Only hide deeply nested code by default
set foldmethod=indent " Fold code based on indentation
set foldnestmax=10    " Don't allow absurdly deep folding

" Indentation
filetype indent on " Turn on filetype based indentation
set tabstop=2      " Indent 2 spaces
set softtabstop=2  " Tab will indent by 2 spaces
set expandtab      " Force spaces instead of tabs

" Searching
set incsearch " Search as we enter characters
set hlsearch  " Highlight search results


" UI
set cursorline " Highlight the current line
set lazyredraw " Don't redraw the screen unless we have to
set number     " Show line numbers
set showcmd    " Show the last command that we ran
set showmatch  " Highlight matching braces and stuff
set wildmenu   " Use the wildmenu autocomplete with :e

"-------------|
" Keybindings |
"-------------|

nnoremap <leader><space> :nohlsearch<CR> " Turn off search highlighting
nnoremap <leader>a :Ack
nnoremap <leader>u :MundoToggle<CR>      " Toggle Mundo undo panel

"----------------------|
" Plugin Configuration |
"----------------------|

" Ack / Ag
let g:ackprg = 'ag --vimgrep' " Use Ag in place of Ack

" CtrlP
let g:ctrlp_match_window = 'bottom,order:ttb'         " Order search from top to bottom
let g:ctrlp_switch_buffer = 0                         " Open files in new buffers
let g:ctrlp_working_path_mode = 0                     " Allow working path changes
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""' " Use Ag to search
