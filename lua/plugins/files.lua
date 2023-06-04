return {
    {
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
    },
    {
        "ahmedkhalf/project.nvim",
        config = function()
            local project = require("project_nvim")

            project.setup({
                patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", "Cargo.toml" },
                show_hidden = false,
                scope_chdir = "global",
                silent_chdir = true,
            })

            local telescope = require("telescope")

            telescope.load_extension("projects")

            vim.keymap.set("n", "<leader>pj", function()
                telescope.extensions.projects.projects()
            end, { desc = "Browse Projects" })
        end
    }

}
