return {
    {
        "kosayoda/nvim-lightbulb",
        config = function()
            local lightbulb = require("nvim-lightbulb")

            lightbulb.setup({
                autocmd = { enabled = true }
            })
        end
    }
}
