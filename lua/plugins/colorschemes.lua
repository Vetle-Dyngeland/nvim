return {
    {
        "Mofiqul/vscode.nvim",
        config = function()
            local vscode = require("vscode")

            vscode.setup({
                italic_comments = false,
                transparent = false,
                disable_nvimtree_bg = false,
            })

            vscode.load()
        end
    },
    {
        "folke/tokyonight.nvim",
        config = function()
            local tokyonight = require("tokyonight")

            tokyonight.setup({
                style = "moon",
                dim_inactive = true,
            })
        end
    },
    {
        "navarasu/onedark.nvim",
        config = function()
            local onedark = require("onedark")

            onedark.setup({
                toggle_style_key = "<leader>odt",
                code_style = {
                    comments = "none",
                },
                diagnostics = {
                    darker = false,
                    undercurl = false,
                }
            })
        end
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        config = function()
            vim.cmd [[colorscheme catppuccin-macchiato]]
        end
    }
}
