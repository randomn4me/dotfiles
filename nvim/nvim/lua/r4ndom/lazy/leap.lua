return {
    url = "https://codeberg.org/andyg/leap.nvim",
    dependencies = { "tpope/vim-repeat" },
    config = function()
        local leap = require('leap')
        -- Sneak-style mappings
        vim.keymap.set({'n', 'x', 'o'}, 's',  '<Plug>(leap-forward)', { desc = "Leap forward" })
        vim.keymap.set({'n', 'x', 'o'}, 'S',  '<Plug>(leap-backward)', { desc = "Leap backward" })
        vim.keymap.set({'n', 'x', 'o'}, 'gs', '<Plug>(leap-from-window)', { desc = "Leap from window" })
    end,
}
