return {
    {
        "anuvyklack/pretty-fold.nvim",
        config = function()
            local pretty_fold = require("pretty-fold")

            pretty_fold.setup({
                keep_indentation = false,
                fill_char = "━",
                sections = {
                    left = {
                        "━ ", function() return string.rep("*", vim.v.foldlevel) end, " ━┫", "content", " : ",
                        "number_of_folded_lines", " ┣",
                    },
                    right = {
                        ""
                    }
                }
            })
        end
    },
    {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup()
        end
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            local indent_blankline = require("indent_blankline")

            indent_blankline.setup({
                show_current_context = true
            })
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
            "KadoBOT/nvim-spotify",
        },
        config = function()
            local lualine = require("lualine")
            local status = require("nvim-spotify").status

            status:start()

            lualine.setup({
                options = {
                    icons_enabled = true,
                    theme = "auto",
                    -- component_seperators = { left = '/', right = '\' },
                    -- section_seperators = { left = '/', right = '\' },
                    always_divide_middle = true,
                    globalstatus = false,
                },
                sections = {
                    lualine_a = { "mode" },
                    lualine_b = { "branch", "diff", "diagnostics" },
                    lualine_c = { "filename", "filetype" },
                    lualine_x = { status.listen },
                    lualine_y = { "progress" },
                    lualine_z = { "location" },
                }
            })
        end
    },
    {
        "rcarriga/nvim-notify",
        config = function()
            vim.notify = require("notify")
        end
    }
}
