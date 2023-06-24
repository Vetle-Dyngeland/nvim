return {
    "simrat39/rust-tools.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "neovim/nvim-lspconfig"
    },
    config = function()
        local rt = require("rust-tools")

        local opts = {
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
        }

        rt.setup(opts)
    end
}
