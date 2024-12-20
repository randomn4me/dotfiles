return {
	"j-hui/fidget.nvim",
	config = function()
		local opts = {
			progress = {
				poll_rate = 0, -- How and when to poll for progress messages
				suppress_on_insert = true, -- Suppress new messages while in insert mode
				ignore_done_already = true, -- Ignore new tasks that are already complete
				ignore_empty_message = true, -- Ignore new tasks that don't contain a message
				-- Clear notification group when LSP server detaches
				clear_on_detach = function(client_id)
					local client = vim.lsp.get_client_by_id(client_id)
					return client and client.name or nil
				end,
				-- How to get a progress message's notification group key
				notification_group = function(msg)
					return msg.lsp_client.name
				end,
				ignore = {}, -- List of LSP servers to ignore

				lsp = {
					progress_ringbuf_size = 0,
					log_handler = false,
				},
			},

			-- Options related to notification subsystem
			notification = {
				poll_rate = 10,
				filter = vim.log.levels.INFO, -- Minimum notifications level

				-- Options related to how notifications are rendered as text
				view = {
					stack_upwards = true, -- Display notification items from bottom to top
					icon_separator = " ", -- Separator between group name and icon
					group_separator = "---", -- Separator between notification groups
					-- Highlight group used for group separator
					group_separator_hl = "Comment",
					-- How to render notification messages
					render_message = function(msg, cnt)
						return cnt == 1 and msg or string.format("(%dx) %s", cnt, msg)
					end,
				},

				-- Options related to the notification window and buffer
				window = {
					normal_hl = "Comment", -- Base highlight group in the notification window
					winblend = 0, -- Background color opacity in the notification window
				},
			},
		}
		require("fidget").setup(opts)
	end,
}
