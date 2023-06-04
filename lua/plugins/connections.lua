return {
    {
        "andweeb/presence.nvim",
        config = function()
            local presence = require("presence")

            presence.setup({
                auto_update = true,
                neovim_image_text = "Neovim",
                enable_line_number = true,
                show_time = false
            })
        end
    },
    "wakatime/vim-wakatime"
}
