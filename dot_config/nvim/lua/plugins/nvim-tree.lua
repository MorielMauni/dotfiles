-- ~/.config/nvim/lua/plugins/nvim-tree.lua
return {
	"nvim-tree/nvim-tree.lua",
	config = function()
		require("nvim-tree").setup({
			view = { width = 30 },
			renderer = {
				icons = { show = { folder = true, file = true } },
			},
		})
		vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })
	end,
}
