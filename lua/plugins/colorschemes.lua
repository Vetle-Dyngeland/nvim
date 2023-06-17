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
    },
    {
        "svermeulen/text-to-colorscheme.nvim",
        config = function()
            local color = require("text-to-colorscheme")

            color.setup({
                ai = {
                    openai_api_key = vim.env.OPENAI_API_KEY,
                    gpt_model = "gpt-3.5-turbo",
                }
            })

            local function opts(description)
                return { noremap = true, silent = true, desc = description }
            end

            local map = vim.keymap.set

            map("n", "<F8>", "<cmd>T2CShuffleAccents<cr>", opts("T2C: shuffle accents"))

            map("n", "<F9>", "<cmd>T2CAddContrast -0.1<cr>", opts("T2C: decrease contrast"))
            map("n", "<F10>", "<cmd>T2CAddContrast 0.1<cr>", opts("T2C: increase contrast"))

            map("n", "<F11>", "<cmd>T2CAddSaturation -0.1<cr>", opts("T2C: decrease saturation"))
            map("n", "<F12>", "<cmd>T2CAddSaturation 0.1<cr>", opts("T2C: increase saturation"))
        end
    }
}
