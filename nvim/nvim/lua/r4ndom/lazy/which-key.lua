return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		-- Popup layout: "classic" (full-width bar), "modern" (bottom window),
		-- "helix" (compact box in the bottom-right corner).
		preset = "classic",
		-- Milliseconds before the popup opens; typing faster never shows it.
		delay = 500,
		-- Report overlapping or broken mappings via vim.notify.
		notify = true,
		plugins = {
			marks = true, -- list marks on ' and `
			registers = true, -- list registers on " (normal) and <C-r> (insert)
			spelling = {
				enabled = true, -- pick spelling suggestions on z=
				suggestions = 20,
			},
			presets = {
				operators = true, -- d, y, c, ...
				motions = true, -- w, b, e, ...
				text_objects = true, -- iw, a(, ... after an operator
				windows = true, -- <C-w>
				nav = true, -- window navigation
				z = true, -- folds, spelling, scrolling
				g = true, -- g-prefixed builtins
			},
		},
		icons = {
			mappings = true, -- icons next to labels, served by mini.icons
		},
		-- One letter per domain under <leader>. Single keys (w save, q quit,
		-- e explorer, y/Y clipboard, g git, s cloak) stay top-level because they are the
		-- most frequent. Groups without mappings in the current buffer are hidden.
		spec = {
			{ "<leader>f", group = "find (telescope)" },
			{ "<leader>c", group = "code (lsp, format, diagnostics)" },
			{ "<leader>h", group = "harpoon (pinned files)" },
			{ "<leader>o", group = "obsidian (vault notes)" },

			-- Neovim's built-in LSP mappings, relabelled.
			{ "gr", group = "lsp (goto & actions)" },
			{ "grn", desc = "Rename symbol" },
			{ "gra", desc = "Code action", mode = { "n", "x" } },
			{ "grr", desc = "Go to references" },
			{ "gri", desc = "Go to implementation" },
			{ "grt", desc = "Go to type definition" },
			{ "grx", desc = "Run codelens" },
			{ "gO", desc = "Document symbols" },

			{ "[", group = "previous (diagnostic, trouble, quickfix, link)" },
			{ "]", group = "next (diagnostic, trouble, quickfix, link)" },
		},
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Show buffer-local keymaps",
		},
	},
}
