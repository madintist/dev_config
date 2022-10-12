-- Neovim Plugins
-- Managed w/ Packer
return require('packer').startup(function(use)
	-- Packer
	use 'wbthomason/packer.nvim'

	-- Themes
	use 'morhetz/gruvbox' -- Gruvbox

	-- LSP
	use 'neovim/nvim-lspconfig'

	-- CMP
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'

	-- Languages
	use 'evanleck/vim-svelte' -- Svelte

	-- Git
	use {
		'lewis6991/gitsigns.nvim',
		config = function()
			require('gitsigns').setup()
		end
	}

	-- Indent Guides
	use 'nathanaelkane/vim-indent-guides'

	-- nvim-tree
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons'
		}
	}

	-- Telescope
	use {
		'nvim-treesitter/nvim-treesitter',
		cmd = 'TSUpdate'
	}
	use 'nvim-telescope/telescope.nvim'
	use 'nvim-lua/plenary.nvim'
end)
