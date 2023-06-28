return {
    "nvim-telescope/telescope-file-browser.nvim",
    config = function()
        require("telescope").load_extension("file_browser")

        local map = vim.keymap.set

        map("n", "<leader>pb", "<cmd>Telescope file_browser<cr>", { desc = "Browse files" })
        map("n", "<leader>pv", "<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>", { desc = "Browse files starting from current buffer" })
    end
}
