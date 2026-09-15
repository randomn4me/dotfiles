return {
    "tpope/vim-fugitive",
    cmd = { "G", "Git", "Gdiffsplit", "Gvdiffsplit", "Gread", "Gwrite" },
    keys = {
        { "<leader>g", vim.cmd.Git, desc = "Git status (fugitive)" },
    },
}
