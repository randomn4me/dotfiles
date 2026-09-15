return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
        { "<leader>ha", function() require("harpoon"):list():add() end, desc = "Add file to harpoon" },
        { "<leader>hm", function()
            local harpoon = require("harpoon")
            harpoon.ui:toggle_quick_menu(harpoon:list())
        end, desc = "Harpoon quick menu" },

        -- Home-row jumps on a US layout: j k l ;
        { "<C-j>", function() require("harpoon"):list():select(1) end, desc = "Harpoon file 1" },
        { "<C-k>", function() require("harpoon"):list():select(2) end, desc = "Harpoon file 2" },
        { "<C-l>", function() require("harpoon"):list():select(3) end, desc = "Harpoon file 3" },
        { "<C-;>", function() require("harpoon"):list():select(4) end, desc = "Harpoon file 4" },
    },
    config = function()
        require("harpoon"):setup()
    end
}
