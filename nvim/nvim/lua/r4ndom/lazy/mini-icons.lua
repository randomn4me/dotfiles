return {
	"nvim-mini/mini.icons",
	lazy = false,
	opts = {},
	config = function(_, opts)
		require("mini.icons").setup(opts)
		-- Stand in for nvim-web-devicons so lualine and oil need only one icon provider.
		MiniIcons.mock_nvim_web_devicons()
	end,
}
