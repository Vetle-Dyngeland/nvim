return {
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
}
