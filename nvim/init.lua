require('keymap')
require('load-plugins')
require('lsp')
require('nvim-cmp')

-- Vim Core Settings
vim.opt.completeopt = 'menu,menuone,noselect'
vim.opt.relativenumber = true
vim.opt.updatetime = 100

-- Plugin Settings
vim.cmd [[silent! colorscheme gruvbox]]
vim.api.nvim_set_var('gruvbox_italic', '1')
vim.api.nvim_set_var('indent_guides_enable_on_vim_startup', 1)
