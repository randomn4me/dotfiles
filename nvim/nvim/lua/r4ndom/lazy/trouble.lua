return {
	"folke/trouble.nvim",
	cmd = "Trouble",
	keys = {
		{ "<leader>fd", "<cmd>Trouble diagnostics toggle<cr>", desc = "Toggle diagnostics" },
		{
			"]t",
			function()
				require("trouble").next({ skip_groups = true, jump = true })
			end,
			desc = "Next trouble item",
		},
		{
			"[t",
			function()
				require("trouble").prev({ skip_groups = true, jump = true })
			end,
			desc = "Prev trouble item",
		},
	},
	opts = {},
}
