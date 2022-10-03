" Vim Plug
call plug#begin(stdpath('data') . '/plugged')
	" Themes
	Plug 'morhetz/gruvbox'

	" Tools
	" - Editorconfig
	Plug 'editorconfig/editorconfig-vim'
	" - ESLint
	Plug 'eslint/eslint'
	" - GitGutter
	Plug 'airblade/vim-gitgutter'
	" - Indent Guides
	Plug 'nathanaelkane/vim-indent-guides'
	" - NERDTree
	Plug 'preservim/nerdtree'
	" - Svelte
	Plug 'evanleck/vim-svelte'
	" - Telescope
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'nvim-lua/plenary.nvim'
call plug#end()


" General Settings
colorscheme gruvbox
set completeopt=menu,menuone,noselect
set relativenumber
set updatetime=100

" Gruvbox
let g:gruvbox_italic = '1'

" Indent Guides
let g:indent_guides_enable_on_vim_startup = 1

" Keybindings
nnoremap <leader><Space> <cmd>nohlsearch<CR>

nnoremap <leader>ff <cmd>Telescope find_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<CR>
nnoremap <leader>fb <cmd>Telescope buffers<CR>
nnoremap <leader>fh <cmd>Telescope help_tags<CR>

nnoremap <leader>t <cmd>NERDTreeToggle<CR>
nnoremap <leader>f <cmd>NERDTreeFind<CR>
