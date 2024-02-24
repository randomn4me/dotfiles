return {
    "lervag/vimtex",
    config = function()
        vim.g.vimtex_view_method = 'zathura'
        vim.g.vimtex_compiler_latexmk = { out_dir = 'out', aux_dir = 'out' }
    end
}

