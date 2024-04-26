vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use {
        'akinsho/bufferline.nvim',
        tag = "v3.*",
        requires = 'nvim-tree/nvim-web-devicons'
    }
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }
    --[[use {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/nvim-cmp'
    }]]
    use {
        "L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*"
    }
    use {
        'neoclide/coc.nvim', branch = 'master', run = 'yarn install --frozen-lockfile'
    }
    use {
        "nvim-tree/nvim-tree.lua"
    }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use {
        'phaazon/hop.nvim',
        branch = 'v2'
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {
        'echasnovski/mini.nvim',
        branch = 'stable'
    }
    use({
        "Pocco81/true-zen.nvim",
        config = function() require("true-zen").setup() end,
    })
    use {
        "uga-rosa/ccc.nvim"
    }
    -- theme
    use {
        'sainnhe/everforest',
        'Shadorain/shadotheme',
        'xiyaowong/nvim-transparent'
    }
    -- text
    use {
        'rmagatti/alternate-toggler',
        'windwp/nvim-autopairs',
        'mg979/vim-visual-multi',
        'gcmt/wildfire.vim',
        'tpope/vim-surround'
    }
    use 'voldikss/vim-floaterm'
end)
