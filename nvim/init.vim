" Vim Plug
call plug#begin(stdpath('data') . '/plugged')
	" Themes
	Plug 'morhetz/gruvbox'

	" Tools
	" - Editorconfig
	Plug 'editorconfig/editorconfig-vim'
	" - Indent Guides
	Plug 'nathanaelkane/vim-indent-guides'
	" - LSP
	Plug 'neovim/nvim-lspconfig'
	Plug 'jose-elias-alvarez/null-ls.nvim'
	Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'
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

" Indent Guides
let g:indent_guides_enable_on_vim_startup = 1

" NERDTree
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


" General Settings
colorscheme gruvbox
set relativenumber
