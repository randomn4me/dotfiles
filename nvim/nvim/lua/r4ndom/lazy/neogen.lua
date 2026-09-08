return {
	"danymat/neogen",
	opts = { snippet_engine = "luasnip" },
	config = function(_, opts)
		require("neogen").setup(opts)

		vim.api.nvim_set_keymap(
			"n",
			"<Leader>n",
			":lua require('neogen').generate()<CR>",
			{ noremap = true, silent = true }
		)
	end,
}
