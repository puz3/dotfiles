return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			"<leader>F",
			function()
				require("conform").format({ async = true })
			end,
			mode = "",
			desc = "Format buffer",
		},
	},
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "black" },
			javascript = { "prettier" },
			swift = { "swiftformat" },
			yaml = { "yamlfmt" },
			json = { "jq" },
		},
		formatters = {
			swiftformat = {
				prepend_args = { "--config", "~/.config/swiftformat/.swiftformat" },
			},
		},
	},
}
