config = {
  colorscheme = "rose-pine",

  plugins = {
    init = {
      {
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
          require("rose-pine").setup()
          vim.cmd('colorscheme rose-pine')
        end
      },
    },
  },
}

return config
