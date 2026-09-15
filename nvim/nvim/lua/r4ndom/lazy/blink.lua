return {
	"saghen/blink.cmp",
	-- v2 is still landing breaking changes; upstream advises pinning to v1.
	version = "1.*",
	dependencies = {
		"petertriho/cmp-git",
	},
	event = { "InsertEnter", "CmdlineEnter" },
	opts = {
		-- Keys carried over from the previous nvim-cmp setup.
		keymap = {
			preset = "none",
			["<CR>"] = { "accept", "fallback" },
			["<Tab>"] = { "snippet_forward", "select_next", "fallback" },
			["<S-Tab>"] = { "snippet_backward", "select_prev", "fallback" },
			["<C-Space>"] = { "show", "show_documentation", "hide_documentation" },
			["<C-b>"] = { "scroll_documentation_up", "fallback" },
			["<C-f>"] = { "scroll_documentation_down", "fallback" },
		},

		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
			per_filetype = {
				gitcommit = { "git", "buffer" },
			},
			providers = {
				git = {
					name = "git",
					module = "cmp_git.blink",
				},
			},
		},

		completion = {
			menu = { border = "rounded" },
			documentation = { auto_show = true, window = { border = "rounded" } },
		},

		appearance = {
			kind_icons = {
				Text = "󰦨",
				Method = "",
				Function = "󰊕",
				Constructor = "",
				Field = "󰅪",
				Variable = "󱃮",
				Class = "",
				Interface = "",
				Module = "",
				Property = "",
				Unit = "",
				Value = "󰚯",
				Enum = "",
				Keyword = "",
				Snippet = "",
				Color = "󰌁",
				File = "",
				Reference = "",
				Folder = "",
				EnumMember = "",
				Constant = "󰀫",
				Struct = "",
				Event = "",
				Operator = "󰘧",
				TypeParameter = "",
			},
		},
	},
}
