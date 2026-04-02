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
			template = "journaling.md",
		},

		disable_frontmatter = true,

		completion = {
			nvim_cmp = true,
			min_chars = 2,
		},

		mappings = {
			["gf"] = {
				action = function()
					return require("obsidian").util.gf_passthrough()
				end,
				opts = { noremap = false, expr = true, buffer = true },
			},
		},

		follow_url_func = function(url)
			vim.ui.open(url) -- need Neovim 0.10.0+
		end,

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
				new = "<C-n>",
				insert_link = "<C-l>",
			},
		},
	},
	keys = {
		{ "<leader>oa", "<cmd>ObsidianOpen<cr>", desc = "Open in Obsidian App" },
		{ "<leader>on", "<cmd>ObsidianNew<cr>", desc = "Obsidian New" },
		{ "<leader>of", "<cmd>ObsidianQuickSwitch<cr>", desc = "Obsidian Quick Switch" },
		{ "<leader>ot", "<cmd>ObsidianTemplate<cr>", desc = "Obsidian Templates" },
		{ "<leader>ob", "<cmd>ObsidianBacklinks<cr>", desc = "Obsidian Backlinks" },
		{ "<leader>od", function()
			local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
			local row
			for i, line in ipairs(lines) do
				if line:match("^%d%d%d%d%-%d%d%-%d%d$") then
					row = i - 1
					break
				end
			end
			if not row then
				row = vim.api.nvim_win_get_cursor(0)[1] - 1
			end
			vim.api.nvim_buf_set_lines(0, row, row, false, { os.date("%Y-%m-%d"), "", "" })
			vim.api.nvim_win_set_cursor(0, { row + 2, 0 })
			vim.cmd("startinsert")
		end, desc = "Insert today's date" },
	},
}

-- Obsidian additional syntax features require 'conceallevel' to be set to 1 or 2, but you have 'conceallevel' set to '0'.
-- See https://github.com/epwalsh/obsidian.nvim/issues/286 for more details.
-- If you don't want Obsidian's additional UI features, you can disable them and suppress this warning by setting 'ui.enable = false' in your Obsidian nvim config.
