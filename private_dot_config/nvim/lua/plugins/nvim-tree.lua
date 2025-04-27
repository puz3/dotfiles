return {
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		keys = {
			{ "<leader>tt", "<cmd>NvimTreeToggle<cr>", desc = "Toggle nvim-tree" },
			{ "<leader>tF", "<cmd>NvimTreeFocus<cr>", desc = "Focus nvim-tree" },
			{ "<leader>tf", "<cmd>NvimTreeFindFile<cr>", desc = "Find in nvim-tree" },
		},
		config = function()
			require("nvim-tree").setup({})
		end,
	},
}
