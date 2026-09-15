return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
        { "<leader>a", function() require("harpoon"):list():add() end, desc = "Harpoon add file" },
        { "<C-e>", function()
            local harpoon = require("harpoon")
            harpoon.ui:toggle_quick_menu(harpoon:list())
        end, desc = "Harpoon menu" },

        { "<C-j>", function() require("harpoon"):list():select(1) end, desc = "Harpoon file 1" },
        { "<C-k>", function() require("harpoon"):list():select(2) end, desc = "Harpoon file 2" },
        { "<C-l>", function() require("harpoon"):list():select(3) end, desc = "Harpoon file 3" },
        { "<C-ö>", function() require("harpoon"):list():select(4) end, desc = "Harpoon file 4" },
    },
    config = function()
        require("harpoon"):setup()
    end
}
