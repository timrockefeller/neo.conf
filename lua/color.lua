vim.opt.termguicolors = true
vim.cmd('colorscheme shado')
--vim.cmd('hi Normal guibg=NONE')

vim.fn.sign_define({
    {
        name = 'DiagnosticSignError',
        text = 'E',
        texthl = 'DiagnosticSignError',
        linehl = 'ErrorLine'
    },

    {
        name = 'DiagnosticSignWarn',
        text = 'W',
        texthl = 'DiagnosticSignWarn',
        linehl = 'WarningLine'
    },
    {
        name = 'DiagnosticSignInfo',
        text = 'I',
        texthl = 'DiagnosticSignInfo',
        linehl = 'InfoLine'
    },
    {
        name = 'DiagnosticSignHint',
        text = 'H',
        texthl = 'DiagnosticSignHint',
        linehl = 'HintLine'
    }
})

require("ccc").setup()


require("transparent").setup({
    enable = true,
    extra_groups = {
        --"BufferLineTabClose",
        --"BufferlineBufferSelected",
        "BufferLineFill",
        "BufferLineBackground",
        "BufferLineSeparator",
        "BufferLineIndicatorSelected",
    },
    exclude = {},
    ignore_linked_group = true
})
