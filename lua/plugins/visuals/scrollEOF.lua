return {
    "Aasim-A/scrollEOF.nvim",
    config = function()
        local scroll = require("scrollEOF")

        scroll.setup({
            insert_mode = true,
        })
    end
}
