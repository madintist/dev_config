" Vim Plug
call plug#begin(stdpath('data') . '/plugged')
	" Themes
	Plug 'morhetz/gruvbox'

	" Tools
	" - LSP
	Plug 'neovim/nvim-lspconfig'
	Plug 'nvim-lua/completion-nvim'
	" - NERDTree
	Plug 'preservim/nerdtree'
	" - Telescope
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'nvim-lua/plenary.nvim'
call plug#end()


" Plugin Settings

" Gruvbox
let g:gruvbox_italic = '1'

" NERDTree
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


" General Settings
colorscheme gruvbox
set relativenumber
