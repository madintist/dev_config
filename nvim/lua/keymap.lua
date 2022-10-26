-- Core
vim.keymap.set('n', '<space>bk', '<cmd>bdelete<CR>', { noremap = true })
vim.keymap.set('n', '<space>h', '<cmd>nohlsearch<CR>', { desc = 'Clear highlighted search results', noremap = true })

-- Scripts
vim.keymap.set('n', '<space>RN', '<cmd>!node -r dotenv/config % dotenv_config_path=.env<CR>', { noremap = true })

-- nvim-tree
vim.keymap.set('n', '<space>tt', '<cmd>NvimTreeToggle<CR>', { noremap = true })
vim.keymap.set('n', '<space>tf', '<cmd>NvimTreeFindFile<CR>', { noremap = true })

-- Telescope
vim.keymap.set('n', '<space>ff', '<cmd>Telescope find_files<CR>', { noremap = true })
vim.keymap.set('n', '<space>fg', '<cmd>Telescope live_grep<CR>', { noremap = true })
vim.keymap.set('n', '<space>bf', '<cmd>Telescope buffers<CR>', { noremap = true })
vim.keymap.set('n', '<space>fh', '<cmd>Telescope help_tags<CR>', { noremap = true })
vim.keymap.set('n', '<space>ls', '<cmd>Telescope lsp_document_symbols<CR>', { noremap = true })
