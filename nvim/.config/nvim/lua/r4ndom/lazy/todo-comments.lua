return {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require("todo-comments").setup()

        vim.keymap.set('n', ']t', function() require("todo-comments").jump_next() end, { desc = "Next todo comment" })
        vim.keymap.set('n', '[t', function() require("todo-comments").jump_prev() end, { desc = "Previous todo comment" })

        vim.keymap.set('n', '<leader>ft', vim.cmd.TodoTelescope, { desc = "Search todos via telescope" })
    end
}
