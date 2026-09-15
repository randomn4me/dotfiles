return {
	"folke/trouble.nvim",
	cmd = "Trouble",
	keys = {
		{ "<leader>cd", "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics list (trouble)" },
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
