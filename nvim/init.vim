" Vim Plug
call plug#begin(stdpath('data') . '/plugged')
	" Themes
	Plug 'morhetz/gruvbox'

	" LSP
	Plug 'neovim/nvim-lspconfig'
	Plug 'nvim-lua/completion-nvim'

	" UI
	Plug 'preservim/nerdtree'
call plug#end()


" Plugin Settings

" Gruvbox
let g:gruvbox_italic = '1'

" NERDTree
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


" General Settings
colorscheme gruvbox
set relativenumber
