--vim.g.mapleader = ''
local keymap = vim.keymap
keymap.set('n', '<leader>q', '<cmd>q<cr>')
keymap.set('n', '<leader>w', '<cmd>w<cr>')
keymap.set('n', '<leader>c', '<cmd>bd<cr>')
keymap.set('n', '<c-a>', 'gg<S-v>G')
keymap.set('n', 'F', ':vsplit<Return><C-w>w', { silent = true })
keymap.set('n', 'f', '<C-w>w')
keymap.set('n', '<C-Tab>', '<cmd>bn<cr>')
keymap.set('n', '<S-Tab>', '<cmd>bn<cr>')

keymap.set('n', 'H', '^')
keymap.set('n', 'L', '$')
