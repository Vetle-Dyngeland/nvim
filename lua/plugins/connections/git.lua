return {
    "kdheepak/lazygit.nvim",
    config = function()
        require("telescope").load_extension("lazygit")

        local map = vim.keymap.set

        map("n", "<leader>g", "<cmd>LazyGit<cr>", { desc = "Open lazygit" })
    end
}
