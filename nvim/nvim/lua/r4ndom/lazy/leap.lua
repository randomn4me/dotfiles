return {
    url = "https://codeberg.org/andyg/leap.nvim",
    dependencies = { "tpope/vim-repeat" },
    config = function()
        -- s jumps in both directions, S into other windows
        vim.keymap.set({'n', 'x', 'o'}, 's', '<Plug>(leap)', { desc = "Leap" })
        vim.keymap.set('n', 'S', '<Plug>(leap-from-window)', { desc = "Leap from window" })
    end,
}
