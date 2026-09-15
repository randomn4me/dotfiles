return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	cmd = "Telescope",
	keys = {
		{
			"<leader>ff",
			function()
				require("telescope.builtin").find_files()
			end,
			desc = "Telescope find files",
		},
		{
			"<leader>fw",
			function()
				require("telescope.builtin").live_grep()
			end,
			desc = "Telescope live grep",
		},
		{
			"<leader>fh",
			function()
				require("telescope.builtin").help_tags()
			end,
			desc = "Telescope find help",
		},
		{
			"<leader>fs",
			function()
				require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") })
			end,
			desc = "Telescope grep string",
		},
	},
	config = function()
		require("telescope").setup({
			defaults = {
				layout_strategy = "horizontal",
				layout_config = {
					horizontal = {
						prompt_position = "top",
						preview_width = 0.6,
					},
					width = 0.8,
					height = 0.8,
				},
				sorting_strategy = "ascending",
				file_ignore_patterns = {
					"%.pdf$",
					"%.docx?$",
				},
			},
		})

		require("telescope").load_extension("fzf") -- native sorter; the Lua one lags on large repos
	end,
}
