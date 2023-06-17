return {
    {
        "aserowy/tmux.nvim",
        config = function()
            local tmux = require("tmux")

            tmux.setup({
                copy_sync = {
                    enable = true,
                },
                navigation = {
                    cycle_navigation = true,
                    enable_default_keybindings = true,
                },
                resize = {
                    enable_default_keybindings = false,
                }
            })
        end
    },
    {
        "ray-x/lsp_signature.nvim",
        config = function()
            local signature = require("lsp_signature")

            signature.setup({
                doc_lines = 6,
                max_height = 8,
                hint_enable = false,
                toggle_key = "<C-s>"
            })
        end
    },
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("todo-comments").setup()
        end
    },
    {
        "jackMort/ChatGPT.nvim",
        event = "VeryLazy",
        dependencies = {
            "MunifTanjim/nui.nvim",
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim"
        },
        config = function()
            local chat = require("chatgpt")

            chat.setup({
                api_key_cmd = vim.env.OPENAI_API_KEY,
            })
        end
    }
}
