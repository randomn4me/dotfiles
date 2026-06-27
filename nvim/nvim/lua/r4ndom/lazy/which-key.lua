return {
	"folke/which-key.nvim",
	event = "VeryLazy",
    opts = {
        delay = 500,
        spec = {
            { "<leader>f", group = "find" },
            { "<leader>l", group = "lsp" },
        },
    },
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
}
