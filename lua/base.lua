vim.api.nvim_command('set runtimepath^=~/.vim')
vim.api.nvim_command('let &packpath = &runtimepath')
--vim.api.nvim_command('language ja')
local opt = vim.opt

opt.number = true
--opt.relativenumber = true

vim.scriptencoding = 'utf-8'
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'

opt.scrolloff = 5
opt.sidescrolloff = 5

opt.hlsearch = true
opt.incsearch = true
opt.mouse = 'a'
opt.clipboard:append('unnamedplus')

opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4

opt.expandtab = true
opt.ignorecase = true
opt.smartcase = true

opt.swapfile = false
opt.autoread = true
vim.bo.autoread = true

opt.signcolumn = 'yes'
opt.list = true
opt.cursorline = true

vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 300
        })
    end
})

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1