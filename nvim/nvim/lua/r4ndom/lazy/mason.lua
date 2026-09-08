return {
	"mason-org/mason.nvim",
	lazy = false,
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = { "tinymist" },
        })
    end,
}
