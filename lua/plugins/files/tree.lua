return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local nvim_tree = require("nvim-tree")

        nvim_tree.setup({
            sync_root_with_cwd = true,
            reload_on_bufenter = true,
            respect_buf_cwd = true,
            renderer = {
                indent_markers = {
                    enable = true,
                }
            },
            update_focused_file = {
                enable = true,
                update_root = true
            },
            diagnostics = {
                enable = true,
                severity = {
                    min = vim.diagnostic.severity.WARN
                }
            },
            git = {
                timeout = 5000
            }
        })

        local map = vim.keymap.set

        map("n", "<leader>pv", "<cmd>NvimTreeFocus<cr>", { desc = "Focus Nvim Tree" })
        map("n", "<leader>pt", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle Nvim Tree" })
    end
}
