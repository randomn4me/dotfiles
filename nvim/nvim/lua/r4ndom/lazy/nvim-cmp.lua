return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-path", -- source for file system paths
		"L3MON4D3/LuaSnip", -- snippet engine
		"saadparwaiz1/cmp_luasnip", -- for autocompletion
		"hrsh7th/cmp-cmdline",
		"petertriho/cmp-git",
		"f3fora/cmp-spell",
		"micangl/cmp-vimtex",
	},
	event = { "InsertEnter", "CmdlineEnter" },
	config = function()
		local cmp = require("cmp")

		local luasnip = require("luasnip")

		local kind_icons = {
			article = "󰧮",
			book = "",
			incollection = "󱓷",
			Function = "󰊕",
			Constructor = "",
			Text = "󰦨",
			Method = "",
			Field = "󰅪",
			Variable = "󱃮",
			Class = "",
			Interface = "",
			Module = "",
			Property = "",
			Unit = "",
			Value = "󰚯",
			Enum = "",
			Keyword = "",
			Snippet = "",
			Color = "󰌁",
			-- Color = "",
			File = "",
			Reference = "",
			Folder = "",
			EnumMember = "",
			-- spell = "",
			-- EnumMember = "",
			Constant = "󰀫",
			Struct = "",
			-- Struct = "",
			Event = "",
			Operator = "󰘧",
			TypeParameter = "",
		}

		cmp.setup({
			formatting = {
				fields = { "kind", "abbr", "menu" },
				format = function(entry, vim_item)
					vim_item.kind = string.format("%s", kind_icons[vim_item.kind]) -- Kind icons
					vim_item.menu = ({
						-- vimtex = (vim_item.menu ~= nil and vim_item.menu or "[VimTex]"),
						-- vimtex = test_fn(vim_item.menu, entry.source.name),
						vimtex = vim_item.menu,
						luasnip = "[Snippet]",
						nvim_lsp = "[LSP]",
						buffer = "[Buffer]",
						spell = "[Spell]",
						-- orgmode = "[Org]",
						-- latex_symbols = "[Symbols]",
						cmdline = "[CMD]",
						path = "[Path]",
					})[entry.source.name]
					return vim_item
				end,
			},

			sources = {
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
				{ name = "vimtex" },
				{ name = "path" },
			},

			mapping = cmp.mapping.preset.insert({
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(),
				["<CR>"] = cmp.mapping.confirm({ select = true }),
				["<Tab>"] = cmp.mapping(function(fallback)
					if luasnip.expandable() then
						luasnip.expand()
					elseif luasnip.locally_jumpable(1) then
						luasnip.jump(1)
					elseif cmp.visible() then
						cmp.select_next_item()
					else
						fallback()
					end
				end, { "i", "s" }),
				["<S-Tab>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_prev_item()
					elseif luasnip.locally_jumpable(-1) then
						luasnip.jump(-1)
					else
						fallback()
					end
				end, { "i", "s" }),
			}),

			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},

			confirm_opts = {
				behavior = cmp.ConfirmBehavior.Replace,
				select = false,
			},

			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
				-- completion = {
				--   border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
				-- },
				-- documentation = {
				--   border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
				-- },
			},
			performance = {
				trigger_debounce_time = 500,
				throttle = 550,
				fetching_timeout = 80,
			},
		})
	end,
}
