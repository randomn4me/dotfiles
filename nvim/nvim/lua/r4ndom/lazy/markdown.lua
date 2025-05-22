return {
	"tadmccorkle/markdown.nvim",
	ft = "markdown", -- or 'event = "VeryLazy"'
	config = {
		on_attach = function(bufnr)
			local map = vim.keymap.set
			local opts = { buffer = bufnr }
			map("n", "<CR>", "<Cmd>MDTaskToggle<CR>", opts)
		end,
	},
	opts = {
		mappings = {
			inline_surround_toggle = "gs",
			inline_surround_toggle_line = "gss",
			inline_surround_delete = "ds",
			inline_surround_change = "cs",
			link_add = "gl",
			link_follow = "gx", -- (string|boolean) follow link
			go_next_heading = "]]", -- (string|boolean) set cursor to next section heading
			go_prev_heading = "[[", -- (string|boolean) set cursor to previous section heading
		},
		inline_surround = {
			emphasis = {
				key = "i",
				txt = "*",
			},
			strong = {
				key = "b",
				txt = "**",
			},
			strikethrough = {
				key = "s",
				txt = "~~",
			},
			code = {
				key = "c",
				txt = "`",
			},
		},
		link = {
			paste = {
				enable = true, -- whether to convert URLs to links on paste
			},
		},
		toc = {
			-- Comment text to flag headings/sections for omission in table of contents.
			omit_heading = "toc omit heading",
			omit_section = "toc omit section",
			-- Cycling list markers to use in table of contents.
			-- Use '.' and ')' for ordered lists.
			markers = { "-" },
		},
	},
}
