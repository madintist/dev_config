-- Neovim Plugins
-- Managed w/ Packer
return require('packer').startup(function(use)
	-- Packer
	use 'wbthomason/packer.nvim'

	-- Themes
	use 'morhetz/gruvbox'

	-- Indent Guides
	use 'nathanaelkane/vim-indent-guides'

	-- NERDTree
	use 'preservim/nerdtree'

	-- Telescope
	use {
		'nvim-treesitter/nvim-treesitter',
		cmd = 'TSUpdate'
	}
	use 'nvim-telescope/telescope.nvim'
	use 'nvim-lua/plenary.nvim'
end)
