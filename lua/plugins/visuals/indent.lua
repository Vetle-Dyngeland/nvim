return {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
        local indent_blankline = require("indent_blankline")

        indent_blankline.setup({
            show_current_context = true
        })
    end
}
