return {
	"epwalsh/obsidian.nvim",
	lazy = true,
	ft = "markdown",
	dependencies = {
		-- Required.
		"nvim-lua/plenary.nvim",
		"hrsh7th/nvim-cmp",
		"nvim-telescope/telescope.nvim",
		"nvim-treesitter",
	},
	opts = {
		workspaces = {
			{
				name = "personal",
				path = "~/Documents/obsidian",
			},
		},
		daily_notes = {
			-- Optional, if you keep daily notes in a separate directory.
			folder = "journal",
			date_format = "%Y-%m-%d",
			alias_format = "%B %-d, %Y",
			template = nil,
		},
		completion = {
			nvim_cmp = true,
			min_chars = 2,
		},
		templates = {
			subdir = "templates",
			date_format = "%Y-%m-%d",
			time_format = "%H:%M",
			-- A map for custom variables, the key should be the variable and the value a function
			substitutions = {},
		},
		note_id_func = function(title)
			return title
		end,
		picker = {
			name = "telescope.nvim",
			mappings = {
				new = "<C-x>",
				insert_link = "<localleader>l",
			},
		},
	},
}
