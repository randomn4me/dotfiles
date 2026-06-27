return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local ts = require("nvim-treesitter")

		local ensure_installed = {
			"vimdoc",
			"c",
			"lua",
			"rust",
			"jsdoc",
			"bash",
			"go",
			"markdown",
			"markdown_inline",
			"typst",
		}

		ts.install(ensure_installed)

		vim.treesitter.language.register("templ", "templ")

		-- Highlighting is provided by Neovim; enable it per filetype.
		vim.api.nvim_create_autocmd("FileType", {
			callback = function(args)
				local ft = vim.bo[args.buf].filetype
				-- vimtex owns LaTeX/BibTeX highlighting; treesitter conflicts with it.
				if ft == "tex" or ft == "bib" then
					return
				end
				local lang = vim.treesitter.language.get_lang(ft)
				if lang and vim.treesitter.language.add(lang) then
					vim.treesitter.start(args.buf, lang)
				end
			end,
		})
	end,
}
