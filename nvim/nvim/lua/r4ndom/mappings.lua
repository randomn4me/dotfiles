vim.g.mapleader = " "
vim.g.maplocalleader = ","

vim.keymap.set("n", "<leader>e", vim.cmd.Ex, { desc = "Open file explorer" })
vim.keymap.set("n", "<leader>w", "<cmd>:w<cr>", { desc = "Save file" })
vim.keymap.set("n", "<leader>q", "<cmd>:q<cr>", { desc = "Quit" })

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank line to clipboard" })

vim.keymap.set("n", "<leader>ln", function()
	vim.fn.setreg("+", vim.fn.line("."))
end, { desc = "Copy line number" })

vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end, { desc = "Source current file" })
