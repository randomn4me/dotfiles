return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("todo-comments").setup()

		vim.keymap.set("n", "<leader>ft", function()
			vim.cmd("TodoTelescope keywords=TODO")
		end, { desc = "Search TODOs via telescope" })

		vim.keymap.set("n", "<leader>fn", function()
			vim.cmd("TodoTelescope keywords=NOTE")
		end, { desc = "Search NOTEs via telescope" })
	end,
}
