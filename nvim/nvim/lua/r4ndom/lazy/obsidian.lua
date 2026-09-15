local workspaces = {
	{
		name = "personal",
		path = "~/Documents/obsidian",
	},
	{
		name = "serify",
		path = "~/src/serify-hq/vault",
	},
}

local function vault_root(path)
	local p = vim.fn.fnamemodify(vim.fn.expand(path), ":p")
	if p:sub(-1) ~= "/" then
		p = p .. "/"
	end
	return p
end

local function in_vault(bufpath)
	for _, ws in ipairs(workspaces) do
		local root = vault_root(ws.path)
		if bufpath:sub(1, #root) == root then
			return true
		end
	end
	return false
end

local function set_obsidian_keymaps(bufnr)
	local map = function(lhs, rhs, desc)
		vim.keymap.set("n", lhs, rhs, { buffer = bufnr, desc = desc })
	end
	map("<leader>oa", "<cmd>Obsidian open<cr>", "Open in Obsidian App")
	map("<leader>on", "<cmd>Obsidian new<cr>", "Obsidian New")
	map("<leader>of", "<cmd>Obsidian quick_switch<cr>", "Obsidian Quick Switch")
	map("<leader>ot", "<cmd>Obsidian template<cr>", "Obsidian Templates")
	map("<leader>ob", "<cmd>Obsidian backlinks<cr>", "Obsidian Backlinks")
	map("<leader>od", function()
		local today = os.date("%Y-%m-%d")
		local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
		local row, found_date
		for i, line in ipairs(lines) do
			if line:match("^%d%d%d%d%-%d%d%-%d%d$") then
				row = i - 1
				found_date = line
				break
			end
		end
		if row and found_date == today then
			-- Today's date exists: jump to end of its content section
			local end_row = #lines + 1
			for i = row + 2, #lines do
				if lines[i] == "" then
					end_row = i
					break
				end
			end
			local insert_at = end_row - 1
			vim.api.nvim_buf_set_lines(0, insert_at, insert_at, false, { "" })
			vim.api.nvim_win_set_cursor(0, { insert_at + 1, 0 })
			vim.cmd("startinsert")
		else
			-- Different date or no date: insert today's date at the found date's position (or cursor if none)
			local insert_at = row ~= nil and row or vim.api.nvim_win_get_cursor(0)[1] - 1
			vim.api.nvim_buf_set_lines(0, insert_at, insert_at, false, { today, "", "" })
			vim.api.nvim_win_set_cursor(0, { insert_at + 2, 0 })
			vim.cmd("startinsert")
		end
	end, "Insert today's date")
end

return {
	"obsidian-nvim/obsidian.nvim",
	lazy = true,
	ft = "markdown",
	dependencies = {
		"nvim-telescope/telescope.nvim",
	},
	init = function()
		-- Check asynchronously; a blocking pgrep added ~18ms to every start.
		if vim.fn.executable("ob") == 1 then
			vim.system({ "pgrep", "-f", "ob sync" }, {}, function(res)
				if res.code ~= 0 then
					vim.schedule(function()
						vim.fn.jobstart({ "ob", "sync", "--continuous" }, { detach = true })
					end)
				end
			end)
		end

		-- Obsidian shortcuts only apply inside a vault (paths from workspaces above).
		vim.api.nvim_create_autocmd("FileType", {
			pattern = "markdown",
			callback = function(args)
				if in_vault(vim.api.nvim_buf_get_name(args.buf)) then
					set_obsidian_keymaps(args.buf)
				end
			end,
		})

		local vault = vim.fn.expand("~/Documents/obsidian")
		vim.api.nvim_create_autocmd("BufNewFile", {
			pattern = vault .. "/*.md",
			callback = function()
				-- exclude journal and templates dirs
				local path = vim.api.nvim_buf_get_name(0)
				if path:match("/journal/") or path:match("/templates/") then
					return
				end
				vim.schedule(function()
					vim.cmd("Obsidian template note.md")
					vim.schedule(function()
						local first = vim.api.nvim_buf_get_lines(0, 0, 1, false)[1]
						if first and first:match("^#") then
							vim.api.nvim_buf_set_lines(0, 0, 1, false, {})
						end
					end)
				end)
			end,
		})
	end,
	opts = {
		workspaces = workspaces,

		legacy_commands = false,

		frontmatter = { enabled = false },

		completion = {
			min_chars = 2,
		},

		templates = {
			folder = "templates",
			date_format = "%Y-%m-%d",
			time_format = "%H:%M",
			-- A map for custom variables, the key should be the variable and the value a function
			substitutions = {},
		},

		note_id_func = function(title)
			return title or tostring(os.time())
		end,

		picker = {
			name = "telescope.nvim",
			note_mappings = {
				new = "<C-n>",
				insert_link = "<C-l>",
			},
		},
	},
}
