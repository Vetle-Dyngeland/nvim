return {
    "rcarriga/nvim-notify",
    config = function()
        vim.notify = require("notify")

        vim.notify.setup({
            timeout = 1500,
            minimum_width = 30,
            max_width = 70,
            render = "compact",
            fps = 60,
            top_down = true,
            stages = "fade",
            level = 1,
        })

        local map = vim.keymap.set

        map("n", "<leader>pn", "<cmd>lua require(\"telescope\").extensions.notify.notify()<cr>",
            { desc = "See recent notifications" })
    end
}
