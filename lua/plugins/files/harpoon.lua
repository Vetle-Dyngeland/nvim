return {
    "ThePrimeagen/harpoon",
    keys = function()
        local keys = {}

        local function opts(description)
            return { desc = description, noremap = true, silent = true }
        end
        local ui = require("harpoon.ui")

        table.insert(keys, { "<leader>hk", function() require("harpoon.mark").add_file() end, opts("Harpoon: add file") })
        table.insert(keys, { "<leader>hh", function() ui.toggle_quick_menu() end, opts("Harpoon: Toggle quick menu") })
        table.insert(keys, { "<leader>he", function() ui.nav_next() end, opts("Harpoon: Navigate to next file") })
        table.insert(keys, { "<leader>hr", function() ui.nav_prev() end, opts("Harpoon: Navigate to previous file") })
        table.insert(keys, { "<leader>ha", function() ui.nav_file(1) end, opts("Harpoon: Navigate to file 1") })
        table.insert(keys, { "<leader>hs", function() ui.nav_file(2) end, opts("Harpoon: Navigate to file 2") })
        table.insert(keys, { "<leader>hd", function() ui.nav_file(3) end, opts("Harpoon: Navigate to file 3") })
        table.insert(keys, { "<leader>hf", function() ui.nav_file(4) end, opts("Harpoon: Navigate to file 4") })
        table.insert(keys, { "<leader>hg", function() ui.nav_file(5) end, opts("Harpoon: Navigate to file 5") })
        table.insert(keys, { "<leader>hz", function() ui.nav_file(6) end, opts("Harpoon: Navigate to file 6") })
        table.insert(keys, { "<leader>hx", function() ui.nav_file(7) end, opts("Harpoon: Navigate to file 7") })
        table.insert(keys, { "<leader>hc", function() ui.nav_file(8) end, opts("Harpoon: Navigate to file 8") })
        table.insert(keys, { "<leader>hv", function() ui.nav_file(9) end, opts("Harpoon: Navigate to file 9") })
        table.insert(keys, { "<leader>hb", function() ui.nav_file(10) end, opts("Harpoon: Navigate to file 10") })

        return keys
    end,
    config = function()
        require("harpoon").setup()
    end
}
