-- Requires
require('plugins')

-- Vim Core Settings
vim.opt.completeopt = menu,menuone,noselect
vim.opt.relativenumber = true
vim.opt.updatetime = 100

-- Keybindings
vim.keymap.set('n', '<leader><Space>', '<cmd>nohlsearch<CR>', { desc = 'Clear highlighted search results' })
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<CR>')
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<CR>')
vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<CR>')
vim.keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<CR>')
vim.keymap.set('n', '<leader>t', '<cmd>NERDTreeToggle<CR>')
vim.keymap.set('n', '<leader>f', '<cmd>NERDTreeFind<CR>')

-- Plugin Settings
vim.cmd [[silent! colorscheme gruvbox]]
vim.api.nvim_set_var('gruvbox_italic', '1')
vim.api.nvim_set_var('indent_guides_enable_on_vim_startup', 1)
