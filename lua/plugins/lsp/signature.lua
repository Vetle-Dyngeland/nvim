return {
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
}
