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
		vim.g.vimtex_mappings_disable = { ["n"] = { "K" } } -- disable `K` as it conflicts with LSP hover

		vim.g.vimtex_view_method = "general"
		vim.g.latex_view_general_viewer = "zathura"

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
