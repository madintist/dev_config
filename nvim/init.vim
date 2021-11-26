" Vim Plug
call plug#begin(stdpath('data') . '/plugged')
	Plug 'preservim/nerdtree'
call plug#end()

" General Settings
set relativenumber

" Plugin Settings

" NERDTree
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
