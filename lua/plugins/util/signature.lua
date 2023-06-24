return {
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
}
