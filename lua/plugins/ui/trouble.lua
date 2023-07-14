return {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        position = "bottom",
        width = 70,
        icons = true,
        severity = vim.diagnostic.severity.INFO,
    },
    config = function()
        local function opts(description)
            return { desc = description, noremap = true }
        end
        local map = vim.keymap.set

        map("n", "<leader>dt", "<cmd>TroubleToggle<cr>", opts("Toggle Trouble"))
        map("n", "<leader>dw", "<cmd>TroubleToggle workspace_diagnostics<cr>", opts("Toggle Trouble workspace diagnostics"))
        map("n", "<leader>dd", "<cmd>TroubleToggle document_diagnostics<cr>", opts("Toggle Trouble document diagnostics"))
        map("n", "<leader>dl", "<cmd>TroubleToggle loclist<cr>", opts("Toggle Trouble loclist"))
    end
}
