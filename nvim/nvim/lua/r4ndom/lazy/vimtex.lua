return {
	"lervag/vimtex",
	lazy = false,
	ft = "tex",
	config = function()
		vim.api.nvim_create_autocmd({ "FileType" }, {
			group = vim.api.nvim_create_augroup("lazyvim_vimtex_conceal", { clear = true }),
			pattern = { "bib", "tex" },
			callback = function()
				vim.wo.conceallevel = 0
			end,
		})

		-- Label vimtex's <localleader>l mappings for which-key, only in LaTeX buffers.
		vim.api.nvim_create_autocmd("FileType", {
			pattern = "tex",
			callback = function(args)
				require("which-key").add({
					buffer = args.buf,
					{ "<localleader>l", group = "latex (vimtex)" },
					{ "<localleader>ll", desc = "Compile (continuous)" },
					{ "<localleader>lL", desc = "Compile selection" },
					{ "<localleader>lS", desc = "Compile once (single shot)" },
					{ "<localleader>lk", desc = "Stop compiler" },
					{ "<localleader>lK", desc = "Stop all compilers" },
					{ "<localleader>lv", desc = "View PDF" },
					{ "<localleader>le", desc = "Show errors (quickfix)" },
					{ "<localleader>lo", desc = "Show compiler output" },
					{ "<localleader>lq", desc = "Show log" },
					{ "<localleader>lt", desc = "Open table of contents" },
					{ "<localleader>lT", desc = "Toggle table of contents" },
					{ "<localleader>lc", desc = "Clean aux files" },
					{ "<localleader>lC", desc = "Clean aux files and PDF" },
					{ "<localleader>lg", desc = "Compiler status" },
					{ "<localleader>lG", desc = "Compiler status (all)" },
					{ "<localleader>li", desc = "Info" },
					{ "<localleader>lI", desc = "Info (full)" },
					{ "<localleader>la", desc = "Context menu" },
					{ "<localleader>lm", desc = "List insert-mode maps" },
					{ "<localleader>ls", desc = "Toggle main file" },
					{ "<localleader>lx", desc = "Reload vimtex" },
					{ "<localleader>lX", desc = "Reload vimtex state" },
				})
			end,
		})
		vim.g.vimtex_mappings_disable = { ["n"] = { "K" } } -- disable `K` as it conflicts with LSP hover

		vim.g.vimtex_view_method = "general"
		vim.g.vimtex_view_general_viewer = "open"
		vim.g.vimtex_view_general_options = "-a Preview @pdf"

		vim.g.vimtex_compiler_latexmk = { out_dir = "out", aux_dir = "out" }
		vim.g.vimtex_log_ignore = { -- Suppress specific log messages
			"Underfull",
			"Overfull",
			"specifier changed to",
			"Token not allowed in a PDF string",
			"multiply defined",
		}
		vim.g.vimtex_quickfix_ignore = vim.g.vimtex_log_ignore
		vim.g.tex_flavor = "latex"
	end,
}
