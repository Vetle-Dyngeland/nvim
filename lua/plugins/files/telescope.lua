return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.1",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = function()
        local keys = {}

        local ts = require("telescope.builtin")

        table.insert(keys, { "<leader>pf", ts.find_files, { desc = "Find files" } })
        table.insert(keys, { "<leader>pg", function()
            ts.grep_string({ search = vim.fn.input("Grep > ") })
        end, { desc = "Find string" } })
        table.insert(keys, { "<leader>pr", ts.oldfiles, { desc = "Recent Files" } })
        table.insert(keys, { "<leader>ps", ts.resume, { desc = "Resume previous search" } })
        table.insert(keys, { "<leader>pc", function() ts.current_buffer_fuzzy_find() end,
            { desc = "Find string in current buffer" } })

        return keys
    end,
    config = function()
    end
}
