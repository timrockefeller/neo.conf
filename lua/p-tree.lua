-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

require("bufferline").setup()
require("nvim-tree").setup({
	sort_by = "case_sensitive",
	actions = {
		open_file = { quit_on_open = true }
	},
	update_focused_file = {
		enable = true,
		update_cwd = true
	},
	view = {
		adaptive_size = true,
		mappings = {
			list = {
				{ key = "u", action = "dir_up" },
			},
		},
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
		custom = { '^node_modules$' }
	},
	git = {
		enable = true,
	},
	log = {
		enable = true,
		types = {
			diagnostics = true
		}
	},
	diagnostics = {
		enable = true
	}

})

vim.keymap.set('n', '<c-e>', '<cmd>NvimTreeToggle<cr>')
