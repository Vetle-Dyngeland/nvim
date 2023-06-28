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
            prefer_startup_root = true,
            sort_by = "modification_time",
            renderer = {
                add_trailing = true,
                highlight_git = true,
                root_folder_label = ":~:s?$?/ ?",
                indent_markers = { enable = true },
                icons = { git_placement = "after" },
            },
            update_focused_file = {
                enable = true,
                update_root = true,
            },
            diagnostics = {
                enable = true,
                severity = {
                    min = vim.diagnostic.severity.WARN
                },
            },
            git = {
                timeout = 5000,
                ignore = false,
            }
        })

        local map = vim.keymap.set

        map("n", "<leader>pv", "<cmd>NvimTreeFocus<cr>", { desc = "Focus Nvim Tree" })
        map("n", "<leader>pt", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle Nvim Tree" })
    end
}
