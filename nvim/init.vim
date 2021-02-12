" Do not use compat mode
set nocompatible

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

" ----------

" VimPlug {{{
call plug#begin('~/.local/share/nvim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'raimondi/delimitmate'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'heavenshell/vim-jsdoc', {
  \ 'for': ['javascript', 'javascript.jsx','typescript'],
  \ 'do': 'make install'
\}
Plug 'posva/vim-vue'
Plug 'valloric/youcompleteme'

call plug#end()
" }}}

" Plugin Configuration {{{

" Airline {{{
let g:airline_powerline_fonts = 1
let g_airline_theme = 'gruvbox'
" }}}

" CtrlP {{{
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
" }}}

" Deoplete {{
let g:deoplete#enable_at_startup = 1
" }}

" Gruvbox {{{
let g:gruvbox_bold = 1
let g:gruvbox_italic = 1
" }}}

" Javascript {{{
let g:javascript_plugin_jsdoc = 1
" }}}

" }}}

" ----------

" Basic Configuration {{{

" Backups {{{
set backup
set backupdir=~/.nvim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.nvim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
" }}}

" Colors {{{
autocmd BufEnter * :syntax sync fromstart " Automatically sync syntax highlighting
colorscheme nord
syntax enable                             " Use syntax highlighting
" }}}

" Folding {{{
set foldenable        " Turn on code folding
set foldlevelstart=10 " Only hide deeply nested code by default
set foldmethod=indent " Fold code based on indentation
set foldnestmax=10    " Don't allow absurdly deep folding
" }}}

" General {{{
filetype plugin indent on " Set filetype based plugins and indentation to on
set colorcolumn=80        " Show a ruler at column 80
set modelines=1           " Look for modelines in files
set scrolloff=10          " Show 10 lines of context around cursor when scrolling
" }}}

" Highlighting {{{
highlight Comment cterm=italic
highlight Statement cterm=italic
highlight Type cterm=italic
highlight Todo cterm=standout
" }}}

" Indentation {{{
set expandtab      " Force spaces instead of tabs
set shiftwidth=2   " Indent 2 spaces
set smarttab       " Automatically go to the correct indent
set softtabstop=0  " Turn off tab indentation completely
set tabstop=2      " Indent 2 spaces
" }}}

" Searching {{{
set incsearch " Search as we enter characters
set hlsearch  " Highlight search results
" }}}

" UI {{{
" set cursorline     " Highlight the current line
set lazyredraw     " Don't redraw the screen unless we have to
set relativenumber " Show line numbers
set showcmd        " Show the last command that we ran
set showmatch      " Highlight matching braces and stuff
set wildmenu       " Use the wildmenu autocomplete with :e
" }}}

" }}}

" ----------

" Neovim Configuration {{{
let g:python3_host_prog = '/usr/local/bin/python3'
" }}}

" Keybindings {{{

" General {{{
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <leader>n :call ToggleRelativeNumbers()<CR>
nnoremap <leader>s :syntax sync fromstart<CR>
" }}}

" NERDTree {{{
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
" }}}

" }}}

" vim:foldmethod=marker:foldlevel=0
