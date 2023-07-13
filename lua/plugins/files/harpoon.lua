return {
    "ThePrimeagen/harpoon",
    config = function()
        require("harpoon").setup()

        local function opts(description)
            return { desc = description, noremap = true, silent = true }
        end
        local map = vim.keymap.set

        local ui = require("harpoon.ui")

        map("n", "<leader>hk", function() require("harpoon.mark").add_file() end, opts("Harpoon: add file"))
        map("n", "<leader>hh", function() ui.toggle_quick_menu() end, opts("Harpoon: Toggle quick menu"))
        map("n", "<leader>he", function() ui.nav_next() end, opts("Harpoon: Navigate to next file"))
        map("n", "<leader>hr", function() ui.nav_prev() end, opts("Harpoon: Navigate to previous file"))
        map("n", "<leader>ha", function() ui.nav_file(1) end, opts("Harpoon: Navigate to file 1"))
        map("n", "<leader>hs", function() ui.nav_file(2) end, opts("Harpoon: Navigate to file 2"))
        map("n", "<leader>hd", function() ui.nav_file(3) end, opts("Harpoon: Navigate to file 3"))
        map("n", "<leader>hf", function() ui.nav_file(4) end, opts("Harpoon: Navigate to file 4"))
        map("n", "<leader>hg", function() ui.nav_file(5) end, opts("Harpoon: Navigate to file 5"))
        map("n", "<leader>hz", function() ui.nav_file(6) end, opts("Harpoon: Navigate to file 6"))
        map("n", "<leader>hx", function() ui.nav_file(7) end, opts("Harpoon: Navigate to file 7"))
        map("n", "<leader>hc", function() ui.nav_file(8) end, opts("Harpoon: Navigate to file 8"))
        map("n", "<leader>hv", function() ui.nav_file(9) end, opts("Harpoon: Navigate to file 9"))
        map("n", "<leader>hb", function() ui.nav_file(10) end, opts("Harpoon: Navigate to file 10"))
    end
}
