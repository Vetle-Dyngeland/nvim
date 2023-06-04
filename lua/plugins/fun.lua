return {
    {
        "eandrju/cellular-automaton.nvim",
        config = function()
            local map = vim.keymap.set

            map("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<cr>")
            map("n", "<leader>fyl", "<cmd>CellularAutomaton game_of_life<cr>")
        end
    },
    {
        "seandewar/nvimesweeper",
        config = function()
            local map = vim.keymap.set

            map("n", "<leader>fms", "<cmd>Nvimesweeper<cr>", { desc = "Play nvimesweeper" })
        end
    },
    "ThePrimeagen/vim-be-good",
}
