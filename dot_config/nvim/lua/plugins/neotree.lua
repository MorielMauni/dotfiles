return {
	"nvim-neo-tree/neo-tree.nvim",
	opts = {
		window = {
			mappings = {
				["<Left>"] = "close_node", -- Collapse folder
				["<Right>"] = "open", -- Open folder or file
				["<Up>"] = "prev_node",
				["<Down>"] = "next_node",
				["<CR>"] = "open",
			},
		},
		filesystem = {
			filtered_items = {
				visible = true,
				hide_dotfiles = false,
				hide_gitignored = false,
			},
			follow_current_file = {
				enabled = true,
				leave_dirs_open = false,
			},
			bind_to_cwd = true,
		},
	},
}
