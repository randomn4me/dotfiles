return {
    "lervag/vimtex",
    lazy = false;
    config = function()
        vim.api.nvim_create_autocmd({ "FileType" }, {
            group = vim.api.nvim_create_augroup("lazyvim_vimtex_conceal", { clear = true }),
            pattern = { "bib", "tex" },
            callback = function()
                vim.wo.conceallevel = 0
            end,
        })
        vim.g.vimtex_mappings_disable = { ["n"] = { "K" } } -- disable `K` as it conflicts with LSP hover

        vim.g.vimtex_view_method = 'general'
        vim.g.latex_view_general_viewer = 'zathura'

        vim.g.vimtex_compiler_latexmk = { out_dir = 'out', aux_dir = 'out' }
    end
}

