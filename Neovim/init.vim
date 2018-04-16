" Joshua Kleveter
" @madintist everywhere

" Run Pathogen
execute pathogen#infect()


" Custom Functions {{{

" Toggle normal / relative line numbers
function! ToggleRelativeNumbers() " {{{
        if(&relativenumber == 1)
                set norelativenumber
                set number
        else
                set relativenumber
        endif
endfunc " }}}

" }}}


" Basic Configuration {{{

" Backups {{{
set backup
set backupdir=~/.nvim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.nvim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
" }}}

" Colors {{{
colorscheme solarized " Use the Solarized colorscheme
set background=dark   " Use the dark version of Solarized
syntax enable         " Use syntax highlighting
" }}}

" Folding {{{
set foldenable        " Turn on code folding
set foldlevelstart=10 " Only hide deeply nested code by default
set foldmethod=indent " Fold code based on indentation
set foldnestmax=10    " Don't allow absurdly deep folding
" }}}

" General {{{
set modelines=1  " Look for modelines in files
set scrolloff=10 " Show 10 lines of context around cursor when scrolling
" }}}

" Indentation {{{
filetype indent on " Turn on filetype based indentation
set tabstop=2      " Indent 2 spaces
set softtabstop=2  " Tab will indent by 2 spaces
set expandtab      " Force spaces instead of tabs
" }}}

" Searching {{{
set incsearch " Search as we enter characters
set hlsearch  " Highlight search results
" }}}

" UI {{{
set cursorline " Highlight the current line
set lazyredraw " Don't redraw the screen unless we have to
set number     " Show line numbers
set showcmd    " Show the last command that we ran
set showmatch  " Highlight matching braces and stuff
set wildmenu   " Use the wildmenu autocomplete with :e
" }}}

" }}}


" Keybindings {{{

nnoremap <leader><space> :nohlsearch<CR>             " Turn off search highlighting
nnoremap <leader>a :Ack
nnoremap <leader>n :call ToggleRelativeNumbers()<CR> " Toggle normal / relative line numbers
nnoremap <leader>u :MundoToggle<CR>                  " Toggle Mundo undo panel

" }}}


" Plugin Configuration {{{

" Ack / Ag {{{
let g:ackprg = 'ag --vimgrep' " Use Ag in place of Ack
" }}}

" ALE {{{
let g:ale_fixers = {'javascript': ['prettier-standard']} " Use prettier-standard for JavaScript
let g:ale_linters = {'javascript': ['']}
let g:ale_fix_on_save = 1                                " Fix files on save
" }}}

" CtrlP {{{
let g:ctrlp_match_window = 'bottom,order:ttb'         " Order search from top to bottom
let g:ctrlp_switch_buffer = 0                         " Open files in new buffers
let g:ctrlp_working_path_mode = 0                     " Allow working path changes
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""' " Use Ag to search
" }}}

" GitGutter {{{
set updatetime=100 " Update GitGutter signs more often
" }}}

" LanguageClient {{{
set hidden

let g:LanguageClient_serverCommands = {
                        \ 'javascript': ['javascript-typescript-stdio'],
                        \ 'javascript.jsx': ['javascript-typescript-stdio'],
                        \}
" }}}

" }}}


" vim:foldmethod=marker:foldlevel=0
