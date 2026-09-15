return {
	"danymat/neogen",
	cmd = "Neogen",
	keys = {
		{
			"<leader>cn",
			function()
				require("neogen").generate()
			end,
			desc = "Generate doc annotation (neogen)",
		},
	},
	opts = { snippet_engine = "nvim" },
}
