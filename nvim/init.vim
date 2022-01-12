" Vim Plug
call plug#begin(stdpath('data') . '/plugged')
	" Themes
	Plug 'morhetz/gruvbox'

	" Tools
	" - CMP
	Plug 'hrsh7th/cmp-nvim-lsp'
	Plug 'hrsh7th/cmp-buffer'
	Plug 'hrsh7th/cmp-path'
	Plug 'hrsh7th/cmp-cmdline'
	Plug 'hrsh7th/nvim-cmp'
	" - Editorconfig
	Plug 'editorconfig/editorconfig-vim'
	" - ESLint
	Plug 'eslint/eslint'
	" - Fugitive
	Plug 'tpope/vim-fugitive'
	" - GitGutter
	Plug 'airblade/vim-gitgutter'
	" - Indent Guides
	Plug 'nathanaelkane/vim-indent-guides'
	" - LSP
	Plug 'neovim/nvim-lspconfig'
	" - NERDTree
	Plug 'preservim/nerdtree'
	" - Svelte
	Plug 'evanleck/vim-svelte'
	" - Telescope
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'nvim-lua/plenary.nvim'
	" - Vsnip
	Plug 'hrsh7th/cmp-vsnip'
	Plug 'hrsh7th/vim-vsnip'
call plug#end()


" General Settings
colorscheme gruvbox
set completeopt=menu,menuone,noselect
set relativenumber
set updatetime=100


" Plugin Settings

" CMP
lua require("cmp-config")

" Gruvbox
let g:gruvbox_italic = '1'

" Indent Guides
let g:indent_guides_enable_on_vim_startup = 1

" LSP
lua << EOF
require'lspconfig'.jsonls.setup{}
require'lspconfig'.tsserver.setup{}
EOF


" Keybindings
nnoremap <leader><Space> <cmd>nohlsearch<CR>

nnoremap <leader>ff <cmd>Telescope find_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<CR>
nnoremap <leader>fb <cmd>Telescope buffers<CR>
nnoremap <leader>fh <cmd>Telescope help_tags<CR>

nnoremap <leader>t <cmd>NERDTreeToggle<CR>
nnoremap <leader>f <cmd>NERDTreeFind<CR>

nnoremap <F2> <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <F12> <cmd>lua vim.lsp.buf.definition()<CR>
