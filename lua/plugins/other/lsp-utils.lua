return {
    {
        "ray-x/lsp_signature.nvim",
        config = function()
            require("lsp_signature").setup({
                doc_lines = 6,
                max_height = 8,
                hint_enable = true,
                toggle_key = "<C-s>",
                floating_window = false,
                handler_opts = {
                    border = "single",
                },
                close_timeout = 1000,
                hint_prefix = "# ",
                padding = "",
                timer_interval = 20
            })
        end
    },
    {
        "simrat39/rust-tools.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "neovim/nvim-lspconfig"
        },
        config = function()
            require("rust-tools").setup({
                flags = { allow_incremental_sync = true, debounce_text_changes = 1000 },
                root_dir = require("lspconfig").util.root_pattern("Cargo.toml"),
                settings = {
                    ["rust-analyzer"] = {
                        cargo = {
                            autoReload = true
                        },
                        inlayHints = {
                            maxLength = 50,
                            closingBraceHints = {
                                enable = true,
                                minLines = 30
                            },
                        }
                    }
                }
            })
        end
    },
    {
        "Saecki/crates.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        event = "BufRead Cargo.toml",
        config = function()
            require("crates").setup()
        end
    },
}
