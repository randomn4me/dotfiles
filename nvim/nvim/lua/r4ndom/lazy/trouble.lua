return {
	"folke/trouble.nvim",
	cmd = "Trouble",
	keys = {
		{
			"<leader>fd",
			function()
				require("trouble.sources.telescope").open("diagnostics")
			end,
			desc = "Search diagnostics",
		},
		{
			"[t",
			function()
				require("trouble").next({ skip_groups = true, jump = true })
			end,
			desc = "Next trouble item",
		},
		{
			"]t",
			function()
				require("trouble").prev({ skip_groups = true, jump = true })
			end,
			desc = "Prev trouble item",
		},
	},
	opts = {},
}
