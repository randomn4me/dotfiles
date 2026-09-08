return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {
        view_options = {
            show_hidden = true,
        },
    },
	-- Optional dependencies
	dependencies = { "nvim-mini/mini.icons" },
	-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
	lazy = false,
	keys = {
		{ "<leader>e", "<cmd>Oil<cr>", desc = "Open Oil" },
	},
}
