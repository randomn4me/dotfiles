return {
	"jackMort/ChatGPT.nvim",
	event = "VeryLazy",
	ft = { "tex" },
	opts = {
		openai_params = {
			model = "gpt-4-1106-preview",
			frequency_penalty = 0,
			presence_penalty = 0,
			max_tokens = 4095,
			temperature = 0.2,
			top_p = 0.1,
			n = 1,
		},
		api_key_cmd = "rbw get openai-nvim-api",
	},
	dependencies = {
		"MunifTanjim/nui.nvim",
		"nvim-lua/plenary.nvim",
		"folke/trouble.nvim",
		"nvim-telescope/telescope.nvim",
	},
}
