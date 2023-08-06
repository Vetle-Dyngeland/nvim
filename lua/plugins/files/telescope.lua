return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.1",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = function()
        local keys = {}

        local ts = "<cmd>lua require(\"telescope.builtin\")."

        table.insert(keys, { "<leader>pf", ts.."find_files<cr>", { desc = "Find files" } })
        table.insert(keys, { "<leader>pg", function()
        	local s = vim.fn.input("Grep > ")
        	vim.cmd("lua require(\"telescope.builtin\").grep_string({ search = s })<cr>")
        end, { desc = "Find string" } })
        table.insert(keys, { "<leader>pr", ts.."oldfiles<cr>", { desc = "Recent Files" } })
        table.insert(keys, { "<leader>ps", ts.."resume<cr>", { desc = "Resume previous search" } })
        table.insert(keys, { "<leader>pc", ts.."current_buffer_fuzzy_find()<cr>",
            { desc = "Find string in current buffer" } })

        return keys
    end,
    config = function()
    end
}
