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
                { key = "<C-E>", action = ""},
			},
		},
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = false,
		custom = { '^node_modules$', '^.git$', '^.svn$' }
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
	},
	remove_keymaps = {"<C-e>"}

})

vim.keymap.set('n', '<c-e>', '<cmd>NvimTreeToggle<cr>')

local function open_nvim_tree(data)

  -- buffer is a directory
  local directory = vim.fn.isdirectory(data.file) == 1

  if not directory then
    return
  end

  -- change to the directory
  vim.cmd.cd(data.file)

  -- open the tree
  require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
