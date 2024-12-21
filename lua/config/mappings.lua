-- [[Keymap Settings]]
-- vim.keymap.set({mode}, {lhs}, {rhs}, {opts})

-- Leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- map leader+w to save current file in normal mode
vim.keymap.set('n', '<Leader>w', ':write<CR>', { noremap = true, silent = true })

-- exiting insert mode
vim.keymap.set('i', 'jj', '<Esc>') 

-- exiting terminal
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open diagnostic [E]rror list' })

vim.keymap.set('n', ']d', vim.diagnostic.get_next, { desc = 'Go to previous [D]iagnostics message' })
vim.keymap.set('n', '[d', vim.diagnostic.get_prev, { desc = 'Go to next [D]iagnostics message' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

