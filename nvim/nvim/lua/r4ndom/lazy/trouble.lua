return {
	"folke/trouble.nvim",
	config = function()
		require("trouble").setup()

		vim.keymap.set("n", "<leader>fd", function()
			require("trouble.sources.telescope").open("diagnostics")
		end, { desc = "Search diagnostics" })
		vim.keymap.set("n", "[t", function()
			require("trouble").next({ skip_groups = true, jump = true })
		end, { desc = "Next trouble item" })
		vim.keymap.set("n", "]t", function()
			require("trouble").previous({ skip_groups = true, jump = true })
		end, { desc = "Prev trouble item" })
	end,
}
