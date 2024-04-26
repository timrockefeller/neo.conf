vim.o.shell = 'pwsh'
vim.o.shellxquote = ''
vim.o.shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command '
vim.o.shellquote = ''
vim.o.shellpipe = '| Out-File -Encoding UTF8 %s'
vim.o.shellredir = '| Out-File -Encoding UTF8 %s'

local keymap = vim.keymap

_G.floaterm_shell = "pwsh"

keymap.set('n', '<F7>', '<cmd>FloatermNew<cr>')
keymap.set('t', '<F7>', '<cmd>FloatermNew<cr>')
keymap.set('n', '<F8>', '<cmd>FloatermNext<cr>')
keymap.set('t', '<F8>', '<cmd>FloatermNext<cr>')
keymap.set('n', '<F12>', '<cmd>FloatermToggle<cr>')
keymap.set('t', '<F12>', '<cmd>FloatermToggle<cr>')

