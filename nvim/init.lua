-- Requires
require('plugins')
require('lsp')

-- Vim Core Settings
vim.opt.completeopt = menu,menuone,noselect
vim.opt.relativenumber = true
vim.opt.updatetime = 100

-- Keybindings
vim.keymap.set('n', '<space>h', '<cmd>nohlsearch<CR>', { desc = 'Clear highlighted search results', noremap = true })
vim.keymap.set('n', '<space>ff', '<cmd>Telescope find_files<CR>', { noremap = true })
vim.keymap.set('n', '<space>fg', '<cmd>Telescope live_grep<CR>', { noremap = true })
vim.keymap.set('n', '<space>fb', '<cmd>Telescope buffers<CR>', { noremap = true })
vim.keymap.set('n', '<space>fh', '<cmd>Telescope help_tags<CR>', { noremap = true })
vim.keymap.set('n', '<space>t', '<cmd>NERDTreeToggle<CR>', { noremap = true })
vim.keymap.set('n', '<space>f', '<cmd>NERDTreeFind<CR>', { noremap = true })

-- Plugin Settings
vim.cmd [[silent! colorscheme gruvbox]]
vim.api.nvim_set_var('gruvbox_italic', '1')
vim.api.nvim_set_var('indent_guides_enable_on_vim_startup', 1)
