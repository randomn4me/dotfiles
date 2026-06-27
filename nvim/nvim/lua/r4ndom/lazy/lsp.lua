return {
	"neovim/nvim-lspconfig",
	cmd = { "LspInfo", "LspInstall", "LspStart" },
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		{ "hrsh7th/cmp-nvim-lsp" },
		{ "williamboman/mason.nvim" },
		{ "williamboman/mason-lspconfig.nvim" },
	},
	init = function()
		vim.opt.signcolumn = "yes"
	end,
	opts = {
		diagnostics = { virtual_text = { prefix = "icons" } },
	},
	config = function()
		-- Configure ltex language server using new vim.lsp.config API
		vim.lsp.config.ltex = {
			filetypes = { "markdown", "tex", "text" },
			-- JDK 26 enforces JAXP entity-size limits that LanguageTool's bundled
			-- grammar.xml exceeds ("Could not activate rules"). Lift the limits.
			cmd_env = {
				JAVA_OPTS = table.concat({
					"-Djdk.xml.totalEntitySizeLimit=0",
					"-Djdk.xml.maxGeneralEntitySizeLimit=0",
					"-Djdk.xml.entityExpansionLimit=0",
				}, " "),
			},
			on_attach = function(client, bufnr)
				-- Your custom on_attach logic, such as keybindings or other features
				print("LTeX Language Server attached to buffer " .. bufnr)
			end,
		}

		-- Tinymist is the Typst language server (preview, completion,
		-- diagnostics, hover). Use its bundled formatter.
		vim.lsp.config.tinymist = {
			settings = {
				formatterMode = "typstyle",
			},
		}

		-- LspAttach is where you enable features that only work
		-- if there is a language server active in the file
		vim.api.nvim_create_autocmd("LspAttach", {
			desc = "LSP actions",
			callback = function(event)
				local opts = { buffer = event.buf }

				vim.keymap.set("n", "<leader>li", "<cmd>LspInfo<cr>", vim.tbl_extend("force", opts, { desc = "LSP info" }))

				vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", vim.tbl_extend("force", opts, { desc = "Hover docs" }))
				vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", vim.tbl_extend("force", opts, { desc = "Go to definition" }))
				vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", vim.tbl_extend("force", opts, { desc = "Go to declaration" }))
				vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", vim.tbl_extend("force", opts, { desc = "Go to implementation" }))
				vim.keymap.set("n", "go", "<cmd>lua vim.lsp.buf.type_definition()<cr>", vim.tbl_extend("force", opts, { desc = "Go to type definition" }))
				vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>", vim.tbl_extend("force", opts, { desc = "Go to references" }))
				vim.keymap.set("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>", vim.tbl_extend("force", opts, { desc = "Signature help" }))
				vim.keymap.set("n", "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", vim.tbl_extend("force", opts, { desc = "Rename symbol" }))
				vim.keymap.set("n", "<leader>c", "<cmd>lua vim.lsp.buf.code_action()<cr>", vim.tbl_extend("force", opts, { desc = "Code action" }))
			end,
		})
	end,
}
