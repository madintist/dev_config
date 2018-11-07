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
autocmd BufEnter * :syntax sync fromstart " Automatically sync syntax highlighting
colorscheme solarized                     " Use the Solarized colorscheme
set background=dark                       " Use the dark version of Solarized
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
set modelines=1           " Look for modelines in files
set scrolloff=10          " Show 10 lines of context around cursor when scrolling
" }}}

" Highlighting {{{
highlight Comment cterm=italic
highlight Statement cterm=italic
highlight Type cterm=italic
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
set cursorline     " Highlight the current line
set lazyredraw     " Don't redraw the screen unless we have to
set relativenumber " Show line numbers
set showcmd        " Show the last command that we ran
set showmatch      " Highlight matching braces and stuff
set wildmenu       " Use the wildmenu autocomplete with :e
" }}}

" }}}


" Keybindings {{{

nnoremap <leader><space> :nohlsearch<CR>             " Turn off search highlighting
nnoremap <leader>a :Ack
nnoremap <leader>n :call ToggleRelativeNumbers()<CR> " Toggle normal / relative line numbers
nnoremap <leader>s :syntax sync fromstart<CR>        " Re-sync syntax highlighting
nnoremap <leader>u :MundoToggle<CR>                  " Toggle Mundo undo panel

" }}}


" Plugin Configuration {{{

" Ack / Ag {{{
let g:ackprg = 'ag --vimgrep' " Use Ag in place of Ack
" }}}

" ALE {{{
let g:ale_fixers = {
      \ 'c': ['clang-format'],
      \ 'javascript': ['prettier-standard'],
      \ 'php': ['phpcbf'],
      \}
let g:ale_linters = {
      \ 'javascript': [''],
      \ 'php': ['phpcs'],
      \}
let g:ale_fix_on_save = 1                                " Fix files on save
let g:ale_c_clangformat_options = '--style="LLVM"'       " Use LLVM style formatting
" }}}

" CtrlP {{{
let g:ctrlp_match_window = 'bottom,order:ttb'         " Order search from top to bottom
let g:ctrlp_switch_buffer = 0                         " Open files in new buffers
let g:ctrlp_working_path_mode = 0                     " Allow working path changes
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""' " Use Ag to search
" }}}

" Deoplete {{{
let g:deoplete#enable_at_startup = 1                   " Turn on Deoplete
let g:deoplete#sources = {}                            " Make sources a thing!
let g:deoplete#sources.javascript = ['LanguageClient'] " Use LangageClient for JavaScript completion
" }}}

" GitGutter {{{
set updatetime=100 " Update GitGutter signs more often
" }}}

" JavaScript {{{
augroup javascript_folding        " Turn on code folding
  au!
  au FileType javascript setlocal foldmethod=syntax
augroup END
let g:javascript_plugin_jsdoc = 1 " Turn on JSDoc syntax highlighting
" }}}

" JavaScript Libraries Syntax {{{
let g:used_javascript_libs = 'jquery,underscore,chai,handlebars,vue' " Turn on the libraries that we use
" }}}

" LanguageClient {{{
set hidden

let g:LanguageClient_serverCommands = {
      \ 'javascript': ['javascript-typescript-stdio'],
      \ 'javascript.jsx': ['javascript-typescript-stdio'],
      \}
" }}}

" NERDTree {{{
nnoremap <silent> <Leader>f :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>

let NERDTreeAutoDeleteBuffer = 1 " Automatically delete buffers for files we delete in NERDTree.
let NERDTreeQuitOnOpen = 1 " Close NERDTree when we open a file.
" }}}

" }}}


" vim:foldmethod=marker:foldlevel=0
