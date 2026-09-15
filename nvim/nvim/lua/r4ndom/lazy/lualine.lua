return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-mini/mini.icons" },
	event = "VeryLazy",
	config = function()
		require("lualine").setup({
			options = {
				theme = "tokyonight",
			},
		})
	end,
}
