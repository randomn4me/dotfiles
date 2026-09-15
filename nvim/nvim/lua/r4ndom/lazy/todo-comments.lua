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
			desc = "Find TODO comments",
		},
		{
			"<leader>fn",
			function()
				vim.cmd("TodoTelescope keywords=NOTE")
			end,
			desc = "Find NOTE comments",
		},
	},
	opts = {},
}
