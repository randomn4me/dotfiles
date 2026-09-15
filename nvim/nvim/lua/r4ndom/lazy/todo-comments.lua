return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	event = { "BufReadPost", "BufNewFile" },
	cmd = { "TodoTelescope", "TodoTrouble", "TodoQuickFix", "TodoLocList" },
	keys = {
		{
			"<leader>ft",
			function()
				vim.cmd("TodoTelescope keywords=TODO")
			end,
			desc = "Search TODOs via telescope",
		},
		{
			"<leader>fn",
			function()
				vim.cmd("TodoTelescope keywords=NOTE")
			end,
			desc = "Search NOTEs via telescope",
		},
	},
	opts = {},
}
